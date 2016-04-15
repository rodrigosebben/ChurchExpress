unit UFrmMalaDireta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSeven, dxSkinSevenClassic, dxSkinStardust, dxSkinVS2010, Vcl.Menus, cxCheckListBox,
  cxDBCheckListBox, Vcl.StdCtrls, Vcl.DBCtrls, cxButtons, Data.DB, MemDS, DBAccess, MyAccess, Vcl.ToolWin, Vcl.ComCtrls, cxTextEdit, cxMemo, cxRichEdit, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, IdMessage, Vcl.AppEvnts;

type
  TFormMalaDireta = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    MyQryMembro: TMyQuery;
    MyQryMembroNomeMembro: TStringField;
    MyQryMembroEmail: TStringField;
    DSMembro: TDataSource;
    cxButton1: TcxButton;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid1: TDBGrid;
    CdsMalaDireta: TClientDataSet;
    DSMalaDireta: TDataSource;
    CdsMalaDiretaNome: TStringField;
    CdsMalaDiretaEmail: TStringField;
    DBGrid2: TDBGrid;
    cxButton5: TcxButton;
    Panel9: TPanel;
    Label1: TLabel;
    EdtAssunto: TEdit;
    Label2: TLabel;
    Panel10: TPanel;
    cxRichEdit1: TcxRichEdit;
    ApplicationEvents1: TApplicationEvents;
    ToolButton1: TToolButton;
    LbStatus: TLabel;
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMalaDireta: TFormMalaDireta;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrmParametros;

procedure TFormMalaDireta.cxButton1Click(Sender: TObject);
Var
  ListaEmails:String;
begin

  ListaEmails := '';
  CdsMalaDireta.First;
  while not CdsMalaDireta.eof do
  Begin
    ListaEmails := CdsMalaDiretaEmail.Text + ';';
    CdsMalaDireta.Next;
  End;


  {IdMessage1.Recipients.EMailAddresses := ListaEmails;
  IdMessage1.Subject := EdtAssunto.Text;
  IdMessage1.Body := cxRichEdit1.Lines;

  try
    IdSMTP1.Connect;
    try
      IdSMTP1.Send(IdMessage1);
    finally
      IdSMTP1.Disconnect;
    end;
  Except on E: Exception do
    ShowMessage('Erro ao enviar a mensagem:' + E.Message);
  end;

  Application.MessageBox('Email(s) enviado(s) com sucesso!', 'Confirma��o', MB_ICONINFORMATION + MB_OK);
  IdMessage1.MessageParts.Clear;
   }
end;

procedure TFormMalaDireta.cxButton2Click(Sender: TObject);
begin

  CdsMalaDireta.Insert;
  CdsMalaDiretaNome.Text := MyQryMembroNomeMembro.Text;
  CdsMalaDiretaEmail.Text := MyQryMembroEmail.Text;
  CdsMalaDireta.Post;

end;

procedure TFormMalaDireta.cxButton3Click(Sender: TObject);
begin

  CdsMalaDireta.Delete;

end;

procedure TFormMalaDireta.cxButton4Click(Sender: TObject);
begin

  CdsMalaDireta.EmptyDataSet;
  Close;

end;

procedure TFormMalaDireta.cxButton5Click(Sender: TObject);
begin

  CdsMalaDireta.EmptyDataSet;

end;

procedure TFormMalaDireta.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
  FormMalaDireta := nil;

end;

procedure TFormMalaDireta.FormShow(Sender: TObject);
begin

  MyQryMembro.Close;
  MyQryMembro.Open;

end;

procedure TFormMalaDireta.ToolButton1Click(Sender: TObject);
var
  str, ListaEmails : string;
  SSL,Autentica : string;
  i : integer;
