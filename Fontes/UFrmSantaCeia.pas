unit UFrmSantaCeia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ImgList, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, MemDS, DBAccess, MyAccess, frxClass, frxDBSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSeven, dxSkinSevenClassic, dxSkinStardust, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFormSantaCeia = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BtnAdicionar: TBitBtn;
    BtnRetirar: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel7: TPanel;
    Panel8: TPanel;
    TreeViewMembros: TTreeView;
    ToolBar1: TToolBar;
    BtnIniciar: TBitBtn;
    BtnFinalizar: TBitBtn;
    BtnExcluir: TBitBtn;
    ToolButton1: TToolButton;
    BtnSair: TBitBtn;
    LBLINICIO: TLabel;
    lbltotal: TLabel;
    ImgListMenu: TImageList;
    CdsParticipantes: TClientDataSet;
    DSParticipantes: TDataSource;
    DBGrid1: TDBGrid;
    GrpBxCorrigirCadastro: TGroupBox;
    MyQryConsultaMembroFamilia: TMyQuery;
    DSConsultaMembroFamilia: TDataSource;
    MyQryConsultaMembroFamiliaCodFamilia: TLargeintField;
    MyQryConsultaMembroFamiliaSobrenome: TStringField;
    MyQryConsultaMembroFamiliaNomeMembro: TStringField;
    MyQryConsultaMembroFamiliaCodNome: TStringField;
    MyQryConsultaMembroFamiliaEnderecoDesatualizado: TBooleanField;
    MyQryConsultaMembroFamiliaTelefoneDesatualizado: TBooleanField;
    MyQryConsultaMembroFamiliaCelularDesatualizado: TBooleanField;
    MyQryConsultaMembroFamiliaEmailDesatualizado: TBooleanField;
    PnlTelefone: TPanel;
    PnlCelular: TPanel;
    PnlEmail: TPanel;
    PnlEndereco: TPanel;
    BitBtn1: TBitBtn;
    MyQryConsultaMembroFamiliaSexo: TStringField;
    PnlFoto: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CdsParticipantesParticipante: TStringField;
    CdsParticipantesFamilia: TStringField;
    CdsParticipantesCodigo: TIntegerField;
    CdsParticipantesCodFamilia: TIntegerField;
    RelatorioParticipantes: TfrxReport;
    frxDBDtsParticipantes: TfrxDBDataset;
    ProgressBarMembro: TProgressBar;
    LblCarregandoMembros: TLabel;
    MyQrySantaCeia: TMyQuery;
    MyQryMembrosSantaCeia: TMyQuery;
    DSSantaCeia: TDataSource;
    DSMembrosSantaCeia: TDataSource;
    MyQryMembrosSantaCeiaCodMembroSantaCeia: TLargeintField;
    MyQryMembrosSantaCeiaCodSantaCeia: TLargeintField;
    MyQryMembrosSantaCeiaCodMembro: TLargeintField;
    MyQryMembrosSantaCeiaCodFamilia: TLargeintField;
    MyQryMembrosSantaCeiaInformacoesAdicionais: TMemoField;
    MyQryMembrosSantaCeiaDataRegistro: TDateTimeField;
    MyQrySantaCeiaCodSantaCeia: TLargeintField;
    MyQrySantaCeiaData: TDateTimeField;
    MyQrySantaCeiaHoraInicio: TDateTimeField;
    MyQrySantaCeiaHoraFim: TDateTimeField;
    MyQrySantaCeiaTotalParticipantes: TLargeintField;
    MyQrySantaCeiaTotalFaltante: TLargeintField;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRetirarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeViewMembrosKeyPress(Sender: TObject; var Key: Char);
    procedure TreeViewMembrosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
  private
    procedure VerificaAtualizacao(QueryTemp: TMyQuery);
    procedure VerificaCamposVazios(QueryTemp: TMyQuery);
    { Private declarations }
  public
    Total:integer;
    CodMembro, NomeMembro, NomeFamilia, CodFamilia:String;
    DataInicio:TDatetime;
    { Public declarations }
  end;

var
  FormSantaCeia: TFormSantaCeia;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrmCadastroMembro;

