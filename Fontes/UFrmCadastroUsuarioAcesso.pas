unit UFrmCadastroUsuarioAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroUsuarioAcesso = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    LkpUsuario: TDBLookupComboBox;
    LkpModulo: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    CbxTipoAcesso: TDBComboBox;
    QryLkpUsuario: TMyQuery;
    QryLkpUsuarioCodUsuario: TLargeintField;
    QryLkpUsuarioNomeUsuario: TStringField;
    QryLkpUsuarioSenha: TStringField;
    QryLkpUsuarioAtivo: TBooleanField;
    QryLkpUsuarioPastor: TBooleanField;
    DSLkpUsuario: TDataSource;
    QryLkpModulo: TMyQuery;
    DSLkModulo: TDataSource;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuarioAcesso: TFormCadastroUsuarioAcesso;

implementation

{$R *.dfm}

uses UFrmPrincipal , UFrmConsultaUsuarioAcesso, UDMPrincipal;

procedure TFormCadastroUsuarioAcesso.BtnSalvarClick(Sender: TObject);
begin

  if LkpUsuario.Text='' then
  Begin
    ShowMessage('O Campo Usuário é obrigatório!');
    LkpUsuario.SetFocus;
  End
  Else
  Begin
    if LkpModulo.Text='' then
    Begin
      ShowMessage('O Campo Módulo é obrigatório!');
      LkpModulo.SetFocus;
    End
    Else
    Begin
      if CbxTipoAcesso.Text='' then
      Begin
        ShowMessage('O Campo Tipo de Acesso é obrigatório!');
        CbxTipoAcesso.SetFocus;
      End
      Else
      Begin
        FormConsultaUsuarioAcesso.QryUsuarioAcesso.Post;
        FormConsultaUsuarioAcesso.QryUsuarioAcesso.Close;
        FormConsultaUsuarioAcesso.QryUsuarioAcesso.Open;
        Close;
      End;
    End;
  End;

end;

procedure TFormCadastroUsuarioAcesso.FormShow(Sender: TObject);
begin

  QryLkpUsuario.Close;
  QryLkpUsuario.Open;
  QryLkpModulo.Close;
  QryLkpModulo.Open;
  LkpUsuario.SetFocus;

end;

procedure TFormCadastroUsuarioAcesso.BtnCancelarClick(Sender: TObject);
begin

  FormConsultaUsuarioAcesso.QryUsuarioAcesso.Cancel;
  Close;

end;

end.
