unit UFrmConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit, Vcl.ExtCtrls;

type
  TFormConexao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    ComboEdit1: TComboEdit;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditServidor: TEdit;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    EditPorta: TEdit;
    BitBtn2: TBitBtn;
    LabelDont: TLabel;
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexao: TFormConexao;

implementation

{$R *.dfm}

uses UDM;

procedure TFormConexao.BitBtn1Click(Sender: TObject);
Var
  caminho:Widestring;
  dont:string;
begin

  caminho := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + ComboEdit1.Text;
  Caminho := Caminho + ';Mode=Share Deny None;';
  Caminho := Caminho + 'Jet OLEDB:System database=""';
  Caminho := Caminho + ';Jet OLEDB:Registry Path=""';
  Caminho := Caminho + ';Jet OLEDB:Database Password=""';
  Caminho := Caminho + ';Jet OLEDB:Engine Type=4;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=""';
  Caminho := Caminho + ';Jet OLEDB:Create System Database=False;';
  Caminho := Caminho + 'Jet OLEDB:Encrypt Database=False;'; //Jet OLEDB:' + dont + ' Copy Locale on Compact=False;';
  Caminho := Caminho + 'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

  Try
    DM.ADOConn.Connected := False;
    DM.ADOConn.ConnectionString := Caminho;
    DM.ADOConn.Connected := True;
    ShowMessage('Conectado!');
    EditServidor.SetFocus;
  Except
    ShowMessage('Ocorreu Erro ao tentar conectar!');
  end;

end;

procedure TFormConexao.BitBtn2Click(Sender: TObject);
begin

  dm.Conn.Connected := False;
  dm.Conn.Server := EditServidor.Text;
  dm.Conn.Username := EditUsuario.Text;
  dm.Conn.Password := EditSenha.Text;
  dm.Conn.Port := StrToInt(EditPorta.Text);

  Try
    dm.Conn.Connected :=  True;
    ShowMessage('Conectado!');
    Close;
  Except
    ShowMessage('Ocorreu Erro ao tentar conectar!');
  End;

end;

procedure TFormConexao.ComboEdit1ButtonClick(Sender: TObject);
begin

  OpenDialog1.Execute;
  ComboEdit1.Text := OpenDialog1.FileName;

end;

end.