procedure TFormSantaCeia.BitBtn1Click(Sender: TObject);
begin

  with FormCadastroMembro do
  Begin
    QryMembros.Open;
    QryMembros.Locate('CodMembro',codmembro,[loCaseInsensitive]);
    QryMembros.Edit;

    QryLkpEscolaridade.Close;
    QryLkpEscolaridade.Open;

    QryLkpEstadoCivil.Close;
    QryLkpEstadoCivil.Open;

    QryLkpProfissao.Close;
    QryLkpProfissao.Open;

    QryLkpFamilia.Close;
    QryLkpFamilia.Open;

    QryLkpEscolaridade.Close;
    QryLkpEscolaridade.Open;

    QryLkpMotivoSaida.Close;
    QryLkpMotivoSaida.Open;

    QryLkpEstadoCivil.Close;
    QryLkpEstadoCivil.Open;

    QryLkpProfissao.Close;
    QryLkpProfissao.Open;

    QryLkpFormaAdmissao.Close;
    QryLkpFormaAdmissao.Open;

    QryLkpMotivoSaida.Close;
    QryLkpMotivoSaida.Open;

    FormCadastroMembro.ShowModal;
  End;

end;

procedure TFormSantaCeia.BtnAdicionarClick(Sender: TObject);
Var
  Linha,Jatem:integer;

begin

  if Pos('-',TreeViewMembros.Selected.Text) > 0 then
  Begin
    Jatem := 0;
    CdsParticipantes.First;
    while not CdsParticipantes.Eof do
    Begin
      if CdsParticipantesParticipante.Text = NomeMembro then
        inc(Jatem);
      CdsParticipantes.Next;
    End;

    if Jatem > 0 then
    Begin
      ShowMessage('Membro já incluido');
      TreeViewMembros.SetFocus;
    End
    Else
    Begin
      INC(Total);
      lbltotal.Caption := 'TOTAL DE PARTICIPANTES: ' + INTTOSTR(TOTAL);
      CdsParticipantes.Insert;
      CdsParticipantesParticipante.AsString := NomeMembro;
      CdsParticipantesCodigo.Value := StrToInt(CodMembro);
      CdsParticipantesFamilia.AsString := NomeFamilia;
      CdsParticipantesCodFamilia.Value := StrToInt(CodFamilia);
      CdsParticipantes.Post;
      CdsParticipantes.IndexFieldNames:= 'CodFamilia;Participante';
    End;
  End;

end;

procedure TFormSantaCeia.BtnExcluirClick(Sender: TObject);
begin

  if CdsParticipantes.RecordCount >0 then
    RelatorioParticipantes.ShowReport;

end;

procedure TFormSantaCeia.BtnFinalizarClick(Sender: TObject);
Var
  CodSantaCeia:integer;
begin

  if CdsParticipantes.RecordCount > 0 then
  Begin
    MyQrySantaCeia.Open;
    MyQrySantaCeia.Append;
    MyQrySantaCeiaData.Value := Now;
    MyQrySantaCeiaHoraInicio.Value := DataInicio;
    MyQrySantaCeiaHoraFim.Value := Now;
    MyQrySantaCeiaTotalParticipantes.Value := Total;
    MyQrySantaCeiaTotalFaltante.Value := Total - MyQryConsultaMembroFamilia.RecordCount;
    MyQrySantaCeia.Post;

    MyQrySantaCeia.Last;
    CodSantaCeia := MyQrySantaCeiaCodSantaCeia.Value;
    MyQrySantaCeia.Close;

    MyQryMembrosSantaCeia.Open;
    CdsParticipantes.First;
    while not CdsParticipantes.EoF do
    Begin
      MyQryMembrosSantaCeia.Append;
      MyQryMembrosSantaCeiaCodSantaCeia.Value := CodSantaCeia;
      MyQryMembrosSantaCeiaCodMembro.Value := CdsParticipantesCodigo.Value;
      MyQryMembrosSantaCeiaCodFamilia.Value := CdsParticipantesCodFamilia.Value;
      MyQryMembrosSantaCeiaDataRegistro.Value := Now;
      MyQryMembrosSantaCeia.Post;

      CdsParticipantes.Next;
    End;
    MyQryMembrosSantaCeia.Close;
    TreeViewMembros.Items.Clear;
    Total := 0;
    lbltotal.Caption := 'TOTAL DE PARTICIPANTES: ';
    LBLINICIO.Caption := 'INICIO DO EVENTO: ';
    CdsParticipantes.EmptyDataSet;
    ShowMessage('Evento Cadastrado com Sucesso!');
  End;

end;

