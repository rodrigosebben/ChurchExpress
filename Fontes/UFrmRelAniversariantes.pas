unit UFrmRelAniversariantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, frxClass, frxDBSet, Data.DB,
  MemDS, DBAccess, MyAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, ShellApi, frxExportText, frxExportCSV, frxExportRTF, frxExportHTML,
  frxExportImage, frxExportPDF, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSeven, dxSkinSevenClassic,
  dxSkinStardust, dxSkinVS2010, Vcl.Menus;

type
  TFormRelAniversariantes = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Labelde: TLabel;
    LabelATE: TLabel;
    RdGrpData: TRadioGroup;
    DtEdtDE: TcxDateEdit;
    DtEdtATE: TcxDateEdit;
    QryTemp: TMyQuery;
    QryRel: TMyQuery;
    DSRel: TDataSource;
    frxRpt: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    QryRelCodMembro: TLargeintField;
    QryRelNomeMembro: TStringField;
    QryRelTelefone: TStringField;
    QryRelCelular: TStringField;
    QryRelEmail: TStringField;
    QryRelDataNasc: TDateField;
    QryRelIdade: TFloatField;
    ChkBxArquivoTexto: TCheckBox;
    ProgressBar1: TProgressBar;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    CbxOrdenar: TComboBox;
    Label1: TLabel;
    MemoAniversarios: TMemo;
    PopupMenu1: TPopupMenu;
    Copiar1: TMenuItem;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RdGrpDataClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
  private
    procedure GeraArquivoTexto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAniversariantes: TFormRelAniversariantes;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormRelAniversariantes.BtnCancelarClick(Sender: TObject);
begin
  MemoAniversarios.Lines.Clear;
  Close;

end;

procedure TFormRelAniversariantes.BtnSalvarClick(Sender: TObject);
begin

  if ((RdGrpData.ItemIndex = 1) and ((DtEdtDE.Text = '') or (DtEdtATE.Text = ''))) then
  Begin
    ShowMessage('Informe o periodo de datas dos aniversariantes!');
    DtEdtDE.SetFocus;
  End
  Else
  Begin
    QryRel.Close;
    QryRel.SQL.Clear;
    QryRel.SQL.Text := 'SELECT M.CodMembro, M.codmembroantigo, F.CodFamilia, F.Sobrenome, ' +
                       '       M.NomeMembro, ' +
                       '       M.Telefone, ' +
                       '       M.Celular, ' +
                       '       M.Email, ' +
                       '       M.DataNasc, ' +
                       '       DATE_FORMAT(NOW( ),' + QuotedStr('%Y') + ') - DATE_FORMAT(M.datanasc, ' + QuotedStr('%Y') + ') - (DATE_FORMAT(NOW( ),' + QuotedStr('00-%m-%d') + ') < DATE_FORMAT(M.datanasc,' + QuotedStr('00-%m-%d') + ')) AS Idade ' +
                       ' FROM membros M LEFT JOIN Familia F on M.Codfamilia = F.codfamilia ' +
                       ' where isnull(M.codmotivosaida) ';


    if RdGrpData.ItemIndex=1 then
    Begin
      QryRel.SQL.Add(' and RIGHT(M.DataNasc,5) between ' + QuotedStr(FormatDateTime('mm-dd',DtEdtDE.Date)) + ' and ' + QuotedStr(FormatDateTime('mm-dd',DtEdtATE.Date)));
    End;

    if DtEdtDE.Date > DtEdtATE.Date then
    Begin
      ShowMessage('A Data Inicial n�o pode ser maior que a data final!');
      DtEdtDE.SetFocus;
    End
    Else
    Begin
      case CbxOrdenar.ItemIndex of
        0: QryRel.SQL.Add(' Order By RIGHT(M.DataNasc,5) ');
        1: QryRel.SQL.Add(' Order By M.NomeMembro ');
        2: QryRel.SQL.Add(' Order By DATE_FORMAT(NOW( ),' + QuotedStr('%Y') + ') - DATE_FORMAT(M.datanasc, ' + QuotedStr('%Y') + ') - (DATE_FORMAT(NOW( ),' + QuotedStr('00-%m-%d') + ') < DATE_FORMAT(M.datanasc,' + QuotedStr('00-%m-%d') + '))');
        3: QryRel.SQL.Add(' Order By f.sobrenome, m.CodFamilia, m.codmembroantigo');
      end;

      QryRel.Open;

      if ChkBxArquivoTexto.Checked = False then
      Begin
        frxRpt.Variables.Clear;
        frxRpt.Variables[' ' + 'Geral'] := Null;
        frxRpt.Variables.AddVariable('Geral','DataInicio',QuotedStr(DtEdtDE.Text));
        frxRpt.Variables.AddVariable('Geral','DataFim',QuotedStr(DtEdtATE.Text));
        frxRpt.Variables.AddVariable('Geral','Ordem',QuotedStr(CbxOrdenar.Text));
        frxRpt.ShowReport;
      End
      Else
        GeraArquivoTexto;
    End;
  End;

end;

procedure TFormRelAniversariantes.Copiar1Click(Sender: TObject);
begin

  MemoAniversarios.CopyToClipboard;

end;

procedure TFormRelAniversariantes.FormShow(Sender: TObject);
begin
  MemoAniversarios.Lines.Clear;
  MemoAniversarios.Visible := false;
  RdGrpData.ItemIndex := 1;
  CbxOrdenar.ItemIndex := 0;
  DtEdtDE.Clear;
  DtEdtATE.Clear;
  RdGrpDataClick(self);
  DtEdtDE.SetFocus;

end;

procedure TFormRelAniversariantes.GeraArquivoTexto;
Var
  DtAniver, dtBancoDados, linha: string;
begin

  MemoAniversarios.Lines.Clear;
  DtAniver := '';
  Linha := '';
  ProgressBar1.Min := 0;
  ProgressBar1.Max := QryRel.RecordCount;
  ProgressBar1.Position := 0;

  while not QryRel.Eof do
  Begin
    ProgressBar1.Position := ProgressBar1.Position+1;
    dtBancoDados := FormatDateTime('dd/mm',QryRelDataNasc.Value);
    if DtAniver <> dtBancoDados then
    Begin
      if DtAniver='' then
      Begin
        Linha:= FormatDateTime('dd-mm',QryRelDataNasc.Value) + ': ' + QryRelNomeMembro.Text;
        DtAniver := FormatDateTime('dd/mm',QryRelDataNasc.Value);
      End
      Else
      Begin
        Linha := linha + '.';
        MemoAniversarios.Lines.Add(Linha);
        Linha:= FormatDateTime('dd-mm',QryRelDataNasc.Value) + ': ' + QryRelNomeMembro.Text;
        DtAniver := FormatDateTime('dd/mm',QryRelDataNasc.Value);
      End;
    End
    Else
      Linha := Linha + ', ' + QryRelNomeMembro.Text ;

    QryRel.Next;
  End;
  Linha := linha + '.';
  MemoAniversarios.Lines.Add(Linha);
  MemoAniversarios.Visible := True;

end;

procedure TFormRelAniversariantes.RdGrpDataClick(Sender: TObject);
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