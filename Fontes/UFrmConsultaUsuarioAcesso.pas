unit UFrmConsultaUsuarioAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaUsuarioAcesso = class(TForm)
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
    QryUsuarioAcesso: TMyQuery;
    DSUsuarioAcesso: TDataSource;
    QryUsuarioAcessoCodUsuarioAcesso: TLargeintField;
    QryUsuarioAcessoCodModulo: TLargeintField;
    QryUsuarioAcessoTipoAcesso: TStringField;
    QryUsuarioAcessoCodUsuario: TLargeintField;
    QryUsuarioAcessoUsuario: TStringField;
    QryUsuarioAcessoModulo: TStringField;
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
  FormConsultaUsuarioAcesso: TFormConsultaUsuarioAcesso;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroUsuarioAcesso;

procedure TFormConsultaUsuarioAcesso.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    QryUsuarioAcesso.Append;
    If FormCadastroUsuarioAcesso=nil then
      Application.CreateForm(TFormCadastroUsuarioAcesso,FormCadastroUsuarioAcesso);
    FormCadastroUsuarioAcesso.ShowModal;
  End;

end;

procedure TFormConsultaUsuarioAcesso.BtnAtualizarClick(Sender: TObject);
begin

  QryUsuarioAcesso.Close;
  QryUsuarioAcesso.Open;

end;

procedure TFormConsultaUsuarioAcesso.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    QryUsuarioAcesso.Edit;
    if FormCadastroUsuarioAcesso=nil then
      Application.CreateForm(TFormCadastroUsuarioAcesso,FormCadastroUsuarioAcesso);
    FormCadastroUsuarioAcesso.ShowModal;
  End;

end;

procedure TFormConsultaUsuarioAcesso.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoAdministracao = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        QryUsuarioAcesso.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaUsuarioAcesso.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaUsuarioAcesso.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaUsuarioAcesso.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      QryUsuarioAcesso.Close;
      QryUsuarioAcesso.SQL.Clear;
      QryUsuarioAcesso.SQL.Add('Select UA.*, U.NomeUsuario as Usuario, M.NomeModulo as Modulo');
      QryUsuarioAcesso.SQL.Add('From UsuarioAcessos UA inner join Usuario U on UA.CodUsuario = U.CodUsuario inner join Modulos M on UA.CodModulo = M.CodModulo');
      case CbxOrdem.ItemIndex of
        0: QryUsuarioAcesso.SQL.Add(' Order By Usuario ASC');
        1: QryUsuarioAcesso.SQL.Add(' Order by Usuario DESC');
      end;
      QryUsuarioAcesso.Open;
    End;
    1:
    Begin
      QryUsuarioAcesso.Close;
      QryUsuarioAcesso.SQL.Clear;
      QryUsuarioAcesso.SQL.Add('Select UA.*, U.NomeUsuario as Usuario, M.NomeModulo as Modulo');
      QryUsuarioAcesso.SQL.Add('From UsuarioAcessos UA inner join Usuario U on UA.CodUsuario = U.CodUsuario inner join Modulos M on UA.CodModulo = M.CodModulo');
      case CbxOrdem.ItemIndex of
        0: QryUsuarioAcesso.SQL.Add(' Order by TipoAcesso ASC');
        1: QryUsuarioAcesso.SQL.Add(' Order by TipoAcesso DESC');
      end;
      QryUsuarioAcesso.Open;
    End;
    2:
    Begin
      QryUsuarioAcesso.Close;
      QryUsuarioAcesso.SQL.Clear;
      QryUsuarioAcesso.SQL.Add('Select UA.*, U.NomeUsuario as Usuario, M.NomeModulo as Modulo');
      QryUsuarioAcesso.SQL.Add('From UsuarioAcessos UA inner join Usuario U on UA.CodUsuario = U.CodUsuario inner join Modulos M on UA.CodModulo = M.CodModulo');
      case CbxOrdem.ItemIndex of
        0: QryUsuarioAcesso.SQL.Add(' Order by Modulo ASC');
        1: QryUsuarioAcesso.SQL.Add(' Order by Modulo DESC');
      end;
      QryUsuarioAcesso.Open;
    End;
  end;

end;

procedure TFormConsultaUsuarioAcesso.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: QryUsuarioAcesso.Locate('Usuario',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: QryUsuarioAcesso.Locate('TipoAcesso',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    3: QryUsuarioAcesso.Locate('Modulo',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaUsuarioAcesso.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaUsuarioAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  QryUsuarioAcesso.Close;
  FreeAndNil(FormConsultaUsuarioAcesso);

end;

procedure TFormConsultaUsuarioAcesso.FormShow(Sender: TObject);
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

  QryUsuarioAcesso.Close;
  QryUsuarioAcesso.Open;
  EdtBusca.SetFocus;

end;

end.