begin
//inherited;
 {
  with FormParametros do
  Begin
    try
    // Configurando componentes de envio
    with SMTP do begin
      Host := DBEdtServidorSmtp.Text;

      if DBChkkBxSSL.Checked Then
        IOHandler := IO_OpenSSL
      else
        IOHandler := nil;

      IOHandler := IO_OpenSSL;
      Username  := DBEdtLogin.Text;
      Password  := DBEdtSenha.Text;
      Port      := StrToIntDef(DBEdtPorta.Text,25);

      case DBCbBxTLS.ItemIndex of
        0 : UseTLS := utNoTLSSupport;
        1 : UseTLS := utUseImplicitTLS;
        2 : UseTLS := utUseRequireTLS;
        3 : UseTLS := utUseExplicitTLS;
      end;

      case DBCbBxMetodo.ItemIndex of
        0 : IO_OpenSSL.SSLOptions.Method  := 'sslvSSLv2';
        1 : IO_OpenSSL.SSLOptions.Method  := 'sslvSSLv23';
        2 : IO_OpenSSL.SSLOptions.Method  := 'sslvSSLv3';
        3 : IO_OpenSSL.SSLOptions.Method  := 'sslvTLSv1';
      end;

      if DBChkBxAutentica.Checked then
        AuthType  := satDefault
      else
        AuthType  := satNone;

      ConnectTimeout := 10000;
      ReadTimeout   := 10000;
    end;

    //Conex�o SSL
    if DBChkkBxSSL.Checked then
    begin
      with IO_OpenSSL do begin
        SSLOptions.Method := 'sslvSSLv23';
        SSLOptions.Mode   := 'sslmClient';
      end;
    end;

    //Mensagem
    with Msg do
    begin

      // Informa��o "de quem est� enviando"
      From.Name         := DBEdtNome.Text;
      From.Address      := DBEdtEmail.Text;
      From.DisplayName  := DBEdtNome.Text;

      ListaEmails := '';
      CdsMalaDireta.First;
      while not CdsMalaDireta.eof do
      Begin
        ListaEmails := CdsMalaDiretaEmail.Text + ';';
        CdsMalaDireta.Next;
      End;

      // Informa��es "Para quem est� enviando"
      Subject                   := EdtAssunto.Text;
      Sender.Address            := ListaEmails;
      Sender.Name               := DBEdtNome.Text;
      Recipients.EMailAddresses := ListaEmails;

      // Informa��es da mensagem
      Body.Text := cxRichEdit1.Text;
//      CCList.EMailAddresses := EdCC.Text;
      BccList.EMailAddresses := ListaEmails;

      // Prioridade da mensagem
//      case dbccCBPrioridade.ItemIndex of
      Priority := mpNormal; //0:Priority := mpNormal;
//      1:Priority := mpLow;
//      2:Priority := mpLowest;
//      3:Priority := mpHigh;
//      4:Priority := mpHighest;
//      End;

{      // Insira os anexos caso possua
      MessageParts.Clear;
      //if F_Envia_Email.Showing Then
      for i := 0 to MemoAnexo.Items.Count - 1 do
      if FileExists(MemoAnexo.Items[i]) Then
      TIdAttachmentFile.Create(MessageParts, MemoAnexo.Items[i]);
      end;
}
{
      // Tente Enviar a Mensagem
      Try
        // Conecte ao Servidor
        if not SMTP.Connected then
        begin
          SMTP.Connect();
          if DBChkBxAutentica.Checked then
            SMTP.Authenticate();
        end;

        // Envie o Email
        if SMTP.Connected then
        begin
          LbStatus.Caption := 'Aguarde, enviando E-Mail...';
          Refresh;
          SMTP.Send(Msg);
          SMTP.Disconnect;
        end;
        ShowMessage('E-Mail enviado!', 'Informa��o', 'i');

      Except on E: Exception do
        // Tratamento de exce��es
        if (tag = 0) Then
        begin
          if (Pos(UpperCase('Credentials Rejected'), UpperCase(E.Message)) > 0) Then
          begin
            ShowMessage('Erro ao enviar E-Mail! Login ou Senha inv�lidos','Erro ao enviar E-Mail', 'e');
            LbStatus.Caption := 'Erro : Login ou Senha inv�lidos.';
            LbStatus.Font.Color := clRed;
          end
          else if (Pos(UpperCase('Host not found'), UpperCase(E.Message)) > 0) Then
          begin
            ShowMessage('O Servidor "' + DBEdtServidorSmtp.Text + '" n�o foi encontrado', 'Erro ao enviar E-Mail', 'e');
            LbStatus.Caption := 'Erro : Servidor n�o encontrado.';
            LbStatus.Font.Color := clRed;
          end
          else if (Pos(UpperCase('Connection timed out'), UpperCase(E.Message)) > 0) Then
          begin
            ShowMessage('O servidor "' + DBEdtServidorSmtp.Text + '" demorou a responder, verifique se a porta para conex�o est� correta!', 'Erro ao enviar E-Mail', 'e');
            LbStatus.Caption := 'Erro : Servidor n�o respondeu.';
            LbStatus.Font.Color := clRed;
          End
          else if (Pos(UpperCase('read timeout'), UpperCase(E.Message)) > 0) Then
          begin
            ShowMessage('O servidor "' + DBEdtServidorSmtp.Text + '" demorou a responder, talvez o mesmo requeira uma Conex�o SSL segura!', 'Erro ao enviar E-Mail', 'e');
            LbStatus.Caption := 'Erro : Servidor talvez requeira uma conex�o SSL segura.';
            LbStatus.Font.Color := clRed;
          End
          else if (Pos(UpperCase('connection closed'), UpperCase(E.Message)) > 0) Then
          begin
            ShowMessage('Envio cancelado', 'Envio cancelado', 'a');
            LbStatus.Caption := 'Envio de e-mail cancelado';
            LbStatus.Font.Color := clRed;
          End
          else
          begin
            ShowMessage('Erro ao enviar e-mail', 'Erro ao enviar E-Mail' + E.Message, 'e');
            LbStatus.Caption := 'Erro ao enviar E-Mail. ' + E.Message;
            LbStatus.Font.Color := clRed;
          end;
        end;
//            var_status := 'erro';
      end;
    End;
    finally
      if SMTP.Connected then
      SMTP.Disconnect;
    end;
  End;
        }
end;

end.
