unit UFrmConsultaDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaDepartamento = class(TForm)
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
  FormConsultaDepartamento: TFormConsultaDepartamento;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroDepartamento;

procedure TFormConsultaDepartamento.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroDepartamento.QryDepartamento.Append;
    if FormCadastroDepartamento=nil then
      Application.CreateForm(TFormCadastroDepartamento,FormCadastroDepartamento);
    FormCadastroDepartamento.ShowModal;
  End;

end;

procedure TFormConsultaDepartamento.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroDepartamento.QryDepartamento.Close;
  FormCadastroDepartamento.QryDepartamento.Open;

end;

procedure TFormConsultaDepartamento.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroDepartamento.QryDepartamento.Edit;
    if FormCadastroDepartamento=nil then
      Application.CreateForm(TFormCadastroDepartamento,FormCadastroDepartamento);
    FormCadastroDepartamento.ShowModal;
  End;

end;

procedure TFormConsultaDepartamento.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroDepartamento.QryDepartamento.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaDepartamento.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaDepartamento.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaDepartamento.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroDepartamento.QryDepartamento.Close;
      FormCadastroDepartamento.QryDepartamento.SQL.Clear;
      FormCadastroDepartamento.QryDepartamento.SQL.Add('Select * from Departamento ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroDepartamento.QryDepartamento.SQL.Add(' Order By CodDepto ASC');
        1: FormCadastroDepartamento.QryDepartamento.SQL.Add(' Order by CodDepto DESC');
      end;
      FormCadastroDepartamento.QryDepartamento.Open;
    End;
    1:
    Begin
      FormCadastroDepartamento.QryDepartamento.Close;
      FormCadastroDepartamento.QryDepartamento.SQL.Clear;
      FormCadastroDepartamento.QryDepartamento.SQL.Add('Select * from XXX ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroDepartamento.QryDepartamento.SQL.Add(' Order by DescDepto ASC');
        1: FormCadastroDepartamento.QryDepartamento.SQL.Add(' Order by DescDepto DESC');
      end;
      FormCadastroDepartamento.QryDepartamento.Open;
    End;
  end;

end;

procedure TFormConsultaDepartamento.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroDepartamento.QryDepartamento.Locate('CodDepto',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroDepartamento.QryDepartamento.Locate('DescDepto',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaDepartamento.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaDepartamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroDepartamento.QryDepartamento.Close;
  FreeAndNil(FormConsultaDepartamento);

end;

procedure TFormConsultaDepartamento.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'APENAS VISUALIZA��O' then
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

  FormCadastroDepartamento.QryDepartamento.Close;
  FormCadastroDepartamento.QryDepartamento.Open;
  EdtBusca.SetFocus;

end;

end.