procedure TFormSantaCeia.BtnIniciarClick(Sender: TObject);
Var
  ItemUltimaFamilia, ItemUltimoMembro: TTreeNode;
  Familia, Membro:String;
begin

  LblCarregandoMembros.Visible := True;
//  Sleep(3000);
  Familia := '';
  TreeViewMembros.Items.Clear;
  MyQryConsultaMembroFamilia.Close;
  MyQryConsultaMembroFamilia.Open;
  MyQryConsultaMembroFamilia.First;
  ProgressBarMembro.Min := 0;
  ProgressBarMembro.Max := MyQryConsultaMembroFamilia.RecordCount;
  ProgressBarMembro.Position:= 0;
  LBLINICIO.Caption := 'INICIO DO EVENTO: ';
  lbltotal.Caption := 'TOTAL DE PARTICIPANTES: ';
  CdsParticipantes.EmptyDataSet;

  while not MyQryConsultaMembroFamilia.Eof do
  Begin
    if Familia <> MyQryConsultaMembroFamiliaSobrenome.Text then
    Begin
      ItemUltimaFamilia := TreeViewMembros.Items.AddChild(nil,MyQryConsultaMembroFamiliaSobrenome.Text);
      TreeViewMembros.Items.Item[TreeViewMembros.items.Count-1].ImageIndex := 638;
    End;

    if Membro <> MyQryConsultaMembroFamiliaNomeMembro.Text then
    Begin
      ItemUltimoMembro := TreeViewMembros.Items.AddChild(ItemUltimaFamilia,MyQryConsultaMembroFamiliaCodNome.Text);
      if MyQryConsultaMembroFamiliaSexo.Text = 'M' then
        TreeViewMembros.Items.Item[TreeViewMembros.items.Count-1].ImageIndex := 1139;
      if MyQryConsultaMembroFamiliaSexo.Text = 'F' then
        TreeViewMembros.Items.Item[TreeViewMembros.items.Count-1].ImageIndex := 1144;
    End;
    Familia := MyQryConsultaMembroFamiliaSobrenome.Text;
    Membro := MyQryConsultaMembroFamiliaCodNome.Text;
    ProgressBarMembro.Position := ProgressBarMembro.Position +1;
    MyQryConsultaMembroFamilia.Next;
  End;

  Total := 0;
  LBLINICIO.Caption := 'INICIO DO EVENTO: ' + fORMATDATEtime('dd/mm/yyyy - hh:mm:ss',now);
  DataInicio := Now;
  LblCarregandoMembros.Visible := False;

end;

procedure TFormSantaCeia.BtnRetirarClick(Sender: TObject);
begin

  INC(total,-1);
  lbltotal.Caption := 'TOTAL DE PARTICIPANTES: ' + INTTOSTR(TOTAL);
  CdsParticipantes.Delete;
  CdsParticipantes.IndexFieldNames:= 'CodFamilia;Participante';

end;

procedure TFormSantaCeia.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormSantaCeia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FreeAndNil(FormSantaCeia);

end;

procedure TFormSantaCeia.FormShow(Sender: TObject);
begin

  TreeViewMembros.Items.Clear;

end;

procedure TFormSantaCeia.TreeViewMembrosClick(Sender: TObject);
Var
  QueryTemp:TMyQuery;
begin

  if Pos('-',TreeViewMembros.Selected.Text) > 0 then
  Begin
    GrpBxCorrigirCadastro.Visible := True;
    QueryTemp := TMyQuery.Create(Self);
    QueryTemp.Connection := DMPrincipal.Conn;

    CodMembro := Copy(TreeViewMembros.Selected.Text,Pos('-',TreeViewMembros.Selected.Text)+1, Length(TreeViewMembros.Selected.Text));
    NomeMembro := Copy(TreeViewMembros.Selected.Text,0,Pos('-',TreeViewMembros.Selected.Text)-1);

    QueryTemp.Close;
    QueryTemp.SQL.Clear;
    QueryTemp.SQL.Text := '       SELECT M.CodMembro, ' +
                          '              M.CodFamilia, ' +
                          '              M.NomeMembro, ' +
                          '              M.email, ' +
                          '              M.Celular, ' +
                          '              M.datanasc, ' +
                          '              M.fotocaminho, ' +
                          '              M.rg, ' +
                          '              M.cpf, ' +
                          '              M.endereco, ' +
                          '              M.compl, ' +
                          '              M.cidade, ' +
                          '              M.bairro, ' +
                          '              M.cep, ' +
                          '              M.uf, ' +
                          '              M.telefone, ' +
                          '              M.EnderecoDesatualizado, ' +
                          '              M.TelefoneDesatualizado, ' +
                          '              M.CelularDesatualizado, ' +
                          '              M.EmailDesatualizado, ' +
                          '              F.Sobrenome ' +
                          '         FROM Membros M Left Join Familia F on M.CodFamilia=F.CodFamilia ' +
                          '        where M.CodMembro = ' + CodMembro;
    QueryTemp.Open;

    NomeFamilia := QueryTemp.FieldByName('Sobrenome').AsString;
    CodFamilia := QueryTemp.FieldByName('CodFamilia').AsString;

    VerificaAtualizacao(QueryTemp);
    VerificaCamposVazios(QueryTemp);

  End
  Else
  Begin
    GrpBxCorrigirCadastro.Visible := False;
  End;

