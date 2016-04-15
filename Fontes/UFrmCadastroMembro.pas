unit UFrmCadastroMembro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, RxToolEdit, RxDBCtrl, Vcl.ExtDlgs, DB, Vcl.Menus, MemDS, DBAccess, MyAccess, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSeven, dxSkinSevenClassic, dxSkinStardust,
  dxSkinVS2010, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxCheckBox, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin;

type
  TFormCadastroMembro = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TbsPessoal: TTabSheet;
    TbsProfissional: TTabSheet;
    TbsComunidade: TTabSheet;
    TbsDatasEspeciais: TTabSheet;
    Panel4: TPanel;
    ImgFotoMembro: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    PpMnEmail: TPopupMenu;
    Desatualizado1: TMenuItem;
    Atualizado1: TMenuItem;
    PpMnFone: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PpMnCelular: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PpMnEndereco: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Panel5: TPanel;
    Label9: TLabel;
    Panel6: TPanel;
    Label38: TLabel;
    PpMnFoto: TPopupMenu;
    SelecionardoArquivo1: TMenuItem;
    CapturardaWebcam1: TMenuItem;
    QryMembros: TMyQuery;
    DSMembros: TDataSource;
    QryLkpEscolaridade: TMyQuery;
    QryLkpEscolaridadeCodEscolaridade: TLargeintField;
    QryLkpEscolaridadeNomeEscolaridade: TStringField;
    DSLkpEscolaridade: TDataSource;
    QryLkpEstadoCivil: TMyQuery;
    QryLkpEstadoCivilCodEstadoCivil: TLargeintField;
    QryLkpEstadoCivilNomeEstadoCivil: TStringField;
    DSLkpEstadoCivil: TDataSource;
    DSLkpFamilia: TDataSource;
    QryLkpFamilia: TMyQuery;
    QryLkpFamiliaCodFamilia: TLargeintField;
    QryLkpFamiliaSobrenome: TStringField;
    DSLkpProfissao: TDataSource;
    QryLkpProfissao: TMyQuery;
    QryLkpProfissaoCodProfissao: TLargeintField;
    QryLkpProfissaoNomeProfissao: TStringField;
    QryLkpFormaAdmissao: TMyQuery;
    QryLkpMotivoSaida: TMyQuery;
    QryLkpFormaAdmissaoCodFormaAdmissao: TLargeintField;
    QryLkpFormaAdmissaoNomeFormaAdmissao: TStringField;
    DSLkpFormaAdmissao: TDataSource;
    DSLkpMotivoSaida: TDataSource;
    QryLkpMotivoSaidaCodMotivoSaida: TLargeintField;
    QryLkpMotivoSaidaNomeMotivoSaida: TStringField;
    QryLkpFamiliaEndereco: TStringField;
    QryLkpFamiliacep: TStringField;
    QryLkpFamiliacompl: TStringField;
    QryLkpFamiliabairro: TStringField;
    QryLkpFamiliacidade: TStringField;
    QryLkpFamiliauf: TStringField;
    QryLkpFamiliatelefone: TStringField;
    QryLkpFamiliacelular: TStringField;
    QryLkpFamiliaEmail: TStringField;
    QryMembrosCodMembro: TLargeintField;
    QryMembrosCodFamilia: TLargeintField;
    QryMembrosCodTipoMembro: TLargeintField;
    QryMembrosNomeMembro: TStringField;
    QryMembrosNomeSolteiro: TStringField;
    QryMembrosSexo: TStringField;
    QryMembrosEmail: TStringField;
    QryMembrosTipoSangue: TStringField;
    QryMembrosCelular: TStringField;
    QryMembrosCodEscolaridade: TLargeintField;
    QryMembrosPai: TStringField;
    QryMembrosPaiCELC: TStringField;
    QryMembrosMae: TStringField;
    QryMembrosMaeCELC: TStringField;
    QryMembrosDataNasc: TDateField;
    QryMembrosNaturalidade: TStringField;
    QryMembrosCodEstadoCivil: TLargeintField;
    QryMembrosNomeConjuge: TStringField;
    QryMembrosDataNascConj: TDateField;
    QryMembrosConjugeFiliado: TStringField;
    QryMembrosReligiaoConjuge: TStringField;
    QryMembrosCodProfissao: TLargeintField;
    QryMembrosEmpresa: TStringField;
    QryMembrosCEPEmpresa: TStringField;
    QryMembrosUFEmpresa: TStringField;
    QryMembrosDDDEmpresa: TStringField;
    QryMembrosFoneEmpresa: TStringField;
    QryMembrosEmailEmpresa: TStringField;
    QryMembrosCargo: TStringField;
    QryMembrosRenda: TFloatField;
    QryMembrosDataAdmisComunidade: TDateTimeField;
    QryMembrosCodFormaAdmissao: TLargeintField;
    QryMembrosProcedenciaAdmissao: TStringField;
    QryMembrosEnvelope: TLargeintField;
    QryMembrosDataSaida: TDateField;
    QryMembrosCodMotivoSaida: TLargeintField;
    QryMembrosDestinoSaida: TStringField;
    QryMembrosFotoCaminho: TStringField;
    QryMembrosRG: TStringField;
    QryMembrosCPF: TStringField;
    QryMembrosCodUsuario: TLargeintField;
    QryMembrosDataCadastro: TDateTimeField;
    QryMembrosDataConfirmacao: TDateField;
    QryMembrosDataBatismo: TDateField;
    QryMembrosFiliado: TStringField;
    QryMembrosDataAtivo: TDateTimeField;
    QryMembrosNumVezes: TLargeintField;
    QryMembrosVotante: TDateTimeField;
    QryMembrosCidadeEmpresa: TStringField;
    QryMembrosEnderecoEmpresa: TStringField;
    QryMembrosComplEmpresa: TStringField;
    QryMembrosEndereco: TStringField;
    QryMembrosCompl: TStringField;
    QryMembrosCidade: TStringField;
    QryMembrosBairro: TStringField;
    QryMembrosCEP: TStringField;
    QryMembrosUF: TStringField;
    QryMembrosTelefone: TStringField;
    QryMembrosEnderecoDesatualizado: TBooleanField;
    QryMembrosTelefoneDesatualizado: TBooleanField;
    QryMembrosCelularDesatualizado: TBooleanField;
    QryMembrosEmailDesatualizado: TBooleanField;
    QryMembrosCodMembroAntigo: TLargeintField;
    QryMembrosprofissao: TStringField;
    QryMembrosFamilia: TStringField;
    QryMembrosUsuario: TStringField;
    QryMembrosEscolaridade: TStringField;
    QryMembrosEstadoCivil: TStringField;
    QryMembrosFormaAdmissao: TStringField;
    QryMembrosMotivoSaida: TStringField;
    Panel7: TPanel;
    DBEdtEmpresa: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdtCidadeEmpresa: TDBEdit;
    Label15: TLabel;
    DBEdtUFEmpresa: TDBEdit;
    Label16: TLabel;
    DBEdtTelefoneEmpresa: TDBEdit;
    Label17: TLabel;
    DBEdtEmailEmpresa: TDBEdit;
    Label18: TLabel;
    DBEdtCargoEmpresa: TDBEdit;
    Label19: TLabel;
    DBEdtRendaEmpresa: TDBEdit;
    Panel8: TPanel;
    Label29: TLabel;
    DBEdtDtAdmissao: TDBDateEdit;
    Label30: TLabel;
    DBLkpFormaAdmissao: TDBLookupComboBox;
    Label31: TLabel;
    DBEdtProcedencia: TDBEdit;
    Label32: TLabel;
    DBEdtDtSaida: TDBDateEdit;
    Label33: TLabel;
    DBLkpMotivoSaida: TDBLookupComboBox;
    Label34: TLabel;
    DBEdtDestino: TDBEdit;
    Label35: TLabel;
    DBEdtDataCadastro: TDBDateEdit;
    Label36: TLabel;
    DBEdtDataConfirmacao: TDBDateEdit;
    Label37: TLabel;
    DBEdtDataBatismo: TDBDateEdit;
    Label39: TLabel;
    DBEdtDataAtivo: TDBDateEdit;
    Label48: TLabel;
    DBEdtDtVotante: TDBDateEdit;
    Label49: TLabel;
    DBEdtNumVezes: TDBEdit;
    Label20: TLabel;
    DBEdtEnvelope: TDBEdit;
    DBCkBxVotante: TDBCheckBox;
    Panel9: TPanel;
    Panel10: TPanel;
    DBLkpEscolaridade: TDBLookupComboBox;
    DBEdtUF: TDBEdit;
    Label47: TLabel;
    Label46: TLabel;
    DBEdtBairro: TDBEdit;
    Label45: TLabel;
    DBEdtCidade: TDBEdit;
    Label44: TLabel;
    DBEdtComplemento: TDBEdit;
    Label43: TLabel;
    DBEdtEndereco: TDBEdit;
    Label42: TLabel;
    DBEdtCelular: TDBEdit;
    Label27: TLabel;
    DBEdtTelefone: TDBEdit;
    Label41: TLabel;
    DBCbxMaeLuterana: TDBCheckBox;
    DBEdtMae: TDBEdit;
    Label8: TLabel;
    DBCbxPaiLuterano: TDBCheckBox;
    DBEdtPai: TDBEdit;
    Label6: TLabel;
    DBEdtCPF: TDBEdit;
    Label5: TLabel;
    DBEdtRG: TDBEdit;
    Label4: TLabel;
    DBEdtEmail: TDBEdit;
    Label24: TLabel;
    DBEdtNaturalidade: TDBEdit;
    Label26: TLabel;
    DBLkpProfissao: TDBLookupComboBox;
    Label28: TLabel;
    DBLkpEstadoCivil: TDBLookupComboBox;
    Label11: TLabel;
    Label10: TLabel;
    DBEdtSangue: TDBEdit;
    Label25: TLabel;
    DBDtEdtDataNasc: TDBDateEdit;
    Label7: TLabel;
    DBCBxSexo: TDBComboBox;
    Label3: TLabel;
    DBEdtNomeSolteiro: TDBEdit;
    Label2: TLabel;
    DBEdtNome: TDBEdit;
    Label1: TLabel;
    Label40: TLabel;
    GrpBxInformacoesConjuge: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdtNomeConjuge: TDBEdit;
    DBEdtReligiaoConjuge: TDBEdit;
    DBCkBxConjugefiliado: TDBCheckBox;
    DBDtEdtDtNascConjuge: TDBDateEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    ToolBar1: TToolBar;
    BtnAdicionarDataEspecial: TBitBtn;
    BtnEditarDataEspecial: TBitBtn;
    BtnExcluirDataEspecial: TBitBtn;
    ToolBar2: TToolBar;
    BtnAdicionaFilho: TBitBtn;
    BtnEditaFilho: TBitBtn;
    BtnExcluiFilho: TBitBtn;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QryDataEspecial: TMyQuery;
    QryFilhos: TMyQuery;
    QryDataEspecialData: TDateField;
    QryDataEspecialUFDTEsp: TStringField;
    QryDataEspecialMunicipioDTEsp: TStringField;
    QryDataEspecialIgreja: TStringField;
    QryDataEspecialOficiante: TStringField;
    QryDataEspecialTestemunha1: TStringField;
    QryDataEspecialTestemunha2: TStringField;
    QryDataEspecialTestemunha3: TStringField;
    QryDataEspecialTestemunha4: TStringField;
    QryDataEspecialTestemunha5: TStringField;
    QryDataEspecialTestemunha6: TStringField;
    QryDataEspecialTestemunha7: TStringField;
    QryDataEspecialTestemunha8: TStringField;
    QryDataEspecialTestemunha9: TStringField;
    QryDataEspecialDescDataEsp: TStringField;
    DSDataEspecial: TDataSource;
    QryDataEspecialCodAcontec: TLargeintField;
    QryDataEspecialCodMembroAntigo: TLargeintField;
    QryDataEspecialCodFamilia: TLargeintField;
    QryDataEspecialCodMembro: TLargeintField;
    DSFilhos: TDataSource;
    QryFilhosCodFilho: TLargeintField;
    QryFilhosCodMembroAntigo: TLargeintField;
    QryFilhosCodFamilia: TLargeintField;
    QryFilhosNomeFilho: TStringField;
    QryFilhosDataNasc: TDateField;
    QryFilhosIndComunidade: TLargeintField;
    QryFilhosCodMembro: TLargeintField;
    QryFilhosMembroComunidade: TStringField;
    QryRetornaCodMembro: TMyQuery;
    QryRetornaCodMembroMembroAntigo: TLargeintField;
    QryLkpFamiliaFamiliaCodigo: TStringField;
    QryMembrosChefeFamilia: TBooleanField;
    DBChckBxChefeFamilia: TDBCheckBox;
    DBText1: TDBText;
    DBEdtCEP: TcxDBMaskEdit;
    DBEdtCepEmpresa: TcxDBMaskEdit;
    DBLkpTipoMembro: TDBLookupComboBox;
    Label50: TLabel;
    QryLkpTipoMembro: TMyQuery;
    QryLkpTipoMembroCodTipoMembro: TLargeintField;
    QryLkpTipoMembroNomeTipoMembro: TStringField;
    DSLkpTipoMembro: TDataSource;
    EdtNomeFamilia: TEdit;
    SpdBtnBuscaMembro: TSpeedButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImgFotoMembroDblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Atualizado1Click(Sender: TObject);
    procedure Desatualizado1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure DBEdtEmailExit(Sender: TObject);
    procedure DBEdtTelefoneExit(Sender: TObject);
    procedure DBEdtCelularExit(Sender: TObject);
    procedure DBEdtEnderecoExit(Sender: TObject);
    procedure SelecionardoArquivo1Click(Sender: TObject);
    procedure CapturardaWebcam1Click(Sender: TObject);
    procedure BtnAdicionarDataEspecialClick(Sender: TObject);
    procedure BtnEditarDataEspecialClick(Sender: TObject);
    procedure BtnExcluirDataEspecialClick(Sender: TObject);
    procedure BtnAdicionaFilhoClick(Sender: TObject);
    procedure BtnEditaFilhoClick(Sender: TObject);
    procedure BtnExcluiFilhoClick(Sender: TObject);
    procedure DBEdtEnvelopeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpdBtnBuscaMembroClick(Sender: TObject);
  private
    function BuscaNumEnvelope():integer;
    procedure BuscaEnvelope;
    { Private declarations }
  public

    LocalFoto:String;
    { Public declarations }
  end;

