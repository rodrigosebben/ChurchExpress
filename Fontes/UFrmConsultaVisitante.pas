unit UFrmConsultaVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaVisitante = class(TForm)
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
  FormConsultaVisitante: TFormConsultaVisitante;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroVisitante;

procedure TFormConsultaVisitante.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroVisitante.QryVisitante.Append;
    if FormCadastroVisitante=nil then
      Application.CreateForm(TFormCadastroVisitante,FormCadastroVisitante);
    FormCadastroVisitante.ShowModal;
  End;

end;

procedure TFormConsultaVisitante.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroVisitante.QryVisitante.Close;
  FormCadastroVisitante.QryVisitante.Open;

end;

procedure TFormConsultaVisitante.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroVisitante.QryVisitante.Edit;
    if FormCadastroVisitante=nil then
      Application.CreateForm(TFormCadastroVisitante,FormCadastroVisitante);
    FormCadastroVisitante.ShowModal;
  End;

end;

procedure TFormConsultaVisitante.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroVisitante.QryVisitante.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaVisitante.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaVisitante.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaVisitante.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroVisitante.QryVisitante.Close;
      FormCadastroVisitante.QryVisitante.SQL.Clear;
      FormCadastroVisitante.QryVisitante.SQL.Add('Select * from Visitante ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroVisitante.QryVisitante.SQL.Add(' Order By NOMEVISITANTE ASC');
        1: FormCadastroVisitante.QryVisitante.SQL.Add(' Order by NOMEVISITANTE DESC');
      end;
      FormCadastroVisitante.QryVisitante.Open;
    End;
    1:
    Begin
      FormCadastroVisitante.QryVisitante.Close;
      FormCadastroVisitante.QryVisitante.SQL.Clear;
      FormCadastroVisitante.QryVisitante.SQL.Add('Select * from Visitante ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroVisitante.QryVisitante.SQL.Add(' Order by DATAVISITA ASC');
        1: FormCadastroVisitante.QryVisitante.SQL.Add(' Order by DATAVISITA DESC');
      end;
      FormCadastroVisitante.QryVisitante.Open;
    End;
  end;

end;

procedure TFormConsultaVisitante.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroVisitante.QryVisitante.Locate('NOMEVISITANTE',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroVisitante.QryVisitante.Locate('DATAVISITA',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaVisitante.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaVisitante.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroVisitante.QryVisitante.Close;
  FreeAndNil(FormConsultaVisitante);

end;

procedure TFormConsultaVisitante.FormShow(Sender: TObject);
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

  FormCadastroVisitante.QryVisitante.Close;
  FormCadastroVisitante.QryVisitante.Open;
  EdtBusca.SetFocus;

end;

end.
