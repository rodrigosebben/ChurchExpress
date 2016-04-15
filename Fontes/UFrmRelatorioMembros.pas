unit UFrmRelatorioMembros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, MyAccess, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSeven, dxSkinSevenClassic, dxSkinStardust, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDropDownEdit, cxCalendar, cxFilterControl, cxDBFilterControl,
  cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxLocalization, frxExportRTF, frxExportPDF, frxExportHTML, frxExportCSV, frxExportText, frxExportImage;

type
  TFormRelatorioMembros = class(TForm)
    Panel2: TPanel;
    MyQryRelMembros1: TMyQuery;
    DSRelMembros1: TDataSource;
    frxRptRelMembrosCompleto: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    MyQryRelMembros1NomeMembro: TStringField;
    MyQryRelMembros1Sexo: TStringField;
    MyQryRelMembros1RG: TStringField;
    MyQryRelMembros1CPF: TStringField;
    MyQryRelMembros1DataCadastro: TDateTimeField;
    MyQryRelMembros1Email: TStringField;
    MyQryRelMembros1TipoSangue: TStringField;
    MyQryRelMembros1Endereco: TStringField;
    MyQryRelMembros1Compl: TStringField;
    MyQryRelMembros1Cidade: TStringField;
    MyQryRelMembros1Bairro: TStringField;
    MyQryRelMembros1CEP: TStringField;
    MyQryRelMembros1UF: TStringField;
    MyQryRelMembros1Celular: TStringField;
    MyQryRelMembros1Telefone: TStringField;
    MyQryRelMembros1DataNasc: TDateField;
    MyQryRelMembros1Naturalidade: TStringField;
    MyQryRelMembros1EstadoCivil: TStringField;
    MyQryRelMembros1Profissao: TStringField;
    MyQryRelMembros1Empresa: TStringField;
    MyQryRelMembros1Renda: TFloatField;
    MyQryRelMembros1DataConfirmacao: TDateField;
    MyQryRelMembros1DataBatismo: TDateField;
    MyQryRelMembros1DataAtivo: TDateTimeField;
    MyQryRelMembros1Envelope: TLargeintField;
    MyQryRelMembros1DataAdmisComunidade: TDateTimeField;
    MyQryRelMembros1ProcedenciaAdmissao: TStringField;
    MyQryRelMembros1DataSaida: TDateField;
    MyQryRelMembros1MotivoSaida: TStringField;
    MyQryRelMembros1DestinoSaida: TStringField;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    ToolBar2: TToolBar;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    LstBxFiltros: TListBox;
    Panel6: TPanel;
    Label1: TLabel;
    CbxNomeCampo: TComboBox;
    Label2: TLabel;
    cBXFiltro: TComboBox;
    Label3: TLabel;
    EdtValor1: TEdit;
    Label4: TLabel;
    EdtValor2: TEdit;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    CbxOrdena��o: TComboBox;
    CbxOrdem: TComboBox;
    Panel7: TPanel;
    Label5: TLabel;
    CbxModeloRelatorio: TComboBox;
    frxRptRelacaoMembrosSintetico: TfrxReport;
    frxRPTEtiquetaFAI: TfrxReport;
    MyQryRelMembros1CodMembro: TLargeintField;
    MyQryRelMembros1NomeFormaAdmissao: TStringField;
    MyQryRelMembros1Idade: TFloatField;
    MyQryRelMembros1NomeEscolaridade: TStringField;
    frxJPEGExport1: TfrxJPEGExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    MyQryRelMembros1codfamilia: TLargeintField;
    MyQryRelMembros1codmembroantigo: TLargeintField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cBXFiltroSelect(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbxNomeCampoSelect(Sender: TObject);
  private
    { Private declarations }
  public
    Function ConverteFiltro(valor:integer):String;
    { Public declarations }
  end;

var
  FormRelatorioMembros: TFormRelatorioMembros;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormRelatorioMembros.BitBtn1Click(Sender: TObject);
begin

  if MyQryRelMembros1.RecordCount=0 then
  Begin
    Showmessage('Nenhum registro encontrado para impress�o. Verifique se o filtro foi aplicado corretamente:');
    CbxNomeCampo.SetFocus;
  End
  Else
  Begin
    case CbxModeloRelatorio.ItemIndex of
      0: frxRptRelacaoMembrosSintetico.ShowReport;
      1: frxRptRelMembrosCompleto.ShowReport;
      2: frxRPTEtiquetaFAI.ShowReport;
    end;
  End;

end;

procedure TFormRelatorioMembros.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRelatorioMembros.BitBtn5Click(Sender: TObject);
begin

  if ((cBXFiltro.ItemIndex<>10) and (cBXFiltro.ItemIndex<>11)) and (EdtValor1.Text='') then
  Begin
    ShowMessage('Informe o valor para acrescentar no filtro');
    EdtValor1.SetFocus;
  End
  Else
  Begin
    if ((cBXFiltro.ItemIndex=8) or (cBXFiltro.ItemIndex=9)) and((EdtValor1.Text='') or (EdtValor2.Text='')) then
    Begin
      ShowMessage('Informe os dois valores do intervalor para acrescentar no filtro');
      if EdtValor1.Text='' then
        EdtValor1.SetFocus
      else
      Begin
        if EdtValor2.Text='' then
          EdtValor2.SetFocus
      End;
    End
    Else
    Begin
      {   FILTROS
          0 - IGUAL
          1 - DIFERENTE
          2 - CONTENDO
          3 - N�O CONTENDO
          4 - QUE INICIE COM
          5 - QUE N�O INICIE COM
          6 - QUE TERMINE COM
          7 - QUE N�O TERMINE COM
          8 - ENTRE O INTERVALO
          9 - N�O EST� ENTRE O INTERVALO
          10 - VAZIO
          11 - N�O � VAZIO
      }
      case CbxNomeCampo.ItemIndex  of
        0:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(0) + ' is not null ');
                End;
            end;
          End;
        1:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(1) + ' is not null ');
                End;
            end;
          End;
        2:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(2) + ' is not null ');
                End;
            end;
          End;
        3:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(3) + ' is not null ');
                End;
            end;
          End;
        4:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(4) + ' is not null ');
                End;
            end;
          End;
        5:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(5) + ' is not null ');
                End;
            end;
          End;
        6:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(6) + ' is not null ');
                End;
            end;
          End;
        7:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(7) + ' is not null ');
                End;
            end;
          End;
        8:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(8) + ' is not null ');
                End;
            end;
          End;
        9:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(9) + ' is not null ');
                End;
            end;
          End;
       10:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(10) + ' is not null ');
                End;
            end;
          End;
       11:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(11) + ' is not null ');
                End;
            end;
          End;
       12:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(12) + ' is not null ');
                End;
            end;
          End;
       13:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(13) + ' is not null ');
                End;
            end;
          End;
       14:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(14) + ' is not null ');
                End;
            end;
          End;
       15:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' = ' + QuotedStr(EdtValor1.Text));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' <> ' + QuotedStr(EdtValor1.Text));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' not like ' + QuotedStr('%' + EdtValor1.Text + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' not like ' + QuotedStr(EdtValor1.Text + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' not like ' + QuotedStr('%' + EdtValor1.Text));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + 'not between ' + QuotedStr(EdtValor1.Text) + ' and ' + QuotedStr(EdtValor2.Text));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(15) + ' is not null ');
                End;
            end;
          End;
       16:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(16) + ' is not null ');
                End;
            end;
          End;
       17:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(17) + ' is not null ');
                End;
            end;
          End;
       18:Begin
            case cBXFiltro.ItemIndex of
              0:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              1:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' <> ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              2:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              3:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              4:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              5:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' not like ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text)) + '%'));
                End;
              6:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              7:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' not like ' + QuotedStr('%' + FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))));
                End;
              8:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
              9:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + 'not between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor1.Text))) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',StrToDate(EdtValor2.Text))));
                End;
             10:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' is null ');
                End;
             11:Begin
                  LstBxFiltros.Items.Add(ConverteFiltro(18) + ' is not null ');
                End;
            end;
          End;
      end;
    End;
    EdtValor1.Clear;
    EdtValor2.Clear;
    CbxNomeCampo.ItemIndex := 0;
    cBXFiltro.ItemIndex := 0;
    cBXFiltroSelect(self);
  End;