var
  FormCadastroMembro: TFormCadastroMembro;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmConsultaMembro, UFrmConsultaFamilia, UFrmCadastroFamilia, FrameCapture_, UDMPrincipal, UFrmCadastroMembroDataEspec, UFrmCadastroMembroFilho, UFuncoes, UFrmBuscaFamilia;

procedure TFormCadastroMembro.BtnSalvarClick(Sender: TObject);
Var
  NovoLocal:String;
begin

  if EdtNomeFamilia.Text='' then
  Begin
    ShowMessage('O Campo Fam�lia � obrigat�rio!');
    SpdBtnBuscaMembroClick(self);
  End
  Else
  Begin
    if DBEdtNome.Text = '' then
    Begin
      ShowMessage('O Campo nome � obrigat�rio!');
      DBEdtNome.SetFocus;
    End
    Else
    Begin
      if DBLkpTipoMembro.Text= '' then
      Begin
        ShowMessage('O Campo tipo de membro � obrigat�rio!');
        DBEdtNome.SetFocus;
      End
      Else
      Begin
        with FormConsultaMembro do
        Begin
          if LocalFoto <> '' then
          Begin
            if LocalFoto <> 'BMP' then
            Begin
              NovoLocal := ExtractFilePath(Application.ExeName) + 'Fotos\Membros\' + DBEdtNome.Text + '.jpg';
              ImgFotoMembro.Picture.SaveToFile(NovoLocal);
              QryMembrosFotoCaminho.AsString := NovoLocal;
            End
            Else
            Begin
              NovoLocal := ExtractFilePath(Application.ExeName) + 'Fotos\Membros\' + DBEdtNome.Text + '.bmp';
              ImgFotoMembro.Picture.SaveToFile(NovoLocal);
              QryMembrosFotoCaminho.AsString := NovoLocal;
            End;
          End;

          if QryMembrosCodMembroAntigo.Value = 0 then
          Begin
            QryRetornaCodMembro.Close;
            QryRetornaCodMembro.ParamByName('pCodFamilia').Value := QryMembrosCodFamilia.Value;
            QryRetornaCodMembro.Open;
            if QryRetornaCodMembroMembroAntigo.Value = null then
              QryMembrosCodMembroAntigo.Value := 1
            Else
              QryMembrosCodMembroAntigo.Value := QryRetornaCodMembroMembroAntigo.Value + 1;
          End;
          QryMembrosCep.AsString := RetiraCaracter('-',QryMembrosCep.AsString);
          QryMembrosCEPEmpresa.AsString := RetiraCaracter('-',QryMembrosCEPEmpresa.AsString);
          QryMembros.Post;
          QryMembros.Close;
          QryMembros.Open;
        End;
        Close;
      End;
    End;
  End;

