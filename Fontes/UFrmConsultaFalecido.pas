unit UFrmConsultaFalecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaFalecidos = class(TForm)
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
  FormConsultaFalecidos: TFormConsultaFalecidos;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroFalecido;

procedure TFormConsultaFalecidos.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroFalecido.QryFalecidos.Append;
    if FormCadastroFalecido=nil then
      Application.CreateForm(TFormCadastroFalecido,FormCadastroFalecido);
    FormCadastroFalecido.ShowModal;
  End;

end;

procedure TFormConsultaFalecidos.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroFalecido.QryFalecidos.Close;
  FormCadastroFalecido.QryFalecidos.Open;

end;

procedure TFormConsultaFalecidos.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroFalecido.QryFalecidos.Edit;
    if FormCadastroFalecido=nil then
      Application.CreateForm(TFormCadastroFalecido,FormCadastroFalecido);
    FormCadastroFalecido.ShowModal;
  End;

end;

procedure TFormConsultaFalecidos.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroFalecido.QryFalecidos.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaFalecidos.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaFalecidos.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaFalecidos.CbxOrdenacaoChange(Sender: TObject);
begin

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroFalecido.QryFalecidos.Close;
      FormCadastroFalecido.QryFalecidos.SQL.Clear;
      FormCadastroFalecido.QryFalecidos.SQL.Text := 'SELECT f.*, ' +
                                                    'S.CodResponsavelSepultura, ' +
                                                    'RS.NomeResponsavelSepultura ' +
                                                    'FROM falecidossepultura f left join Sepulturas S on F.CodSepultura = S.CodSepultura ' +
                                                    '                          left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura';
      case CbxOrdem.ItemIndex of
        0: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order By f.NomeFalecido ASC');
        1: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order by f.NomeFalecido DESC');
      end;
      FormCadastroFalecido.QryFalecidos.Open;
    End;
    1:
    Begin
      FormCadastroFalecido.QryFalecidos.Close;
      FormCadastroFalecido.QryFalecidos.SQL.Clear;
      FormCadastroFalecido.QryFalecidos.SQL.Text := 'SELECT f.*, ' +
                                                    'S.CodResponsavelSepultura, ' +
                                                    'RS.NomeResponsavelSepultura ' +
                                                    'FROM falecidossepultura f left join Sepulturas S on F.CodSepultura = S.CodSepultura ' +
                                                    '                          left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura';
      case CbxOrdem.ItemIndex of
        0: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order By f.CertidaoObito ASC');
        1: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order by f.CertidaoObito DESC');
      end;
      FormCadastroFalecido.QryFalecidos.Open;
    End;
    2:
    Begin
      FormCadastroFalecido.QryFalecidos.Close;
      FormCadastroFalecido.QryFalecidos.SQL.Clear;
      FormCadastroFalecido.QryFalecidos.SQL.Text := 'SELECT f.*, ' +
                                                    'S.CodResponsavelSepultura, ' +
                                                    'RS.NomeResponsavelSepultura ' +
                                                    'FROM falecidossepultura f left join Sepulturas S on F.CodSepultura = S.CodSepultura ' +
                                                    '                          left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura';
      case CbxOrdem.ItemIndex of
        0: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order By RS.NomeResponsavelSepultura ASC');
        1: FormCadastroFalecido.QryFalecidos.SQL.Add(' Order by RS.NomeResponsavelSepultura DESC');
      end;
      FormCadastroFalecido.QryFalecidos.Open;
    End;
  end;

end;

procedure TFormConsultaFalecidos.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroFalecido.QryFalecidos.Locate('NomeFalecido',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroFalecido.QryFalecidos.Locate('CertidaoObito',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    2: FormCadastroFalecido.QryFalecidos.Locate('NomeResponsavelSepultura',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaFalecidos.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaFalecidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroFalecido.QryFalecidos.Close;
  FreeAndNil(FormConsultaFalecidos);

end;

procedure TFormConsultaFalecidos.FormShow(Sender: TObject);
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

  FormCadastroFalecido.QryFalecidos.Close;
  FormCadastroFalecido.QryFalecidos.Open;
  FormCadastroFalecido.QryLkpSepultura.Close;
  FormCadastroFalecido.QryLkpSepultura.Open;
  EdtBusca.SetFocus;

end;

end.
