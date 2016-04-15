unit UFrmCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroUsuario = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdtUsuario: TDBEdit;
    Label2: TLabel;
    DBEdtSenha: TDBEdit;
    DBCheckBoxAtivo: TDBCheckBox;
    DBCheckBoxPastor: TDBCheckBox;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

uses UFrmPrincipal, UfrmConsultaUsuario;

procedure TFormCadastroUsuario.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtUsuario.Text='' then
  Begin
    ShowMessage('O Campo Nome do Usuário é obrigatório!');
    DBEdtUsuario.SetFocus;
  End
  Else
  Begin
    if DBEdtSenha.Text='' then
    Begin
      ShowMessage('O Campo Senha do Usuário é obrigatório!');
      DBEdtUsuario.SetFocus;
    End
    Else
    Begin
      FormConsultaUsuario.QryUsuario.Post;
      Close;
    End;
  End;

end;

procedure TFormCadastroUsuario.FormShow(Sender: TObject);
begin

  DBEdtUsuario.SetFocus;

end;

procedure TFormCadastroUsuario.BtnCancelarClick(Sender: TObject);
begin

  FormConsultaUsuario.QryUsuario.Cancel;
  Close;

end;

end.
