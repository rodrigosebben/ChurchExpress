unit UFrmConsultaSantaCeiaVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaSantaCeiaVisitante = class(TForm)
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
  FormConsultaSantaCeiaVisitante: TFormConsultaSantaCeiaVisitante;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroVisitanteSantaCeia;

procedure TFormConsultaSantaCeiaVisitante.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Append;
    if FormCadastroVisitanteSantaCeia=nil then
      Application.CreateForm(TFormCadastroVisitanteSantaCeia,FormCadastroVisitanteSantaCeia);
    FormCadastroVisitanteSantaCeia.ShowModal;
  End;

end;

procedure TFormConsultaSantaCeiaVisitante.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Close;
  FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Open;

end;

procedure TFormConsultaSantaCeiaVisitante.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Edit;
    if FormCadastroVisitanteSantaCeia=nil then
      Application.CreateForm(TFormCadastroVisitanteSantaCeia,FormCadastroVisitanteSantaCeia);
    FormCadastroVisitanteSantaCeia.ShowModal;
  End;

end;

procedure TFormConsultaSantaCeiaVisitante.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaSantaCeiaVisitante.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaSantaCeiaVisitante.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaSantaCeiaVisitante.CbxOrdenacaoChange(Sender: TObject);
begin

  With FormCadastroVisitanteSantaCeia do
  Begin
    case CbxOrdenacao.ItemIndex of
      0:
      Begin
        QrySantaCeiaVisitante.Close;
        QrySantaCeiaVisitante.SQL.Clear;
        QrySantaCeiaVisitante.SQL.Add('Select * from santaceiaVisitante');
        case CbxOrdem.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' Order By NomeVisitante ASC');
          1: QrySantaCeiaVisitante.SQL.Add(' Order by NomeVisitante DESC');
        end;
        QrySantaCeiaVisitante.Open;
      End;
      1:
      Begin
        QrySantaCeiaVisitante.Close;
        QrySantaCeiaVisitante.SQL.Clear;
        QrySantaCeiaVisitante.SQL.Add('Select * from santaceiaVisitante');
        case CbxOrdem.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' Order by Origem ASC');
          1: QrySantaCeiaVisitante.SQL.Add(' Order by Origem DESC');
        end;
        QrySantaCeiaVisitante.Open;
      End;
    end;
  End;

end;

procedure TFormConsultaSantaCeiaVisitante.EdtBuscaChange(Sender: TObject);
begin

  With FormCadastroVisitanteSantaCeia do
  Begin
    case CbxOrdenacao.ItemIndex of
      0:
      Begin
        QrySantaCeiaVisitante.Close;
        QrySantaCeiaVisitante.SQL.Clear;
        QrySantaCeiaVisitante.SQL.Add('Select * from santaceiaVisitante');
        case CBxBusca.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' where nomevisitante like ' + QuotedStr(EdtBusca.Text + '%'));
          1: QrySantaCeiaVisitante.SQL.Add(' where Origem like ' + QuotedStr(EdtBusca.Text + '%'));
        end;
        case CbxOrdem.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' Order By NomeVisitante ASC');
          1: QrySantaCeiaVisitante.SQL.Add(' Order by NomeVisitante DESC');
        end;
        QrySantaCeiaVisitante.Open;
      End;
      1:
      Begin
        QrySantaCeiaVisitante.Close;
        QrySantaCeiaVisitante.SQL.Clear;
        QrySantaCeiaVisitante.SQL.Add('Select * from santaceiaVisitante');
        case CBxBusca.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' where nomevisitante like ' + QuotedStr(EdtBusca.Text + '%'));
          1: QrySantaCeiaVisitante.SQL.Add(' where Origem like ' + QuotedStr(EdtBusca.Text + '%'));
        end;
        case CbxOrdem.ItemIndex of
          0: QrySantaCeiaVisitante.SQL.Add(' Order by Origem ASC');
          1: QrySantaCeiaVisitante.SQL.Add(' Order by Origem DESC');
        end;
        QrySantaCeiaVisitante.Open;
      End;
    end;
  End;

end;

procedure TFormConsultaSantaCeiaVisitante.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaSantaCeiaVisitante.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Close;
  FreeAndNil(FormConsultaSantaCeiaVisitante);

end;

procedure TFormConsultaSantaCeiaVisitante.FormShow(Sender: TObject);
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

  FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Close;
  FormCadastroVisitanteSantaCeia.QrySantaCeiaVisitante.Open;
  EdtBusca.SetFocus;

end;

end.