end;

procedure TFormCadastroMembro.BuscaEnvelope;
begin

end;

function TFormCadastroMembro.BuscaNumEnvelope: integer;
begin

  DMPrincipal.QryTemp.Close;
  DMPrincipal.QryTemp.SQL.Clear;
  DMPrincipal.QryTemp.SQL.Add('Select max(Envelope) as UltimoEnvelope from Membros');
  DMPrincipal.QryTemp.Open;

  Result := DMPrincipal.QryTemp.FieldByName('UltimoEnvelope').AsInteger + 1;

end;

procedure TFormCadastroMembro.CapturardaWebcam1Click(Sender: TObject);
begin

  FormCapturaWebcam.ShowModal;

end;

procedure TFormCadastroMembro.DBEdtCelularExit(Sender: TObject);
begin

  if DBEdtCelular.Text <>'' then
    DBEdtCelular.Color := clWhite;

end;

procedure TFormCadastroMembro.DBEdtEmailExit(Sender: TObject);
begin

  if DBEdtEmail.Text <>'' then
    DBEdtEmail.Color := clWhite;

end;

procedure TFormCadastroMembro.DBEdtEnderecoExit(Sender: TObject);
begin

  if DBEdtEndereco.Text <>'' then
    DBEdtEndereco.Color := clWhite;

