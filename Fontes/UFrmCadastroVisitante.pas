unit UFrmCadastroVisitante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, RxToolEdit, RxDBCtrl, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroVisitante = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryVisitante: TMyQuery;
    QryVisitanteCodVisitante: TIntegerField;
    QryVisitanteNomeVisitante: TStringField;
    QryVisitanteRua: TStringField;
    QryVisitantenumero: TIntegerField;
    QryVisitanteCompl: TStringField;
    QryVisitanteBairro: TStringField;
    QryVisitanteCepMunicipio: TStringField;
    QryVisitanteSexo: TStringField;
    QryVisitanteDataNasc: TDateField;
    QryVisitanteDDD: TStringField;
    QryVisitanteTelefone: TStringField;
    QryVisitanteDDDCel: TStringField;
    QryVisitanteCelular: TStringField;
    QryVisitanteEmail: TStringField;
    QryVisitanteMotivo: TMemoField;
    QryVisitanteDataVisita: TDateField;
    DSVisitante: TDataSource;
    Label1: TLabel;
    DBEdtVisitante: TDBEdit;
    Label2: TLabel;
    DBEdtEndereco: TDBEdit;
    Label3: TLabel;
    DBEdtNumero: TDBEdit;
    Label4: TLabel;
    DBEdtComplemento: TDBEdit;
    Label5: TLabel;
    DBEdtBairro: TDBEdit;
    Label6: TLabel;
    DBEdtCep: TDBEdit;
    Label7: TLabel;
    DBEdtSexo: TDBEdit;
    Label8: TLabel;
    DBdtEdtDataNasc: TDBDateEdit;
    Label9: TLabel;
    DBEdtDDDTelefone: TDBEdit;
    Label10: TLabel;
    DBEdtTelefone: TDBEdit;
    Label11: TLabel;
    DBEdtDDDCelular: TDBEdit;
    Label12: TLabel;
    DBEdtCelular: TDBEdit;
    Label13: TLabel;
    DBEdtEmail: TDBEdit;
    Label15: TLabel;
    DBDtEdtDataVisita: TDBDateEdit;
    Label14: TLabel;
    DBMemoMotivo: TDBMemo;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVisitante: TFormCadastroVisitante;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrmConsultaVisitante, UDMPrincipal;

procedure TFormCadastroVisitante.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtVisitante.Text='' then
  Begin
    ShowMessage('O Campo Visitante é obrigatório!');
    DBEdtVisitante.SetFocus;
  End
  Else
  Begin
    QryVisitante.Post;
    QryVisitante.Close;
    QryVisitante.Open;
    Close;
  End;

end;

procedure TFormCadastroVisitante.FormShow(Sender: TObject);
begin

  DBEdtVisitante.SetFocus;

end;

procedure TFormCadastroVisitante.BtnCancelarClick(Sender: TObject);
begin

  QryVisitante.Cancel;
  Close;

end;

end.
