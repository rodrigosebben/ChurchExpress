unit UFrmConsultaMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaMensagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CBxBusca: TComboBox;
    EdtBusca: TEdit;
    CbxOrdenacao: TComboBox;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    BtnAdicionar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnAtualizar: TBitBtn;
    ToolButton1: TToolButton;
    BtnSair: TBitBtn;
    DBGridConsluta: TDBGrid;
    CbxOrdem: TComboBox;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBxBuscaSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtBuscaChange(Sender: TObject);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOrdenacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaMensagem: TFormConsultaMensagem;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroMensagem;

procedure TFormConsultaMensagem.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroMensagem.QryMensagem.Append;
    if FormCadastroMensagem=nil then
      Application.CreateForm(TFormCadastroMensagem,FormCadastroMensagem);
    FormCadastroMensagem.ShowModal;
  End;

end;

procedure TFormConsultaMensagem.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroMensagem.QryMensagem.Close;
  FormCadastroMensagem.QryMensagem.Open;

end;

procedure TFormConsultaMensagem.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroMensagem.QryMensagem.Edit;
    if FormCadastroMensagem=nil then
      Application.CreateForm(TFormCadastroMensagem,FormCadastroMensagem);
    FormCadastroMensagem.ShowModal;
  End;

end;

procedure TFormConsultaMensagem.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroMensagem.QryMensagem.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaMensagem.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaMensagem.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaMensagem.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroMensagem.QryMensagem.Close;
      FormCadastroMensagem.QryMensagem.SQL.Clear;
      FormCadastroMensagem.QryMensagem.SQL.Add('Select * from Mensagem ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroMensagem.QryMensagem.SQL.Add(' Order By CodMensagem ASC');
        1: FormCadastroMensagem.QryMensagem.SQL.Add(' Order by CodMensagem DESC');
      end;
      FormCadastroMensagem.QryMensagem.Open;
    End;
    1:
    Begin
      FormCadastroMensagem.QryMensagem.Close;
      FormCadastroMensagem.QryMensagem.SQL.Clear;
      FormCadastroMensagem.QryMensagem.SQL.Add('Select * from Mensagem ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroMensagem.QryMensagem.SQL.Add(' Order by DescMensagem ASC');
        1: FormCadastroMensagem.QryMensagem.SQL.Add(' Order by DescMensagem DESC');
      end;
      FormCadastroMensagem.QryMensagem.Open;
    End;
  end;

end;

procedure TFormConsultaMensagem.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroMensagem.QryMensagem.Locate('CodMensagem',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroMensagem.QryMensagem.Locate('DescMensagem',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaMensagem.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroMensagem.QryMensagem.Close;
  FreeAndNil(FormConsultaMensagem);

end;

procedure TFormConsultaMensagem.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'APENAS VISUALIZAÇÃO' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  FormCadastroMensagem.QryMensagem.Close;
  FormCadastroMensagem.QryMensagem.Open;
  EdtBusca.SetFocus;

end;

end.
