unit UFrmConsultaProfissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaProfissao = class(TForm)
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
    CbxOrdem: TComboBox;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
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
  FormConsultaProfissao: TFormConsultaProfissao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroProfissao;

procedure TFormConsultaProfissao.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroProfissao.QryProfissao.Append;
    if FormCadastroProfissao=nil then
      Application.CreateForm(TFormCadastroProfissao,FormCadastroProfissao);
    FormCadastroProfissao.ShowModal;
  End;

end;

procedure TFormConsultaProfissao.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroProfissao.QryProfissao.Close;
  FormCadastroProfissao.QryProfissao.Open;

end;

procedure TFormConsultaProfissao.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroProfissao.QryProfissao.Edit;
    if FormCadastroProfissao=nil then
      Application.CreateForm(TFormCadastroProfissao,FormCadastroProfissao);
    FormCadastroProfissao.ShowModal;
  End;

end;

procedure TFormConsultaProfissao.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroProfissao.QryProfissao.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaProfissao.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaProfissao.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaProfissao.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroProfissao.QryProfissao.Close;
      FormCadastroProfissao.QryProfissao.SQL.Clear;
      FormCadastroProfissao.QryProfissao.SQL.Add('Select * from Profissao ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroProfissao.QryProfissao.SQL.Add(' Order by CodProfissao ASC');
        1: FormCadastroProfissao.QryProfissao.SQL.Add(' Order by CodProfissao DESC');
      end;
      FormCadastroProfissao.QryProfissao.Open;
    End;
    1:
    Begin
      FormCadastroProfissao.QryProfissao.Close;
      FormCadastroProfissao.QryProfissao.SQL.Clear;
      FormCadastroProfissao.QryProfissao.SQL.Add('Select * from Profissao ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroProfissao.QryProfissao.SQL.Add(' Order by NomeProfissao ASC');
        1: FormCadastroProfissao.QryProfissao.SQL.Add(' Order by NomeProfissao DESC');
      end;
      FormCadastroProfissao.QryProfissao.Open;
    End;
  end;

end;

procedure TFormConsultaProfissao.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroProfissao.QryProfissao.Locate('CodProfissao',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroProfissao.QryProfissao.Locate('NomeProfissao',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaProfissao.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaProfissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroProfissao.QryProfissao.Close;
  FreeAndNil(FormConsultaProfissao);

end;

procedure TFormConsultaProfissao.FormShow(Sender: TObject);
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

  FormCadastroProfissao.QryProfissao.Close;
  FormCadastroProfissao.QryProfissao.Open;
  EdtBusca.SetFocus;

end;

end.
