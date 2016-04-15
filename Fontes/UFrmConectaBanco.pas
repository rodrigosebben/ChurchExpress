unit UFrmConectaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormConectaBanco = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    LblServidor: TLabeledEdit;
    LblUsuario: TLabeledEdit;
    LblSenha: TLabeledEdit;
    LblPorta: TLabeledEdit;
    BtnConectar: TBitBtn;
    BtnSair: TBitBtn;
    lblConectando: TLabel;
    procedure BtnConectarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConectaBanco: TFormConectaBanco;

implementation

uses UFuncoes, UFrmLogon;

{$R *.dfm}

procedure TFormConectaBanco.BtnConectarClick(Sender: TObject);
begin

  lblConectando.Visible := True;
  Try
    ConectaBanco(LblServidor.Text,LblUsuario.Text,LblSenha.Text,LblPorta.Text);
    ShowMessage('Conexão Aceita!');
    lblConectando.Visible := False;
    Close;
    FormLogon.EdtUsuario.SetFocus;
  Except
    ShowMessage('Conexão inválida! O local do Banco de dados não é aceito nesse computador.');
    lblConectando.Visible := False;
    LblServidor.Clear;
    LblUsuario.Clear;
    LblSenha.Clear;
    LblPorta.Clear;
    LblServidor.SetFocus;
  End;

end;

procedure TFormConectaBanco.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConectaBanco.FormShow(Sender: TObject);
begin

  LblServidor.Clear;
  LblUsuario.Clear;
  LblSenha.Clear;
  //LblPorta.Clear;
  LblServidor.SetFocus;

end;

end.
