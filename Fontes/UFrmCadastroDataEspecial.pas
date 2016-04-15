unit UFrmCadastroDataEspecial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroDataEspecial = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryDataEspecial: TMyQuery;
    DSDataEspecial: TDataSource;
    QryDataEspecialCodDataEsp: TLargeintField;
    QryDataEspecialDescDataEsp: TStringField;
    Label1: TLabel;
    DBEdtDescDataesp: TDBEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDataEspecial: TFormCadastroDataEspecial;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroDataEspecial.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtDescDataesp.Text='' then
  Begin
    ShowMessage('O Campo Descrição é obrigatório!');
    DBEdtDescDataesp.SetFocus;
  End
  Else
  Begin
    QryDataEspecial.Post;
    QryDataEspecial.Close;
    QryDataEspecial.Open;
    Close;
  End;

end;

procedure TFormCadastroDataEspecial.FormShow(Sender: TObject);
begin

  DBEdtDescDataesp.SetFocus;

end;

procedure TFormCadastroDataEspecial.BtnCancelarClick(Sender: TObject);
begin

  QryDataEspecial.Cancel;
  Close;

end;

end.
