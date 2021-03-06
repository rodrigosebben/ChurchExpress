unit UFrmModeloConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaXXX = class(TForm)
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
  FormConsultaXXX: TFormConsultaXXX;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormConsultaXXX.BtnAdicionarClick(Sender: TObject);
begin

{  if FormPrincipal.AcessoXXX = 'ACESSO TOTAL' then
  Begin
    FormCadastroXXX.QryXXX.Append;
    if FormCadastroXXX=nil then
      Application.CreateForm(TFormCadastroXXX,FormCadastroXXX);
    FormCadastroXXX.ShowModal;
  End;
}
end;

procedure TFormConsultaXXX.BtnAtualizarClick(Sender: TObject);
begin

{  FormCadastroXXX.QryXXX.Close;
  FormCadastroXXX.QryXXX.Open;}

end;

procedure TFormConsultaXXX.BtnEditarClick(Sender: TObject);
begin

{  if FormPrincipal.AcessoXXX = 'ACESSO TOTAL' then
  Begin
    FormCadastroXXX.QryXXX.Edit;
    if FormCadastroXXX=nil then
      Application.CreateForm(TFormCadastroXXX,FormCadastroXXX);
    FormCadastroXXX.ShowModal;
  End;}

end;

procedure TFormConsultaXXX.BtnExcluirClick(Sender: TObject);
begin

{  if FormPrincipal.AcessoXXX = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroXXX.QryXXX.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;}

end;

procedure TFormConsultaXXX.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaXXX.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaXXX.CbxOrdenacaoChange(Sender: TObject);
begin

{  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroXXX.QryXXX.Close;
      FormCadastroXXX.QryXXX.SQL.Clear;
      FormCadastroXXX.QryXXX.SQL.Add('Select * from xxx ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroXXX.QryXXX.SQL.Add(' Order By CodXXX ASC');
        1: FormCadastroXXX.QryXXX.SQL.Add(' Order by CodXXX DESC');
      end;
      FormCadastroXXX.QryXXX.Open;
    End;
    1:
    Begin
      FormCadastroXXX.QryXXX.Close;
      FormCadastroXXX.QryXXX.SQL.Clear;
      FormCadastroXXX.QryXXX.SQL.Add('Select * from XXX ');
      case CbxOrdem.ItemIndex of
        0: FormCadastroXXX.QryXXX.SQL.Add(' Order by XXX ASC');
        1: FormCadastroXXX.QryXXX.SQL.Add(' Order by XXX DESC');
      end;
      FormCadastroXXX.QryXXX.Open;
    End;
  end;}

end;

procedure TFormConsultaXXX.EdtBuscaChange(Sender: TObject);
begin

{  case CBxBusca.ItemIndex of
    0: FormCadastroXXX.QryXXX.Locate('Codigo',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroXXX.QryXXX.Locate('Nome',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;}

end;

procedure TFormConsultaXXX.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaXXX.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//  FormCadastroXXX.QryXXX.Close;
//  FreeAndNil(FormConsultaXXX);

end;

procedure TFormConsultaXXX.FormShow(Sender: TObject);
begin

{  if FormPrincipal.AcessoXXX = 'APENAS VISUALIZA��O' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoXXX = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  FormCadastroXXX.QryXXX.Close;
  FormCadastroXXX.QryXXX.Open;
  EdtBusca.SetFocus;}

end;

end.
