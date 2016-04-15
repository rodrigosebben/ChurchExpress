unit UFrmConsultaTaxasSepultamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaTaxasSepultamento = class(TForm)
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
  FormConsultaTaxasSepultamento: TFormConsultaTaxasSepultamento;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroTaxasSepultamento;

procedure TFormConsultaTaxasSepultamento.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Append;
    if FormCadastroTaxasSepultamento=nil then
      Application.CreateForm(TFormCadastroTaxasSepultamento,FormCadastroTaxasSepultamento);
    FormCadastroTaxasSepultamento.ShowModal;
  End;

end;

procedure TFormConsultaTaxasSepultamento.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Close;
  FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Open;

end;

procedure TFormConsultaTaxasSepultamento.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Edit;
    if FormCadastroTaxasSepultamento=nil then
      Application.CreateForm(TFormCadastroTaxasSepultamento,FormCadastroTaxasSepultamento);
    FormCadastroTaxasSepultamento.ShowModal;
  End;

end;

procedure TFormConsultaTaxasSepultamento.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se este registro não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaTaxasSepultamento.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaTaxasSepultamento.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaTaxasSepultamento.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Close;
      FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.SQL.Clear;
      FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.SQL.Add('Select * from tipotaxasepultura ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.SQL.Add(' Order By NomeTipoTaxaSepultura ASC');
        1: FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.SQL.Add(' Order by NomeTipoTaxaSepultura DESC');
      end;
      FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Open;
    End;
  end;

end;

procedure TFormConsultaTaxasSepultamento.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Locate('NomeTipoTaxaSepultura',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaTaxasSepultamento.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaTaxasSepultamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Close;
  FreeAndNil(FormConsultaTaxasSepultamento);

end;

procedure TFormConsultaTaxasSepultamento.FormShow(Sender: TObject);
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

  FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Close;
  FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Open;
  EdtBusca.SetFocus;

end;

end.