end;

procedure TFormSantaCeia.VerificaAtualizacao(QueryTemp: TMyQuery);
begin
  if QueryTemp.FieldByName('EnderecoDesatualizado').Value <> Null then
  begin
    if QueryTemp.FieldByName('EnderecoDesatualizado').Value then
    begin
      PnlEndereco.Color := clYellow;
      PnlEndereco.Visible := True;
    end
    else
    begin
      PnlEndereco.Color := clBtnFace;
      PnlEndereco.Visible := False;
    end;
  end;
  if QueryTemp.FieldByName('TelefoneDesatualizado').Value <> null then
  begin
    if QueryTemp.FieldByName('TelefoneDesatualizado').Value then
    begin
      PnlTelefone.Color := clYellow;
      PnlTelefone.Visible := True;
    end
    else
    begin
      PnlTelefone.Color := clBtnFace;
      PnlTelefone.Visible := False;
    end;
  end;
  if QueryTemp.FieldByName('CelularDesatualizado').Value <> null then
  begin
    if QueryTemp.FieldByName('CelularDesatualizado').Value then
    begin
      PnlCelular.Color := clYellow;
      PnlCelular.Visible := True;
    end
    else
    begin
      PnlCelular.Color := clBtnFace;
      PnlCelular.Visible := False;
    end;
  end;
  if QueryTemp.FieldByName('EmailDesatualizado').Value <> null then
  begin
    if QueryTemp.FieldByName('EmailDesatualizado').Value then
    begin
      PnlEmail.Color := clYellow;
      PnlEmail.Visible := True;
    end
    else
    begin
      PnlEmail.Color := clBtnFace;
      PnlEmail.Visible := False;
    end;
  end;
end;

procedure TFormSantaCeia.VerificaCamposVazios(QueryTemp: TMyQuery);
begin

  if QueryTemp.FieldByName('Endereco').Text = '' then
  begin
    PnlEndereco.Color := clRed;
    PnlEndereco.Visible := True;
  end
  else
  begin
    PnlEndereco.Color := clBtnFace;
    PnlEndereco.Visible := False;
  end;

  if QueryTemp.FieldByName('Telefone').Text = '' then
  begin
    PnlTelefone.Color := clRed;
    PnlTelefone.Visible := True;
  end
  else
  begin
    PnlTelefone.Color := clBtnFace;
    PnlTelefone.Visible := False;
  end;

  if QueryTemp.FieldByName('Celular').Text = '' then
  begin
    PnlCelular.Color := clRed;
    PnlCelular.Visible := True;
  end
  else
  begin
    PnlCelular.Color := clBtnFace;
    PnlCelular.Visible := False;
  end;

  if QueryTemp.FieldByName('Email').Text = '' then
  begin
    PnlEmail.Color := clRed;
    PnlEmail.Visible := True;
  end
  else
  begin
    PnlEmail.Color := clBtnFace;
    PnlEmail.Visible := False;
  end;

  if QueryTemp.FieldByName('fotocaminho').Text = '' then
  begin
    PnlFoto.Color := clRed;
    PnlFoto.Visible := True;
  end
  else
  begin
    PnlFoto.Color := clBtnFace;
    PnlFoto.Visible := False;
  end;

end;

procedure TFormSantaCeia.TreeViewMembrosKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 then
    BtnAdicionarClick(self);

end;

end.
