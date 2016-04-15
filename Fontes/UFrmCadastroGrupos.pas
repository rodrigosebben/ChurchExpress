unit UFrmCadastroGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroGrupos = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryGrupos: TMyQuery;
    QryGruposCodGrupo: TLargeintField;
    QryGruposNomeGrupo: TStringField;
    QryGruposDescricao: TMemoField;
    DSGrupos: TDataSource;
    Label1: TLabel;
    DBEdtGrupo: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroGrupos: TFormCadastroGrupos;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmConsultaGrupos, UDMPrincipal; // UFrmConsultaXXX;

procedure TFormCadastroGrupos.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtGrupo.Text='' then
  Begin
    ShowMessage('O Campo Grupo é obrigatório!');
    DBEdtGrupo.SetFocus;
  End
  Else
  Begin
    QryGrupos.Post;
    QryGrupos.Close;
    QryGrupos.Open;
    Close;
  End;

end;

procedure TFormCadastroGrupos.FormShow(Sender: TObject);
begin

  DBEdtGrupo.SetFocus;

end;

procedure TFormCadastroGrupos.BtnCancelarClick(Sender: TObject);
begin

  QryGrupos.Cancel;
  Close;

end;

end.