end;

procedure TFormCadastroMembro.DBEdtEnvelopeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key=VK_F2 then
  Begin
    DBEdtEnvelope.Text := IntToStr(BuscaNumEnvelope);
  End;

end;

procedure TFormCadastroMembro.DBEdtTelefoneExit(Sender: TObject);
begin

  if DBEdtTelefone.Text <>'' then
    DBEdtTelefone.Color := clWhite;

end;

procedure TFormCadastroMembro.Desatualizado1Click(Sender: TObject);
begin

  QryMembrosEmailDesatualizado.Value :=  True;
  DBEdtEmail.Color := clYellow;
  Atualizado1.Checked := False;
  Desatualizado1.Checked := True;

end;

procedure TFormCadastroMembro.FormShow(Sender: TObject);
begin
  QryLkpTipoMembro.Close;
  QryLkpTipoMembro.Open;
  // carrega foto do arquivo
  if QryMembros.State <> DSinsert then
  Begin
    EdtNomeFamilia.Text := QryMembrosFamilia.Text + ' - ' + QryMembrosCodFamilia.Text;
    TbsDatasEspeciais.Enabled := True;
    // CARREGA TABELA DE DATAS ESPECIAIS DO MEMBRO
    QryDataEspecial.Close;
    QryDataEspecial.ParamByName('pCodMembro').Value := QryMembrosCodMembro.Value;
    QryDataEspecial.Open;

    // CARREGA TABELA DE FILHOS DO MEMBRO
    QryFilhos.Close;
    QryFilhos.ParamByName('pCodMembro').Value := QryMembrosCodMembro.Value;
    QryFilhos.Open;

    if QryMembrosFotoCaminho.value <> '' then
      ImgFotoMembro.Picture.LoadFromFile(QryMembrosFotoCaminho.AsString);

    if ((DBEdtEmail.Text='') and (QryMembrosEmailDesatualizado.Value=False)) then
      DBEdtEmail.Color := clRed
    Else
    Begin
      // muda cor do campo email se estiver desatualizado
      if QryMembrosEmailDesatualizado.Value then
      Begin
        DBEdtEmail.Color := clYellow;
        Atualizado1.Checked := False;
        Desatualizado1.Checked :=  True;
      End
      Else
      Begin
        DBEdtEmail.Color := clWhite;
        Atualizado1.Checked := True;
        Desatualizado1.Checked :=  False;
      End;
    End;

    if ((DBEdtTelefone.Text='(   )    -    ') and (QryMembrosTelefoneDesatualizado.Value=False)) then
      DBEdtTelefone.Color := clRed
    Else
    Begin
      // Muda cor do campo telefone se estiver desatualizado
      if QryMembrosTelefoneDesatualizado.Value then
      Begin
        DBEdtTelefone.Color := clYellow;
        MenuItem1.Checked := False;
        MenuItem2.Checked := True;
      End
      Else
      Begin
        DBEdtTelefone.Color := clWhite;
        MenuItem2.Checked := False;
        MenuItem1.Checked := True;
      End;
    End;

    if ((DBEdtCelular.Text='(   )    -    ') and (QryMembrosCelularDesatualizado.Value=False)) then
      DBEdtCelular.Color := clRed
    Else
    Begin
      // Muda cor do campo Celular se estiver desatualizado
      if QryMembrosCelularDesatualizado.Value then
      Begin
        DBEdtCelular.Color := clYellow;
        MenuItem3.Checked := False;
        MenuItem4.Checked := True;
      End
      Else
      Begin
        DBEdtCelular.Color := clWhite;
        MenuItem4.Checked := False;
        MenuItem3.Checked := True;
      End;
    End;

    if ((DBEdtEndereco.Text='') and (QryMembrosEnderecoDesatualizado.Value = False)) then
      DBEdtEndereco.Color := clRed
    Else
    Begin
      // Muda cor do campo Endereco se estiver desatualizado
      if QryMembrosEnderecoDesatualizado.Value then
      Begin
        DBEdtEndereco.Color := clYellow;
        MenuItem5.Checked := False;
        MenuItem6.Checked := True;
      End
      Else
      Begin
        DBEdtEndereco.Color := clWhite;
        MenuItem6.Checked := False;
        MenuItem5.Checked := True;
      End;
    End;

  End
  Else
  Begin
    TbsDatasEspeciais.Enabled := False;
    // busca o ultimo numero do envelope + 1 e preenche no campo
    DBEdtEnvelope.Text := IntToStr(BuscaNumEnvelope);

    DBEdtEmail.Color := clWhite;
    DBEdtTelefone.Color := clWhite;
    DBEdtCelular.Color := clWhite;
    DBEdtEndereco.Color := clWhite;
    ImgFotoMembro.Picture.LoadFromFile('C:\ChurchExpress\Fotos\Sem Foto.Jpg');
    SpdBtnBuscaMembroClick(self);
  End;

  TbsPessoal.Show;


