unit UFrmCadastroSepulturaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxToolEdit, RxDBCtrl, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess,
  MyAccess;

type
  TFormCadastroSepulturaPagamento = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdtFalecido: TDBEdit;
    DBEdtIdade: TDBEdit;
    DBEdtCertidaoObito: TDBEdit;
    DBEdtNumeroRecibo: TDBEdit;
    DBDtEdtDataFalecimento: TDBDateEdit;
    DBDtEdtDataPagamento: TDBDateEdit;
    DBDtEdtDataVencimento: TDBDateEdit;
    QryFalecidos: TMyQuery;
    DSFalecidos: TDataSource;
    QryFalecidosCodFalecidoSepultura: TLargeintField;
    QryFalecidosNomeFalecido: TStringField;
    QryFalecidosidade: TLargeintField;
    QryFalecidosDataFalecimento: TDateTimeField;
    QryFalecidosCertidaoObito: TStringField;
    QryFalecidosCodSepultura: TLargeintField;
    QryFalecidosDataPagamento: TDateTimeField;
    QryFalecidosNumeroRecibo: TStringField;
    QryFalecidosDataVencimento: TDateTimeField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSepulturaPagamento: TFormCadastroSepulturaPagamento;

implementation

{$R *.dfm}

procedure TFormCadastroSepulturaPagamento.BtnCancelarClick(Sender: TObject);
begin

  QryFalecidos.Cancel;
  Close;

end;

procedure TFormCadastroSepulturaPagamento.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtFalecido.Text='' then
  Begin
    ShowMessage('O Campo do nome do falecido � obrigat�rio!');
    DBEdtFalecido.SetFocus;
  End
  Else
  Begin
    QryFalecidosCodSepultura.Value := QryFalecidos.ParamByName('pCodSepultura').Value;
    QryFalecidos.Post;
    QryFalecidos.Close;
    QryFalecidos.Open;
    Close;
  End;

end;

procedure TFormCadastroSepulturaPagamento.FormShow(Sender: TObject);
begin

  DBEdtFalecido.SetFocus;

end;

end.
