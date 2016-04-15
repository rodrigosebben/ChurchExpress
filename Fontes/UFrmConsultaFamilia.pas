unit UFrmConsultaFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaFamilia = class(TForm)
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

  private
    procedure OrdenaSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaFamilia: TFormConsultaFamilia;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroFamilia;

procedure TFormConsultaFamilia.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroFamilia.QryFamilia.Append;
    if FormCadastroFamilia=nil then
      Application.CreateForm(TFormCadastroFamilia,FormCadastroFamilia);
    FormCadastroFamilia.ShowModal;
  End;

end;

procedure TFormConsultaFamilia.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroFamilia.QryFamilia.Close;
  FormCadastroFamilia.QryFamilia.Open;

end;

procedure TFormConsultaFamilia.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroFamilia.QryFamilia.Edit;
    if FormCadastroFamilia=nil then
      Application.CreateForm(TFormCadastroFamilia,FormCadastroFamilia);
    FormCadastroFamilia.ShowModal;
  End;

end;

procedure TFormConsultaFamilia.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroFamilia.QryFamilia.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaFamilia.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaFamilia.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaFamilia.EdtBuscaChange(Sender: TObject);
begin

  with FormCadastroFamilia do
  Begin
    if EdtBusca.Text= '' then
    Begin
      QryFamilia.Close;
      QryFamilia.SQL.Clear;
      QryFamilia.SQL.Text := 'SELECT * ' +
                             '  FROM familia';
      QryFamilia.Open;
    End
    Else
    Begin
      QryFamilia.Close;
      QryFamilia.SQL.Clear;
      QryFamilia.SQL.Text := 'SELECT * ' +
                             '  FROM familia';

      case CBxBusca.ItemIndex of
        0: Begin
             QryFamilia.SQL.add(' where CodFamilia like ' + QuotedStr(EdtBusca.Text + '%'));
           End;
        1: Begin
             QryFamilia.SQL.add(' where SOBRENOME like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
        2: Begin
             QryFamilia.SQL.add(' where AREA like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
        3: Begin
             QryFamilia.SQL.add(' where GRUPO like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
        4: Begin
             QryFamilia.SQL.add(' where CIDADE like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
        5: Begin
             QryFamilia.SQL.add(' where BAIRRO like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
        6: Begin
             QryFamilia.SQL.add(' where UF like ' + QuotedStr(EdtBusca.Text + '%'));
             OrdenaSQL;
           End;
      end;

      QryFamilia.Open;

    End;
  End;

end;

procedure TFormConsultaFamilia.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaFamilia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroFamilia.QryFamilia.Close;
  FreeAndNil(FormConsultaFamilia);

end;

procedure TFormConsultaFamilia.FormShow(Sender: TObject);
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

  FormCadastroFamilia.QryFamilia.Close;
  FormCadastroFamilia.QryFamilia.Open;
  EdtBusca.SetFocus;

end;

procedure TFormConsultaFamilia.OrdenaSQL;
begin

  case FormConsultaFamilia.CbxOrdenacao.ItemIndex of
    0:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order By CodFamilia ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by CodFamilia DESC');
        end;
      End;
    1:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by SOBRENOME ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by SOBRENOME DESC');
        end;
      End;
    2:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by AREA ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by AREA DESC');
        end;
      End;
    3:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by GRUPO ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by GRUPO DESC');
        end;
      End;
    4:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by CIDADE ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by CIDADE DESC');
        end;
      End;
    5:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by BAIRRO ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by BAIRRO DESC');
        end;
      End;
    6:Begin
        case FormConsultaFamilia.CbxOrdem.ItemIndex of
          0: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by UF ASC');
          1: FormCadastroFamilia.QryFamilia.SQL.Add(' Order by UF DESC');
        end;
      End;
  end;

end;

end.
