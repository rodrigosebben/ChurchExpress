unit UFrmRelModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, frxClass, frxDBSet, Data.DB,
  MemDS, DBAccess, MyAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormRelModelo = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Labelde: TLabel;
    LabelATE: TLabel;
    CbxSepulturas: TComboBox;
    CbxSituacao: TComboBox;
    CBXTipoSepultura: TComboBox;
    CbxTipoTaxa: TComboBox;
    RdGrpData: TRadioGroup;
    DtEdtDE: TcxDateEdit;
    DtEdtATE: TcxDateEdit;
    QryTemp: TMyQuery;
    QryRel: TMyQuery;
    DSRel: TDataSource;
    frxRpt: TfrxReport;
    frxDBDataset: TfrxDBDataset;
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
  FormRelModelo: TFormRelModelo;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormRelModelo.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormRelModelo.BtnSalvarClick(Sender: TObject);
Var
  where:boolean;
begin

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
    ShowMessage('A Data Inicial n�o pode ser maior que a data final!');
    DtEdtDE.SetFocus;
  End
  Else
  Begin
    QryRelXXX.Open;
    frxRptCemiterio.ShowReport;
  End;}

end;

procedure TFormRelModelo.FormShow(Sender: TObject);
begin

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

procedure TFormRelModelo.RdGrpDataClick(Sender: TObject);
begin

  Case RdGrpDataVencimento.ItemIndex of
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