end;

procedure TFormCadastroMembro.ImgFotoMembroDblClick(Sender: TObject);
begin

  OpenPictureDialog1.Execute;
  LocalFoto := OpenPictureDialog1.FileName;

  if LocalFoto <> '' then
    ImgFotoMembro.Picture.LoadFromFile(LocalFoto);

end;

procedure TFormCadastroMembro.MenuItem1Click(Sender: TObject);
begin

  QryMembrostelefoneDesatualizado.Value :=  False;
  DBEdtTelefone.Color := clWhite;
  MenuItem1.Checked := True;
  MenuItem2.Checked := False;

end;

procedure TFormCadastroMembro.MenuItem2Click(Sender: TObject);
begin

  QryMembrostelefoneDesatualizado.Value :=  True;
  DBEdtTelefone.Color := clYellow;
  MenuItem2.Checked := True;
  MenuItem1.Checked := False;

end;

procedure TFormCadastroMembro.MenuItem3Click(Sender: TObject);
begin

  QryMembrosCelularDesatualizado.Value :=  False;
  DBEdtCelular.Color := clWhite;
  MenuItem3.Checked := True;
  MenuItem4.Checked := False;

end;

procedure TFormCadastroMembro.MenuItem4Click(Sender: TObject);
begin

  QryMembrosCelularDesatualizado.Value :=  True;
  DBEdtCelular.Color := clYellow;
  MenuItem4.Checked := True;
  MenuItem3.Checked := False;