end;


procedure TFormRelatorioMembros.BitBtn6Click(Sender: TObject);
begin

  LstBxFiltros.Items.Delete(LstBxFiltros.ItemIndex);

end;

procedure TFormRelatorioMembros.BitBtn7Click(Sender: TObject);
Var
  Items:integer;
begin

  MyQryRelMembros1.Close;
  MyQryRelMembros1.SQL.Clear;
  MyQryRelMembros1.SQL.Text := 'SELECT codmembro,NomeMembro,codfamilia, codmembroantigo, ' +
                               '       Sexo, '+
                               '       RG, ' +
                               '       CPF, ' +
                               '       DataCadastro, ' +
                               '       Email, ' +
                               '       TipoSangue, ' +
                               '       Endereco, ' +
                               '       Compl, ' +
                               '       Cidade, ' +
                               '       Bairro, ' +
                               '       CEP, ' +
                               '       UF, ' +
                               '       Celular, ' +
                               '       Telefone, ' +
                               '       DataNasc, ' +
                               '       Naturalidade, ' +
                               '       EC.NomeEstadoCivil as EstadoCivil, ' +
                               '       P.NomeProfissao as Profissao, ' +
                               '       Empresa, ' +
                               '       Renda, ' +
                               '       DataConfirmacao, ' +
                               '       DataBatismo, ' +
                               '       DataAtivo, ' +
                               '       Envelope, ' +
                               '       FA.NomeFormaAdmissao, ' +
                               '       DataAdmisComunidade, ' +
                               '       ProcedenciaAdmissao, ' +
                               '       DataSaida, ' +
                               '       MS.NomeMotivoSaida as MotivoSaida, ' +
                               '       DestinoSaida, ' +
                               '       ES.NomeEscolaridade, ' +
                               '       DataCadastro, ' +
                               '       DataBatismo, ' +
                               '       DataConfirmacao, ' +
                               '       DATE_FORMAT(NOW( ),' + QuotedStr('%Y') + ') - DATE_FORMAT(m.datanasc, ' + QuotedStr('%Y') + ') - (DATE_FORMAT(NOW( ),' + QuotedStr('00-%m-%d') + ') < DATE_FORMAT(m.datanasc,' + QuotedStr('00-%m-%d') + ')) AS Idade' +
                               '  FROM membros m left join EstadoCivil EC on m.codEstadoCivil = EC.CodEstadoCivil ' +
                               '                 left join Profissao P on m.codprofissao = p.codProfissao ' +
                               '                 left join MotivoSaida MS on m.codmotivosaida=MS.codmotivosaida ' +
                               '                 left join FormaAdmissao FA on m.codFormaAdmissao=FA.codformaadmissao' +
                               '                 left join Escolaridade ES on m.CodEscolaridade= ES.CodEscolaridade';
  items := 0;
  LstBxFiltros.ItemIndex := 0;
  while Items < LstBxFiltros.Items.Count  do
  Begin
    if LstBxFiltros.ItemIndex = 0 then
      MyQryRelMembros1.SQL.Add('Where ' + LstBxFiltros.Items.Strings[items])
    Else
      MyQryRelMembros1.SQL.Add('AND ' + LstBxFiltros.Items.Strings[items]);
    inc(items);
    LstBxFiltros.ItemIndex := items;
  End;

  MyQryRelMembros1.SQL.Add('Order by ' + ConverteFiltro(CbxOrdena��o.ItemIndex) + ' ' + CbxOrdem.Text);

  MyQryRelMembros1.Open;

  StatusBar1.Panels[0].Text := 'TOTAL DE REGISTROS: ' + IntToStr(MyQryRelMembros1.RecordCount);

