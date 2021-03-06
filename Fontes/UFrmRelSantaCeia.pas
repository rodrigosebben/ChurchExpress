unit UFrmRelSantaCeia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, frxClass, frxDBSet, Data.DB,
  MemDS, DBAccess, MyAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormRelSantaCeia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Labelde: TLabel;
    LabelATE: TLabel;
    CbxMembros: TComboBox;
    CbxFamilia: TComboBox;
    RdGrpData: TRadioGroup;
    DtEdtDE: TcxDateEdit;
    DtEdtATE: TcxDateEdit;
    QryTemp: TMyQuery;
    QryRel: TMyQuery;
    DSRel: TDataSource;
    frxRpt: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    QryRelNomeMembro: TStringField;
    QryRelSobrenome: TStringField;
    QryRelCodSantaCeia: TLargeintField;
    QryRelCodMembro: TLargeintField;
    QryRelCodMembroAntigo: TLargeintField;
    QryRelCodFamilia: TLargeintField;
    QryRelAno: TLargeintField;
    QryReljaneiro: TLargeintField;
    QryRelfevereiro: TLargeintField;
    QryRelmarco: TLargeintField;
    QryRelabril: TLargeintField;
    QryRelmaio: TLargeintField;
    QryReljunho: TLargeintField;
    QryReljulho: TLargeintField;
    QryRelagosto: TLargeintField;
    QryRelsetembro: TLargeintField;
    QryReloutubro: TLargeintField;
    QryRelnovembro: TLargeintField;
    QryReldezembro: TLargeintField;
    Label3: TLabel;
    CbxTipo: TComboBox;
    QryRelTotalAnual: TLargeintField;
    QryTotalMembros: TMyQuery;
    QryTotalFamilias: TMyQuery;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RdGrpDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelSantaCeia: TFormRelSantaCeia;

implementation

{$R *.dfm}

uses UDMPrincipal, UFuncoes;

procedure TFormRelSantaCeia.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormRelSantaCeia.BtnSalvarClick(Sender: TObject);
Var
  where:boolean;
  TotalMembros,TotalFamilias:String;
