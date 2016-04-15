unit UFrmCadastroTaxasSepultamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroTaxasSepultamento = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    QryTipoTaxaSepultura: TMyQuery;
    QryTipoTaxaSepulturaCodTipoTaxaSepultura: TLargeintField;
    QryTipoTaxaSepulturaNomeTipoTaxaSepultura: TStringField;
    QryTipoTaxaSepulturaValor: TFloatField;
    Panel1: TPanel;
    DSTipoTaxaSepultura: TDataSource;
    Label1: TLabel;
    DBEdtNomeTipoTaxaSepultura: TDBEdit;
    Label2: TLabel;
    DBEdtValor: TDBEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTaxasSepultamento: TFormCadastroTaxasSepultamento;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroTaxasSepultamento.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtNomeTipoTaxaSepultura.Text='' then
  Begin
    ShowMessage('O Campo Descrição é obrigatório!');
    DBEdtNomeTipoTaxaSepultura.SetFocus;
  End
  Else
  Begin
    if DBEdtValor.Text='' then
    Begin
      ShowMessage('O Campo Valor é obrigatório!');
      DBEdtValor.SetFocus;
    End
    Else
    Begin
      QryTipoTaxaSepultura.Post;
      QryTipoTaxaSepultura.Close;
      QryTipoTaxaSepultura.Open;
      Close;
    End;
  End;

end;

procedure TFormCadastroTaxasSepultamento.FormShow(Sender: TObject);
begin

  DBEdtNomeTipoTaxaSepultura.SetFocus;

end;

procedure TFormCadastroTaxasSepultamento.BtnCancelarClick(Sender: TObject);
begin

  QryTipoTaxaSepultura.Cancel;
  Close;

end;

end.