end;

procedure TFormRelatorioMembros.BitBtn8Click(Sender: TObject);
begin

  LstBxFiltros.Clear;

end;

procedure TFormRelatorioMembros.cBXFiltroSelect(Sender: TObject);
begin

  if (cBXFiltro.ItemIndex=8) or (cBXFiltro.ItemIndex=9) then
  Begin
    EdtValor2.Visible := True;
    Label3.Visible := True;
    Label4.Visible := True;
  End
  Else
  Begin
    EdtValor2.Visible := False;
    Label3.Visible := False;
    Label4.Visible := False;
  End;

  if (cBXFiltro.ItemIndex=10) or (cBXFiltro.ItemIndex=11) then
  Begin
    Label3.Visible := False;
    EdtValor1.Visible := False;
  End
  Else
  Begin
    Label3.Visible := True;
    EdtValor1.Visible := True;
  End;

end;

procedure TFormRelatorioMembros.CbxNomeCampoSelect(Sender: TObject);
begin

  if ((CbxNomeCampo.ItemIndex = 3)
   or (CbxNomeCampo.ItemIndex = 8)
   or (CbxNomeCampo.ItemIndex = 12)
   or (CbxNomeCampo.ItemIndex = 16)
   or (CbxNomeCampo.ItemIndex = 17)
   or (CbxNomeCampo.ItemIndex = 18)) then
  Begin

  End;

end;

function TFormRelatorioMembros.ConverteFiltro(valor: integer): String;
begin

  case Valor of
    0: Result:= 'NomeMembro';
    1: Result:= 'Sexo';
    2: Result:= 'TipoSangue';
    3: Result:= 'DataNasc';
    4: Result:= 'Naturalidade';
    5: Result:= 'EC.NomeEstadoCivil';
    6: Result:= 'P.NomeProfissao';
    7: Result:= 'Renda';
    8: Result:= 'DataAdmisComunidade';
    9: Result:= 'NomeFormaAdmissao';
   10: Result:= 'ProcedenciaAdmissao';
   11: Result:= 'Envelope';
   12: Result:= 'DataSaida';
   13: Result:= 'MS.NomeMotivoSaida';
   14: Result:= 'ES.NomeEscolaridade';
   15: Result:= 'DestinoSaida';
   16: Result:= 'DataCadastro';
   17: Result:= 'DataBatismo';
   18: Result:= 'DataConfirmacao';
  end;

end;

procedure TFormRelatorioMembros.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  MyQryRelMembros1.Close;
  FreeAndNil(FormRelatorioMembros);

end;

end.
