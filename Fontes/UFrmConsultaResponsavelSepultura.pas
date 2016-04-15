unit UFrmConsultaResponsavelSepultura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaResponsavelSepultura = class(TForm)
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
  FormConsultaResponsavelSepultura: TFormConsultaResponsavelSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroResponsavelSepultura;

procedure TFormConsultaResponsavelSepultura.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroResponsavelSepultura.QryResponsavelSepultura.Append;
    if FormCadastroResponsavelSepultura=nil then
      Application.CreateForm(TFormCadastroResponsavelSepultura,FormCadastroResponsavelSepultura);
    FormCadastroResponsavelSepultura.ShowModal;
  End;

end;

procedure TFormConsultaResponsavelSepultura.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
  FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;

end;

procedure TFormConsultaResponsavelSepultura.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroResponsavelSepultura.QryResponsavelSepultura.Edit;
    if FormCadastroResponsavelSepultura=nil then
      Application.CreateForm(TFormCadastroResponsavelSepultura,FormCadastroResponsavelSepultura);
    FormCadastroResponsavelSepultura.ShowModal;
  End;

end;

procedure TFormConsultaResponsavelSepultura.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroResponsavelSepultura.QryResponsavelSepultura.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaResponsavelSepultura.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaResponsavelSepultura.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaResponsavelSepultura.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Clear;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add('Select * from responsavelsepultura ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order By NomeResponsavelSepultura ASC');
        1: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order by NomeResponsavelSepultura DESC');
      end;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;
    End;
    1:
    Begin
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Clear;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add('Select * from responsavelsepultura ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order by Bairro ASC');
        1: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order by Bairro DESC');
      end;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;
    End;
    2:
    Begin
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Clear;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add('Select * from responsavelsepultura ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order by Cidade ASC');
        1: FormCadastroResponsavelSepultura.QryResponsavelSepultura.SQL.Add(' Order by Cidade DESC');
      end;
      FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;
    End;

  end;

end;

procedure TFormConsultaResponsavelSepultura.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroResponsavelSepultura.QryResponsavelSepultura.Locate('NomeResponsavelSepultura',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaResponsavelSepultura.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaResponsavelSepultura.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
  FreeAndNil(FormConsultaResponsavelSepultura);

end;

procedure TFormConsultaResponsavelSepultura.FormShow(Sender: TObject);
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

  FormCadastroResponsavelSepultura.QryResponsavelSepultura.Close;
  FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;
  FormCadastroResponsavelSepultura.MyQryLkpMembros.Close;
  FormCadastroResponsavelSepultura.MyQryLkpMembros.Open;

  EdtBusca.SetFocus;

end;

end.
