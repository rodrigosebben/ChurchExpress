unit UFrmParametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, MyAccess, Vcl.StdCtrls, Vcl.Buttons, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdAntiFreezeBase, Vcl.IdAntiFreeze, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  TFormParametros = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdtNome: TDBEdit;
    DBEdtEmail: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdtLogin: TDBEdit;
    Label4: TLabel;
    DBEdtSenha: TDBEdit;
    Label5: TLabel;
    DBEdtServidorSmtp: TDBEdit;
    Label6: TLabel;
    DBEdtPorta: TDBEdit;
    Panel4: TPanel;
    DBCbBxTLS: TDBComboBox;
    DBCbBxMetodo: TDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBChkkBxSSL: TDBCheckBox;
    DBChkBxAutentica: TDBCheckBox;
    Msg: TIdMessage;
    SMTP: TIdSMTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IO_OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    BtnCancelar: TBitBtn;
    BtnSalvar: TBitBtn;
    QryConfigEmail: TMyQuery;
    DSConfigEmail: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation

{$R *.dfm}

uses UDMPrincipal;

end.