end;

procedure TFormCadastroMembro.MenuItem5Click(Sender: TObject);
begin

  QryMembrosEnderecoDesatualizado.Value :=  False;
  DBEdtEndereco.Color := clWhite;
  MenuItem5.Checked := True;
  MenuItem6.Checked := False;

end;

procedure TFormCadastroMembro.MenuItem6Click(Sender: TObject);
begin

  QryMembrosEnderecoDesatualizado.Value :=  True;
  DBEdtEndereco.Color := clYellow;
  MenuItem6.Checked := True;
  MenuItem5.Checked := False;

end;

procedure TFormCadastroMembro.PageControl1Change(Sender: TObject);
begin

  if TbsPessoal.Showing then
    DBEdtNome.SetFocus
  else
  Begin
    if TbsProfissional.Showing then
      DBEdtEmpresa.SetFocus
    else
    Begin
      if TbsComunidade.Showing then
        DBEdtDtAdmissao.SetFocus
      Else
      Begin
//        if TbsDatasEspeciais.Showing then
//          DBEdtDataCadastro.SetFocus;
      End;
    End;
  End;

end;

procedure TFormCadastroMembro.SelecionardoArquivo1Click(Sender: TObject);
begin

  ImgFotoMembroDblClick(self);

end;

procedure TFormCadastroMembro.SpdBtnBuscaMembroClick(Sender: TObject);
Var
  codfamiliaanterior:Integer;
