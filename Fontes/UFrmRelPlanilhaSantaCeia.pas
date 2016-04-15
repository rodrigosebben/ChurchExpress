unit UFrmRelPlanilhaSantaCeia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, frxClass, frxDBSet, Data.DB,
  MemDS, DBAccess, MyAccess, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormRelPlanilhaSantaCeia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    CBXMesInicial: TComboBox;
    CbxMesFinal: TComboBox;
    QryTemp: TMyQuery;
    QryRel: TMyQuery;
    DSRel: TDataSource;
    frxRpt: TfrxReport;
    frxDBSantaCeia: TfrxDBDataset;
    Label1: TLabel;
    EdtAno: TEdit;
    QryRelCodMembro: TLargeintField;
    QryRelNomeMembro: TStringField;
    QryRelCodFamilia: TLargeintField;
    QryRelSobrenome: TStringField;
    QryRelcodmembroantigo: TLargeintField;
    QryRelFamiliaCampo: TStringField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPlanilhaSantaCeia: TFormRelPlanilhaSantaCeia;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormRelPlanilhaSantaCeia.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormRelPlanilhaSantaCeia.BtnSalvarClick(Sender: TObject);
Var
  where:boolean;
begin

  if EdtAno.Text = '' then
  Begin
    ShowMessage('O Ano deve ser informado!');
    EdtAno.SetFocus;
  End
  Else
  Begin
    QryRel.Close;
    QryRel.Open;

    frxRpt.Variables.Clear;
    frxRpt.Variables[' ' + 'Geral'] := Null;
    frxRpt.Variables.AddVariable('Geral','MesInicial',QuotedStr(CBXMesInicial.Text));
    frxRpt.Variables.AddVariable('Geral','MesFinal',QuotedStr(CbxMesFinal.Text));
    frxRpt.Variables.AddVariable('Geral','Ano',QuotedStr(EdtAno.Text));
    frxRpt.ShowReport;
  End;

end;

procedure TFormRelPlanilhaSantaCeia.FormShow(Sender: TObject);
Var
  MesAtual: integer;
  AnoAtual: String;
begin

  MesAtual := StrToInt(FormatDateTime('mm',now));
  AnoAtual := FormatDateTime('yyyy',now);

  case MesAtual of
    1:Begin
        CBXMesInicial.ItemIndex := 0;
        CbxMesFinal.ItemIndex := 1;
      End;
    2:Begin
        CBXMesInicial.ItemIndex := 1;
        CbxMesFinal.ItemIndex := 2;
      End;
    3:Begin
        CBXMesInicial.ItemIndex := 2;
        CbxMesFinal.ItemIndex := 3;
      End;
    4:Begin
        CBXMesInicial.ItemIndex := 3;
        CbxMesFinal.ItemIndex := 4;
      End;
    5:Begin
        CBXMesInicial.ItemIndex := 4;
        CbxMesFinal.ItemIndex := 5;
      End;
    6:Begin
        CBXMesInicial.ItemIndex := 5;
        CbxMesFinal.ItemIndex := 6;
      End;
    7:Begin
        CBXMesInicial.ItemIndex := 6;
        CbxMesFinal.ItemIndex := 7;
      End;
    8:Begin
        CBXMesInicial.ItemIndex := 7;
        CbxMesFinal.ItemIndex := 8;
      End;
    9:Begin
        CBXMesInicial.ItemIndex := 8;
        CbxMesFinal.ItemIndex := 9;
      End;
    10:Begin
        CBXMesInicial.ItemIndex := 9;
        CbxMesFinal.ItemIndex := 10;
      End;
    11:Begin
        CBXMesInicial.ItemIndex := 10;
        CbxMesFinal.ItemIndex := 11;
      End;
    12:Begin
        CBXMesInicial.ItemIndex := 11;
        CbxMesFinal.ItemIndex := 0;
      End;
  end;
  EdtAno.Text := AnoAtual;
  CBXMesInicial.Setfocus;

end;

end.
