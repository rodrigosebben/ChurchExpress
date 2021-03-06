unit UFrmCadastroMembroDataEspec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxTextEdit, cxDBEdit, RxToolEdit, RxDBCtrl,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFormCadastroMembroDataEspec = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryLkpDataEspec: TMyQuery;
    DSLkpDataEspec: TDataSource;
    Label1: TLabel;
    QryLkpDataEspecCodDataEsp: TLargeintField;
    QryLkpDataEspecDescDataEsp: TStringField;
    DBLkpCbxDataEspecial: TDBLookupComboBox;
    Label2: TLabel;
    DBEdtUF: TcxDBTextEdit;
    Label3: TLabel;
    DBEdtCidade: TcxDBTextEdit;
    Label4: TLabel;
    DBEdtIgreja: TcxDBTextEdit;
    Label5: TLabel;
    DBEdtOficiante: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdtTestemunha1: TcxDBTextEdit;
    Label8: TLabel;
    DBedtTestemunha2: TcxDBTextEdit;
    Label9: TLabel;
    DBEdtTestemunha3: TcxDBTextEdit;
    Label10: TLabel;
    DBEdtTestemunha4: TcxDBTextEdit;
    Label11: TLabel;
    DBEdtTestemunha5: TcxDBTextEdit;
    Label12: TLabel;
    DBEdtTestemunha6: TcxDBTextEdit;
    Label13: TLabel;
    DBEdtTestemunha7: TcxDBTextEdit;
    Label14: TLabel;
    DBEdtTestemunha8: TcxDBTextEdit;
    Label15: TLabel;
    DBEdtTestemunha9: TcxDBTextEdit;
    DBDtEdtData: TcxDBDateEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMembroDataEspec: TFormCadastroMembroDataEspec;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroMembro;

procedure TFormCadastroMembroDataEspec.BtnSalvarClick(Sender: TObject);
begin


  if DBLkpCbxDataEspecial.Text='' then
  Begin
    ShowMessage('O Campo Evento Especial � obrigat�rio!');
    DBLkpCbxDataEspecial.SetFocus;
  End
  Else
  Begin
    FormCadastroMembro.QryDataEspecialCodMembro.Value := FormCadastroMembro.QryMembrosCodMembro.Value;
    FormCadastroMembro.QryDataEspecialCodFamilia.Value := FormCadastroMembro.QryMembrosCodFamilia.Value;
    FormCadastroMembro.QryDataEspecialCodMembroAntigo.Value := FormCadastroMembro.QryMembrosCodMembroAntigo.Value;
    FormCadastroMembro.QryDataEspecial.Post;
    FormCadastroMembro.QryDataEspecial.Close;
    FormCadastroMembro.QryDataEspecial.Open;
    Close;
  End;

end;

procedure TFormCadastroMembroDataEspec.FormShow(Sender: TObject);
begin

  QryLkpDataEspec.Close;
  QryLkpDataEspec.Open;
  DBLkpCbxDataEspecial.SetFocus;

end;

procedure TFormCadastroMembroDataEspec.BtnCancelarClick(Sender: TObject);
begin

  FormCadastroMembro.QryDataEspecial.Cancel;
  QryLkpDataEspec.Close;
  Close;

end;

end.
