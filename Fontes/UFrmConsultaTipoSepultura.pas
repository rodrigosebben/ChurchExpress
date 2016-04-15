unit UFrmConsultaTipoSepultura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaTipoSepultura = class(TForm)
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
  FormConsultaTipoSepultura: TFormConsultaTipoSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroTipoSepultura;

procedure TFormConsultaTipoSepultura.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroTipoSepultura.QryTipoSepultura.Append;
    if FormCadastroTipoSepultura=nil then
      Application.CreateForm(TFormCadastroTipoSepultura,FormCadastroTipoSepultura);
    FormCadastroTipoSepultura.ShowModal;
  End;

end;

procedure TFormConsultaTipoSepultura.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroTipoSepultura.QryTipoSepultura.Close;
  FormCadastroTipoSepultura.QryTipoSepultura.Open;

end;

procedure TFormConsultaTipoSepultura.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroTipoSepultura.QryTipoSepultura.Edit;
    if FormCadastroTipoSepultura=nil then
      Application.CreateForm(TFormCadastroTipoSepultura,FormCadastroTipoSepultura);
    FormCadastroTipoSepultura.ShowModal;
  End;

end;

procedure TFormConsultaTipoSepultura.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroTipoSepultura.QryTipoSepultura.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaTipoSepultura.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaTipoSepultura.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaTipoSepultura.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroTipoSepultura.QryTipoSepultura.Close;
      FormCadastroTipoSepultura.QryTipoSepultura.SQL.Clear;
      FormCadastroTipoSepultura.QryTipoSepultura.SQL.Add('Select * from tiposepultura ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroTipoSepultura.QryTipoSepultura.SQL.Add(' Order By Nometiposepultura');
        1: FormCadastroTipoSepultura.QryTipoSepultura.SQL.Add(' Order by Nometiposepultura DESC');
      end;
      FormCadastroTipoSepultura.QryTipoSepultura.Open;
    End;
  end;

end;

procedure TFormConsultaTipoSepultura.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroTipoSepultura.QryTipoSepultura.Locate('Nometiposepultura',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaTipoSepultura.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaTipoSepultura.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroTipoSepultura.QryTipoSepultura.Close;
  FreeAndNil(FormConsultaTipoSepultura);

end;


procedure TFormConsultaTipoSepultura.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'APENAS VISUALIZAÇÃO' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  FormCadastroTipoSepultura.QryTipoSepultura.Close;
  FormCadastroTipoSepultura.QryTipoSepultura.Open;
  EdtBusca.SetFocus;

end;

end.
