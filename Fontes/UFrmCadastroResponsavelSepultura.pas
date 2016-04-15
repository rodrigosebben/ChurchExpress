unit UFrmCadastroResponsavelSepultura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFormCadastroResponsavelSepultura = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryResponsavelSepultura: TMyQuery;
    DSResponsavelSepultura: TDataSource;
    QryResponsavelSepulturaCodResponsavelSepultura: TLargeintField;
    QryResponsavelSepulturaNomeResponsavelSepultura: TStringField;
    QryResponsavelSepulturaEndereco: TStringField;
    QryResponsavelSepulturaCompl: TStringField;
    QryResponsavelSepulturaBairro: TStringField;
    QryResponsavelSepulturaCidade: TStringField;
    QryResponsavelSepulturaTelefone: TStringField;
    QryResponsavelSepulturaCelular: TStringField;
    QryResponsavelSepulturaEmail: TStringField;
    Label1: TLabel;
    DBEdtNomeResponsavelSepultura: TDBEdit;
    Label2: TLabel;
    DBEdtEndereco: TDBEdit;
    Label4: TLabel;
    DBEdtCompl: TDBEdit;
    Label5: TLabel;
    DBEdtBairro: TDBEdit;
    Label6: TLabel;
    DBEdtCidade: TDBEdit;
    Label7: TLabel;
    DBEdtTelefone: TDBEdit;
    Label8: TLabel;
    DBEdtCelular: TDBEdit;
    Label9: TLabel;
    DBEdtEmail: TDBEdit;
    Panel4: TPanel;
    RdGrpMembroCongregacao: TRadioGroup;
    DBLkpCmbBxMembros: TDBLookupComboBox;
    BtBtnCarregar: TBitBtn;
    Label3: TLabel;
    MyQryLkpMembros: TMyQuery;
    DSLkpMembros: TDataSource;
    MyQryLkpMembrosnomeMembro: TStringField;
    MyQryLkpMembrosEndereco: TStringField;
    MyQryLkpMembrosCompl: TStringField;
    MyQryLkpMembrosBairro: TStringField;
    MyQryLkpMembrosCidade: TStringField;
    MyQryLkpMembrosTelefone: TStringField;
    MyQryLkpMembrosCelular: TStringField;
    MyQryLkpMembrosEmail: TStringField;
    QryResponsavelSepulturaCodMembro: TLargeintField;
    MyQryLkpMembroscodmembro: TLargeintField;
    QryResponsavelSepulturacep: TStringField;
    Label10: TLabel;
    DBEdtCep: TDBEdit;
    MyQryLkpMembrosCEP: TStringField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtBtnCarregarClick(Sender: TObject);
    procedure RdGrpMembroCongregacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroResponsavelSepultura: TFormCadastroResponsavelSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroResponsavelSepultura.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtNomeResponsavelSepultura.Text='' then
  Begin
    ShowMessage('O Campo Nome é obrigatório!');
    DBEdtNomeResponsavelSepultura.SetFocus;
  End
  Else
  Begin
    if DBEdtEndereco.Text='' then
    Begin
      ShowMessage('O Campo Endereço é obrigatório!');
      DBEdtEndereco.SetFocus;
    End
    Else
    Begin
      if DBEdtCompl.Text='' then
      Begin
        ShowMessage('O Campo Complemento é obrigatório!');
        DBEdtCompl.SetFocus;
      End
      Else
      Begin
        if DBEdtTelefone.Text='' then
        Begin
          ShowMessage('O Campo Telefone é obrigatório!');
          DBEdtTelefone.SetFocus;
        End
        Else
        Begin
          QryResponsavelSepultura.Post;
          QryResponsavelSepultura.Close;
          QryResponsavelSepultura.Open;
          Close;
        End;
      End;
    End;
  End;

end;

procedure TFormCadastroResponsavelSepultura.FormShow(Sender: TObject);
begin

  if QryResponsavelSepultura.State=dsEdit then
  Begin
    if QryResponsavelSepulturaCodMembro.Value<>0 then
    Begin
      RdGrpMembroCongregacao.ItemIndex :=0;
      RdGrpMembroCongregacaoClick(self);
    End
    Else
    Begin
      RdGrpMembroCongregacao.ItemIndex :=1;
      RdGrpMembroCongregacaoClick(self);
    End;
  End;

end;

procedure TFormCadastroResponsavelSepultura.RdGrpMembroCongregacaoClick(Sender: TObject);
begin

  if RdGrpMembroCongregacao.ItemIndex=0 then
  Begin
    DBLkpCmbBxMembros.Enabled := True;
    BtBtnCarregar.Enabled := True;
    DBLkpCmbBxMembros.SetFocus;
  End
  Else
  Begin
    DBLkpCmbBxMembros.Enabled := False;
    BtBtnCarregar.Enabled := False;
    DBEdtNomeResponsavelSepultura.SetFocus;
  End;

end;

procedure TFormCadastroResponsavelSepultura.BtBtnCarregarClick(Sender: TObject);
begin

  DBEdtNomeResponsavelSepultura.Text := MyQryLkpMembrosnomeMembro.AsString;
  DBEdtEndereco.Text := MyQryLkpMembrosEndereco.AsString;
  DBEdtCompl.Text := MyQryLkpMembrosCompl.AsString;
  DBEdtBairro.Text := MyQryLkpMembrosBairro.AsString;
  DBEdtCidade.Text := MyQryLkpMembrosCidade.AsString;
  DBEdtTelefone.Text := MyQryLkpMembrosTelefone.AsString;
  DBEdtCelular.Text := MyQryLkpMembrosCelular.AsString;
  DBEdtEmail.Text := MyQryLkpMembrosEmail.AsString;
  DBEdtCep.Text := MyQryLkpMembrosCEP.AsString;
  BtnSalvar.SetFocus;

end;

procedure TFormCadastroResponsavelSepultura.BtnCancelarClick(Sender: TObject);
begin

  QryResponsavelSepultura.Cancel;
  Close;

end;

end.
