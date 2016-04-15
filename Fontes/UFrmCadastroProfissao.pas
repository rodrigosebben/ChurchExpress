unit UFrmCadastroProfissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroProfissao = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryProfissao: TMyQuery;
    QryProfissaoCodProfissao: TLargeintField;
    QryProfissaoNomeProfissao: TStringField;
    DSProfissao: TDataSource;
    Label1: TLabel;
    DBEdtProfissao: TDBEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProfissao: TFormCadastroProfissao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmConsultaProfissao, UDMPrincipal;

procedure TFormCadastroProfissao.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtProfissao.Text='' then
  Begin
    ShowMessage('O Campo Profissão é obrigatório!');
    DBEdtProfissao.SetFocus;
  End
  Else
  Begin
    QryProfissao.Post;
    Close;
  End;

end;

procedure TFormCadastroProfissao.FormShow(Sender: TObject);
begin

  DBEdtProfissao.SetFocus;

end;

procedure TFormCadastroProfissao.BtnCancelarClick(Sender: TObject);
begin

  QryProfissao.Cancel;
  Close;

end;

end.
