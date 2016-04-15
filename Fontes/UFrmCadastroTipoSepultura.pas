unit UFrmCadastroTipoSepultura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroTipoSepultura = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryTipoSepultura: TMyQuery;
    DSTipoSepultura: TDataSource;
    Label1: TLabel;
    DBEdtNomeTipoSepultura: TDBEdit;
    QryTipoSepulturaCodTipoSepultura: TLargeintField;
    QryTipoSepulturaNomeTipoSepultura: TStringField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoSepultura: TFormCadastroTipoSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroTipoSepultura.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtNomeTipoSepultura.Text='' then
  Begin
    ShowMessage('O Campo Tipo de Sepultura é obrigatório!');
    DBEdtNomeTipoSepultura.SetFocus;
  End
  Else
  Begin
    QryTipoSepultura.Post;
    QryTipoSepultura.Close;
    QryTipoSepultura.Open;
    Close;
  End;

end;

procedure TFormCadastroTipoSepultura.FormShow(Sender: TObject);
begin

  DBEdtNomeTipoSepultura.SetFocus;

end;

procedure TFormCadastroTipoSepultura.BtnCancelarClick(Sender: TObject);
begin

  QryTipoSepultura.Cancel;
  Close;

end;

end.
