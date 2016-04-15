unit UFrmConsultaTipoContribuicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaTipoContribuicao = class(TForm)
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
  FormConsultaTipoContribuicao: TFormConsultaTipoContribuicao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroTipoContribuicao;

procedure TFormConsultaTipoContribuicao.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroTipoContribuicao.QryTipoContribuicao.Append;
    if FormCadastroTipoContribuicao=nil then
      Application.CreateForm(TFormCadastroTipoContribuicao,FormCadastroTipoContribuicao);
    FormCadastroTipoContribuicao.ShowModal;
  End;

end;

procedure TFormConsultaTipoContribuicao.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroTipoContribuicao.QryTipoContribuicao.Close;
  FormCadastroTipoContribuicao.QryTipoContribuicao.Open;

end;

procedure TFormConsultaTipoContribuicao.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroTipoContribuicao.QryTipoContribuicao.Edit;
    if FormCadastroTipoContribuicao=nil then
      Application.CreateForm(TFormCadastroTipoContribuicao,FormCadastroTipoContribuicao);
    FormCadastroTipoContribuicao.ShowModal;
  End;

end;

procedure TFormConsultaTipoContribuicao.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroTipoContribuicao.QryTipoContribuicao.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaTipoContribuicao.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaTipoContribuicao.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaTipoContribuicao.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroTipoContribuicao.QryTipoContribuicao.Close;
      FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Clear;
      FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add('Select * from TipoContribuicao ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add(' Order By CodTpContrb ASC');
        1: FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add(' Order by CodTpContrb DESC');
      end;
      FormCadastroTipoContribuicao.QryTipoContribuicao.Open;
    End;
    1:
    Begin
      FormCadastroTipoContribuicao.QryTipoContribuicao.Close;
      FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Clear;
      FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add('Select * from TipoContribuicao ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add(' Order by DescTPContrb ASC');
        1: FormCadastroTipoContribuicao.QryTipoContribuicao.SQL.Add(' Order by DescTPContrb DESC');
      end;
      FormCadastroTipoContribuicao.QryTipoContribuicao.Open;
    End;
  end;

end;

procedure TFormConsultaTipoContribuicao.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroTipoContribuicao.QryTipoContribuicao.Locate('CodTpContrb',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroTipoContribuicao.QryTipoContribuicao.Locate('DescTPContrb',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaTipoContribuicao.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaTipoContribuicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroTipoContribuicao.QryTipoContribuicao.Close;
  FreeAndNil(FormConsultaTipoContribuicao);

end;

procedure TFormConsultaTipoContribuicao.FormShow(Sender: TObject);
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

  FormCadastroTipoContribuicao.QryTipoContribuicao.Close;
  FormCadastroTipoContribuicao.QryTipoContribuicao.Open;
  EdtBusca.SetFocus;

end;

end.
