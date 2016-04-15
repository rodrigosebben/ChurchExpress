unit UFrmRelRelacaoMembrosVotantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, frxClass, frxDBSet, Data.DB,
  MemDS, DBAccess, MyAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask;

type
  TFormRelRelacaoMembrosVotantes = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryTemp: TMyQuery;
    QryRel: TMyQuery;
    DSRel: TDataSource;
    frxDBRelacaoMembrosVotantes: TfrxDBDataset;
    QryRelCodMembro: TLargeintField;
    QryRelNomeMembro: TStringField;
    QryRelCodFamilia: TLargeintField;
    QryRelSobrenome: TStringField;
    frxRpt: TfrxReport;
    QryRelFamiliaCampo: TStringField;
    QryRelcodmembroantigo: TLargeintField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CbxTipoAssembléia: TComboBox;
    EdtData: TMaskEdit;
    EdtHorario: TMaskEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelRelacaoMembrosVotantes: TFormRelRelacaoMembrosVotantes;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormRelRelacaoMembrosVotantes.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormRelRelacaoMembrosVotantes.BtnSalvarClick(Sender: TObject);
Var
  where:boolean;
begin

  frxRpt.Variables.Clear;
  frxRpt.Variables[' ' + 'Geral'] := Null;
  frxRpt.Variables.AddVariable('Geral','TipoAssembleia',QuotedStr(CbxTipoAssembléia.Text));
  frxRpt.Variables.AddVariable('Geral','Data',QuotedStr(EdtData.Text));
  frxRpt.Variables.AddVariable('Geral','Horario',QuotedStr(EdtHorario.Text));

  QryRel.Close;
  QryRel.Open;

  frxRpt.ShowReport;


{  QryRelXXX.Close;
  QryRelXXX.SQL.Clear;
  QryRelXXX.SQL.Text := 'SELECT * FROM TABELA ';

  where := False;
  if CbxSepulturas.ItemIndex<>0 then
  Begin
    QryRelXXX.SQL.Add('Where S.Numero=' + QuotedStr(CbxSepulturas.Text));
    where := True;
  End;

  case CbxSituacao.ItemIndex of
    1:Begin
        if where=true then
        Begin
          QryRelXXX.SQL.Add('and Not IsNull(FS.DataPagamento)');
        End
        Else
        Begin
          QryRelXXX.SQL.Add('Where Not IsNull(FS.DataPagamento)');
          where := True;
        End;
      End;
    2:Begin
        if where=true then
        Begin
          QryRelXXX.SQL.Add('And IsNull(FS.DataPagamento)');
        End
        Else
        Begin
          QryRelXXX.SQL.Add('Where IsNull(FS.DataPagamento)');
          where := True;
        End;
      End;
  end;

  if CBXTipoSepultura.ItemIndex<>0 then
  Begin
    if where=true then
    Begin
      QryRelXXX.SQL.Add('And TS.NomeTipoSepultura=' + QuotedStr(CBXTipoSepultura.Text));
    End
    Else
    Begin
      QryRelXXX.SQL.Add('Where TS.NomeTipoSepultura=' + QuotedStr(CBXTipoSepultura.Text));
      where := True;
    End;
  End;

  if CbxTipoTaxa.ItemIndex<>0 then
  Begin
    if where=true then
    Begin
      QryRelXXX.SQL.Add('And TTS.NomeTipoTaxaSepultura=' + QuotedStr(CbxTipoTaxa.Text));
    End
    Else
    Begin
      QryRelXXX.SQL.Add('Where TTS.NomeTipoTaxaSepultura=' + QuotedStr(CbxTipoTaxa.Text));
      where := True;
    End;
  End;

  if RdGrpDataVencimento.ItemIndex=1 then
  Begin
    if where=true then
    Begin
      QryRelXXX.SQL.Add('And FS.DataVencimento between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtEdtDE.Date)) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtEdtATE.Date)));
    End
    Else
    Begin
      QryRelXXX.SQL.Add('Where FS.DataVencimento between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtEdtDE.Date)) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DtEdtATE.Date)));
      where := True;
    End;
  End;

  if DtEdtDE.Date > DtEdtATE.Date then
  Begin
    ShowMessage('A Data Inicial não pode ser maior que a data final!');
    DtEdtDE.SetFocus;
  End
  Else
  Begin
    QryRelXXX.Open;
    frxRptCemiterio.ShowReport;
  End;}

end;

procedure TFormRelRelacaoMembrosVotantes.FormShow(Sender: TObject);
begin

  CbxTipoAssembléia.SetFocus;

{  // CARREGA COMBO
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('SELECT campo FROM tabela order by campo');
  QryTemp.Open;

  CbxXXX.Items.Clear;
  CbxXXX.Items.Add('TODAS');
  While not QryTemp.Eof do
  Begin
    CbxXXX.Items.Add(QryTemp.FieldByName('Numero').AsString);
    QryTemp.Next;
  End;
  CbxXXX.ItemIndex := 0;
  CbxXXX.Setfocus;}


end;

end.