begin

  codfamiliaanterior := QryMembrosCodFamilia.Value;

  FormBuscaFamilia.ShowModal;
  if codfamiliaanterior <> FormPrincipal.CodFamiliaGlobal then
  Begin
    if FormPrincipal.CodFamiliaGlobal<> 0 then
    Begin
      QryMembrosCodFamilia.Value := FormPrincipal.CodFamiliaGlobal;
      EdtNomeFamilia.Text := FormPrincipal.NomeFamiliaGlobal + ' - ' + inttostr(FormPrincipal.CodFamiliaGlobal);

      if Application.MessageBox('Deseja Adicionar as informa��es de endere�o, telefones e e-mail da Fam�lia neste cadastro','ATEN��O',Mb_YesNo) = mrYes then
      Begin
        QryLkpFamilia.Filtered := False;
        QryLkpFamilia.Filter := 'codfamilia = ' + inttostr(FormPrincipal.CodFamiliaGlobal);
        QryLkpFamilia.Filtered := True;

        QryMembrosEndereco.Text := QryLkpFamiliaEndereco.Text;
        QryMembrosTelefone.Text := QryLkpFamiliatelefone.Text;
        QryMembrosCelular.Text := QryLkpFamiliacelular.Text;
        QryMembrosBairro.Text := QryLkpFamiliabairro.Text;
        QryMembrosCidade.Text := QryLkpFamiliacidade.Text;
        QryMembrosUF.Text := QryLkpFamiliauf.Text;
        QryMembrosCEP.Text := QryLkpFamiliacep.Text;
        QryMembrosCompl.Text := QryLkpFamiliacompl.Text;
        QryMembrosEmail.Text := QryLkpFamiliaEmail.Text;
      End;
      DBEdtNome.SetFocus;
    End;
  End;

end;

procedure TFormCadastroMembro.Atualizado1Click(Sender: TObject);
begin

  QryMembrosEmailDesatualizado.Value :=  False;
  DBEdtEmail.Color := clWhite;
  Atualizado1.Checked := True;
  Desatualizado1.Checked := False;

end;

procedure TFormCadastroMembro.BtnAdicionaFilhoClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    QryFilhos.Append;
    if FormCadastroMembroFilho=nil then
      Application.CreateForm(TFormCadastroMembroFilho,FormCadastroMembroFilho);
    FormCadastroMembroFilho.ShowModal;
  End;

end;

procedure TFormCadastroMembro.BtnEditaFilhoClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    QryFilhos.Edit;
    if FormCadastroMembroFilho=nil then
      Application.CreateForm(TFormCadastroMembroFilho,FormCadastroMembroFilho);
    FormCadastroMembroFilho.ShowModal;
  End;

end;

procedure TFormCadastroMembro.BtnExcluiFilhoClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        QryFilhos.Delete;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormCadastroMembro.BtnAdicionarDataEspecialClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    QryDataEspecial.Append;
    if FormCadastroMembroDataEspec=nil then
      Application.CreateForm(TFormCadastroMembroDataEspec,FormCadastroMembroDataEspec);
    FormCadastroMembroDataEspec.ShowModal;
  End;

end;

procedure TFormCadastroMembro.BtnCancelarClick(Sender: TObject);
begin

  QryMembros.Cancel;
  Close;

end;

procedure TFormCadastroMembro.BtnEditarDataEspecialClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    QryDataEspecial.Edit;
    if FormCadastroMembroDataEspec=nil then
      Application.CreateForm(TFormCadastroMembroDataEspec,FormCadastroMembroDataEspec);
    FormCadastroMembroDataEspec.ShowModal;
  End;

end;

procedure TFormCadastroMembro.BtnExcluirDataEspecialClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        QryDataEspecial.Delete;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

end.
