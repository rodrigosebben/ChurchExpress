unit UFrmCadastroMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit;

type
  TFormCadastroMensagem = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryMensagem: TMyQuery;
    DSMensagem: TDataSource;
    QryMensagemCodMensagem: TLargeintField;
    QryMensagemCompl: TStringField;
    Label2: TLabel;
    DBMmDescMensagem: TDBMemo;
    Label1: TLabel;
    DBEdtComplemento: TDBEdit;
    QryMensagemMes: TStringField;
    QryMensagemAno: TLargeintField;
    Label3: TLabel;
    Label4: TLabel;
    DBSpinAno: TcxDBSpinEdit;
    DBCbxMes: TDBComboBox;
    QryMensagemDescMensagem: TStringField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMensagem: TFormCadastroMensagem;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroMensagem.BtnSalvarClick(Sender: TObject);
begin


  if DBMmDescMensagem.Text='' then
  Begin
    ShowMessage('O Campo descrição é obrigatório!');
    DBMmDescMensagem.SetFocus;
  End
  Else
  Begin
    QryMensagem.Post;
    QryMensagem.Close;
    QryMensagem.Open;
    Close;
  End;

end;

procedure TFormCadastroMensagem.FormShow(Sender: TObject);
begin

  DBMmDescMensagem.SetFocus;
  if QryMensagem.State=dsInsert then
    DBSpinAno.Text := '2013';

end;

procedure TFormCadastroMensagem.BtnCancelarClick(Sender: TObject);
begin

  QryMensagem.Cancel;
  Close;

end;

end.
