unit UfrmConsultaUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaUsuario = class(TForm)
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
    DSUsuario: TDataSource;
    QryUsuario: TMyQuery;
    QryUsuarioCodUsuario: TLargeintField;
    QryUsuarioNomeUsuario: TStringField;
    QryUsuarioSenha: TStringField;
    QryUsuarioAtivo: TBooleanField;
    QryUsuarioPastor: TBooleanField;
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
  FormConsultaUsuario: TFormConsultaUsuario;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroUsuario;

procedure TFormConsultaUsuario.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    QryUsuario.Append;
    if FormCadastroUsuario=nil then
      Application.CreateForm(TFormCadastroUsuario,FormCadastroUsuario);
    FormCadastroUsuario.ShowModal;
  End;

end;

procedure TFormConsultaUsuario.BtnAtualizarClick(Sender: TObject);
begin

  QryUsuario.Close;
  QryUsuario.Open;

end;

procedure TFormConsultaUsuario.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    QryUsuario.Edit;
    if FormCadastroUsuario=nil then
      Application.CreateForm(TFormCadastroUsuario,FormCadastroUsuario);
    FormCadastroUsuario.ShowModal;
  End;

end;

procedure TFormConsultaUsuario.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        QryUsuario.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaUsuario.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaUsuario.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaUsuario.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      QryUsuario.Close;
      QryUsuario.SQL.Clear;
      QryUsuario.SQL.Add('Select * from usuario ');
      case CbxOrdem.ItemIndex of
        0: QryUsuario.SQL.Add(' Order by CodUsuario ASC');
        1: QryUsuario.SQL.Add(' Order by CodUsuario DESC');
      end;
      QryUsuario.Open;
    End;
    1:
    Begin
      QryUsuario.Close;
      QryUsuario.SQL.Clear;
      QryUsuario.SQL.Add('Select * from Usuario ');
      case CbxOrdem.ItemIndex of
        0: QryUsuario.SQL.Add(' Order by NomeUsuario ASC');
        1: QryUsuario.SQL.Add(' Order by NomeUsuario DESC');
      end;
      QryUsuario.Open;
    End;
  end;

end;

procedure TFormConsultaUsuario.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: QryUsuario.Locate('CodUsuario',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: QryUsuario.Locate('NomeUsuario',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaUsuario.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  QryUsuario.Close;
  FreeAndNil(FormConsultaUsuario);

end;

procedure TFormConsultaUsuario.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'APENAS VISUALIZAÇÃO' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  QryUsuario.Close;
  QryUsuario.Open;
  EdtBusca.SetFocus;

end;

end.
