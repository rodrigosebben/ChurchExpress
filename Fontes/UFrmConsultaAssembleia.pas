unit UFrmConsultaAssembleia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaAssembleia = class(TForm)
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
  FormConsultaAssembleia: TFormConsultaAssembleia;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UDMCadastroAssembleia, UFrmCadastroAssembleia;

procedure TFormConsultaAssembleia.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoGerenciamentoCongregacao = 'ACESSO TOTAL' then
  Begin
    DMCadastroAssembleia.QryAssembleia.Append;
    if FormCadastroAssembleia=nil then
      Application.CreateForm(TFormCadastroAssembleia,FormCadastroAssembleia);
    FormCadastroAssembleia.ShowModal;
  End;

end;

procedure TFormConsultaAssembleia.BtnAtualizarClick(Sender: TObject);
begin

  DMCadastroAssembleia.QryAssembleia.Close;
  DMCadastroAssembleia.QryAssembleia.Open;

end;

procedure TFormConsultaAssembleia.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoGerenciamentoCongregacao = 'ACESSO TOTAL' then
  Begin
    DMCadastroAssembleia.QryAssembleia.Edit;
    if FormCadastroAssembleia=nil then
      Application.CreateForm(TFormCadastroAssembleia,FormCadastroAssembleia);
    FormCadastroAssembleia.ShowModal;
  End;

end;

procedure TFormConsultaAssembleia.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoGerenciamentoCongregacao = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        DMCadastroAssembleia.QryAssembleia.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaAssembleia.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaAssembleia.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaAssembleia.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      DMCadastroAssembleia.QryAssembleia.Close;
      DMCadastroAssembleia.QryAssembleia.SQL.Clear;
      DMCadastroAssembleia.QryAssembleia.SQL.Add('Select * from Assembleia ');
      case CbxOrdem.ItemIndex of
        0: DMCadastroAssembleia.QryAssembleia.SQL.Add(' Order By Data ASC');
        1: DMCadastroAssembleia.QryAssembleia.SQL.Add(' Order by Data DESC');
      end;
      DMCadastroAssembleia.QryAssembleia.Open;
    End;
  end;

end;

procedure TFormConsultaAssembleia.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: DMCadastroAssembleia.QryAssembleia.Locate('Data',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaAssembleia.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaAssembleia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  DMCadastroAssembleia.QryAssembleia.Close;
  FreeAndNil(FormConsultaAssembleia);

end;

procedure TFormConsultaAssembleia.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoGerenciamentoCongregacao = 'APENAS VISUALIZAÇÃO' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoGerenciamentoCongregacao = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  DMCadastroAssembleia.QryAssembleia.Close;
  DMCadastroAssembleia.QryAssembleia.Open;
  EdtBusca.SetFocus;

end;

end.
