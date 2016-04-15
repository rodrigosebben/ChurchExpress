unit UFrmCadastroDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroDepartamento = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryDepartamento: TMyQuery;
    DSDepartamento: TDataSource;
    QryDepartamentoCodDepto: TLargeintField;
    QryDepartamentoDescDepto: TStringField;
    Label1: TLabel;
    DBEdtDepartamento: TDBEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDepartamento: TFormCadastroDepartamento;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroDepartamento.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtDepartamento.Text='' then
  Begin
    ShowMessage('O Campo Departamento é obrigatório!');
    DBEdtDepartamento.SetFocus;
  End
  Else
  Begin
    QryDepartamento.Post;
    QryDepartamento.Close;
    QryDepartamento.Open;
    Close;
  End;

end;

procedure TFormCadastroDepartamento.FormShow(Sender: TObject);
begin

  DBEdtDepartamento.SetFocus;

end;

procedure TFormCadastroDepartamento.BtnCancelarClick(Sender: TObject);
begin

  QryDepartamento.Cancel;
  Close;

end;

end.