begin

  QryRel.Close;
  QryRel.SQL.Clear;
  QryRel.SQL.Text := 'SELECT M.NomeMembro, F.Sobrenome, s.*, (Janeiro + Fevereiro + Marco + Abril + Maio + Junho + Julho + Agosto + Setembro + Outubro + Novembro + Dezembro) as TotalAnual ' +
                     ' FROM santa_ceia_antigo S left join Membros M on S.CodMembro = M.CodMembro ' +
                     '                          left join Familia F on S.CodFamilia = F.CodFamilia ';

  QryTotalMembros.Close;
  QryTotalMembros.SQL.Clear;
  QryTotalMembros.SQL.Text := 'SELECT count(M.codmembro) as TotalMembros ' +
                              ' FROM santa_ceia_antigo S left join Membros M on S.CodMembro = M.CodMembro ' +
                              '                          left join Familia F on S.CodFamilia = F.CodFamilia ';

  QryTotalFamilias.Close;
  QryTotalFamilias.SQL.Clear;
  QryTotalFamilias.SQL.Text := 'SELECT count(M.codfamilia) as TotalFamilias ' +
                               ' FROM santa_ceia_antigo S left join Membros M on S.CodMembro = M.CodMembro ' +
                               '                          left join Familia F on S.CodFamilia = F.CodFamilia ';

  where := False;
  if CbxMembros.ItemIndex<>0 then
  Begin
    QryRel.SQL.Add('Where s.CodMembro = ' + RetornaValorString(CbxMembros.Text,'-'));
    QryTotalMembros.SQL.Add('Where s.CodMembro = ' + RetornaValorString(CbxMembros.Text,'-'));
    QryTotalFamilias.SQL.Add('Where s.CodMembro = ' + RetornaValorString(CbxMembros.Text,'-'));
    where := True;
  End;

  if CbxFamilia.ItemIndex<>0 then
  Begin
    if where=true then
    Begin
      QryRel.SQL.Add('and s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
      QryTotalMembros.SQL.Add('and s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
      QryTotalFamilias.SQL.Add('and s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
    End
    Else
    Begin
      QryRel.SQL.Add('Where s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
      QryTotalMembros.SQL.Add('Where s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
      QryTotalFamilias.SQL.Add('Where s.CodFamilia = ' + RetornaValorString(CbxFamilia.Text,'-'));
      where := True;
    End;
  End;

  case CbxTipo.ItemIndex of
    1:Begin
        if where=true then
        Begin
          QryRel.SQL.Add('and IsNull(m.CodMotivoSaida)');
          QryTotalMembros.SQL.Add('and IsNull(m.CodMotivoSaida)');
          QryTotalFamilias.SQL.Add('and IsNull(m.CodMotivoSaida)');
        End
        Else
        Begin
          QryRel.SQL.Add('Where IsNull(m.CodMotivoSaida)');
          QryTotalMembros.SQL.Add('Where IsNull(m.CodMotivoSaida)');
          QryTotalFamilias.SQL.Add('Where IsNull(m.CodMotivoSaida)');
          where := True;
        End;
      End;
    2:Begin
        if where=true then
        Begin
          QryRel.SQL.Add('And not IsNull(m.CodMotivoSaida)');
          QryTotalMembros.SQL.Add('And not IsNull(m.CodMotivoSaida)');
          QryTotalFamilias.SQL.Add('And not IsNull(m.CodMotivoSaida)');
        End
        Else
        Begin
          QryRel.SQL.Add('Where not IsNull(m.CodMotivoSaida)');
          QryTotalMembros.SQL.Add('Where not IsNull(m.CodMotivoSaida)');
          QryTotalFamilias.SQL.Add('Where not IsNull(m.CodMotivoSaida)');
          where := True;
        End;
      End;
  end;

  if RdGrpData.ItemIndex=1 then
  Begin
    if where=true then
    Begin
      QryRel.SQL.Add('And S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
      QryTotalMembros.SQL.Add('And S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
      QryTotalFamilias.SQL.Add('And S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
    End
    Else
    Begin
      QryRel.SQL.Add('Where S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
      QryTotalMembros.SQL.Add('Where S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
      QryTotalFamilias.SQL.Add('Where S.ano between ' + FormatDateTime('yyyy',DtEdtDE.Date) + ' and ' + FormatDateTime('yyyy',DtEdtATE.Date));
      where := True;
    End;
  End;

  if DtEdtDE.Date > DtEdtATE.Date then
  Begin
    ShowMessage('A Data Inicial n�o pode ser maior que a data final!');
    DtEdtDE.SetFocus;
  End
  Else
  Begin
    QryRel.SQL.Add('Order by S.CodFamilia, F.Sobrenome collate latin1_german1_ci, S.CodMembroAntigo, S.Ano');
    QryRel.Open;

    QryTotalMembros.SQL.Add('Group by m.CodMembro');
    QryTotalMembros.Open;
    TotalMembros := IntToStr(QryTotalMembros.RecordCount);

    QryTotalFamilias.SQL.Add('Group by m.CodFamilia');
    QryTotalFamilias.Open;
    TotalFamilias := IntToStr(QryTotalFamilias.RecordCount);

    frxRpt.Variables.Clear;
    frxRpt.Variables[' ' + 'Geral'] := Null;
    frxRpt.Variables.AddVariable('Geral','TotalFamilias',QuotedStr(TotalFamilias));
    frxRpt.Variables.AddVariable('Geral','TotalMembros',QuotedStr(TotalMembros));
    frxRpt.Variables.AddVariable('Geral','DataInicio',QuotedStr(DtEdtDE.Text));
    frxRpt.Variables.AddVariable('Geral','DataFim',QuotedStr(DtEdtATE.Text));
    frxRpt.Variables.AddVariable('Geral','Familia',QuotedStr(CbxFamilia.Text));
    frxRpt.Variables.AddVariable('Geral','Tipo',QuotedStr(CbxTipo.Text));

    frxRpt.ShowReport;
  End;

end;

procedure TFormRelSantaCeia.FormShow(Sender: TObject);
begin

  // CARREGA COMBO MEMBROS
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('SELECT CodMembro, NomeMembro FROM Membros order by NomeMembro');
  QryTemp.Open;

  CbxMembros.Items.Clear;
  CbxMembros.Items.Add('TODAS');
  While not QryTemp.Eof do
  Begin
    CbxMembros.Items.Add(QryTemp.FieldByName('NomeMembro').AsString + ' - ' + QryTemp.FieldByName('CodMembro').AsString);
    QryTemp.Next;
  End;
  CbxMembros.Setfocus;

  // CARREGA COMBO MEMBROS
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('SELECT CodFamilia, Sobrenome FROM Familia order by Sobrenome collate latin1_german1_ci, CodFamilia');
  QryTemp.Open;

  CbxFamilia.Items.Clear;
  CbxFamilia.Items.Add('TODAS');
  While not QryTemp.Eof do
  Begin
    CbxFamilia.Items.Add(QryTemp.FieldByName('Sobrenome').AsString + ' - ' + QryTemp.FieldByName('CodFamilia').AsString);
    QryTemp.Next;
  End;
  CbxFamilia.ItemIndex := 0;
  CbxMembros.ItemIndex := 0;

end;

procedure TFormRelSantaCeia.RdGrpDataClick(Sender: TObject);
begin

  Case RdGrpData.ItemIndex of
    0:Begin
        Labelde.Visible := False;
        DtEdtDE.Visible := False;
        LabelATE.Visible := False;
        DtEdtATE.Visible := False;
      End;
    1:Begin
        Labelde.Visible := True;
        DtEdtDE.Visible := True;
        LabelATE.Visible := True;
        DtEdtATE.Visible := True;
      End;
  end;

end;

end.
