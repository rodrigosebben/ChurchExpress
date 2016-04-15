unit UFrmCadastroTipoContribuicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroTipoContribuicao = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryTipoContribuicao: TMyQuery;
    DSTipoContribuicao: TDataSource;
    QryTipoContribuicaoCodTpContrb: TIntegerField;
    QryTipoContribuicaoDescTPContrb: TStringField;
    QryTipoContribuicaoColetiva: TBooleanField;
    Label1: TLabel;
    DBEdtTipoContribuicao: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoContribuicao: TFormCadastroTipoContribuicao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroTipoContribuicao.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtTipoContribuicao.Text='' then
  Begin
    ShowMessage('O Campo Tipo de Contribuição é obrigatório!');
    DBEdtTipoContribuicao.SetFocus;
  End
  Else
  Begin
    QryTipoContribuicao.Post;
    QryTipoContribuicao.Close;
    QryTipoContribuicao.Open;
    Close;
  End;

end;

procedure TFormCadastroTipoContribuicao.FormShow(Sender: TObject);
begin

  DBEdtTipoContribuicao.SetFocus;

end;

procedure TFormCadastroTipoContribuicao.BtnCancelarClick(Sender: TObject);
begin

  QryTipoContribuicao.Cancel;
  Close;

end;

end.
