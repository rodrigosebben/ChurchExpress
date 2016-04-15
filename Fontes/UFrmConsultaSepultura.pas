unit UFrmConsultaSepultura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess;

type
  TFormConsultaSepultura = class(TForm)
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
  FormConsultaSepultura: TFormConsultaSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroSepultura;

procedure TFormConsultaSepultura.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroSepultura.QrySepulturas.Append;
    if FormCadastroSepultura=nil then
      Application.CreateForm(TFormCadastroSepultura,FormCadastroSepultura);
    FormCadastroSepultura.ShowModal;
  End;

end;

procedure TFormConsultaSepultura.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroSepultura.QrySepulturas.Close;
  FormCadastroSepultura.QrySepulturas.Open;

end;

procedure TFormConsultaSepultura.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroSepultura.QrySepulturas.Edit;
    if FormCadastroSepultura=nil then
      Application.CreateForm(TFormCadastroSepultura,FormCadastroSepultura);
    FormCadastroSepultura.ShowModal;
  End;

end;

procedure TFormConsultaSepultura.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirmação',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroSepultura.QrySepulturas.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele não está sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaSepultura.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaSepultura.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaSepultura.CbxOrdenacaoChange(Sender: TObject);
begin
{
    0 Responsável
    1 Fila
    2 Lado
    3 Número
    4 Documento Número
}

  case CbxOrdenacao.ItemIndex of
    0:
    Begin
      FormCadastroSepultura.QrySepulturas.Close;
      FormCadastroSepultura.QrySepulturas.SQL.Clear;
      FormCadastroSepultura.QrySepulturas.SQL.Text := 'SELECT S.*, ' +
                                                      '       RS.NomeResponsavelSepultura, ' +
                                                      '       TS.NomeTipoSepultura, ' +
                                                      '       TTS.NomeTipoTaxaSepultura ' +
                                                      'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura ' +
                                                      '                  Left Join TipoSepultura TS on S.CodTipoSepultura = TS.CodTipoSepultura ' +
                                                      '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTaxaSepultura = TTS.CodTipoTaxaSepultura ';
      case CbxOrdem.ItemIndex of
        0: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order By RS.NomeResponsavelSepultura ASC');
        1: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by RS.NomeResponsavelSepultura DESC');
      end;
      FormCadastroSepultura.QrySepulturas.Open;
    End;
    1:
    Begin
      FormCadastroSepultura.QrySepulturas.Close;
      FormCadastroSepultura.QrySepulturas.SQL.Clear;
      FormCadastroSepultura.QrySepulturas.SQL.Text := 'SELECT S.*, ' +
                                                      '       RS.NomeResponsavelSepultura, ' +
                                                      '       TS.NomeTipoSepultura, ' +
                                                      '       TTS.NomeTipoTaxaSepultura ' +
                                                      'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura ' +
                                                      '                  Left Join TipoSepultura TS on S.CodTipoSepultura = TS.CodTipoSepultura ' +
                                                      '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTaxaSepultura = TTS.CodTipoTaxaSepultura ';

      case CbxOrdem.ItemIndex of
        0: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.Fila ASC');
        1: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.Fila DESC');
      end;
      FormCadastroSepultura.QrySepulturas.Open;
    End;
    2:
    Begin
      FormCadastroSepultura.QrySepulturas.Close;
      FormCadastroSepultura.QrySepulturas.SQL.Clear;
      FormCadastroSepultura.QrySepulturas.SQL.Text := 'SELECT S.*, ' +
                                                      '       RS.NomeResponsavelSepultura, ' +
                                                      '       TS.NomeTipoSepultura, ' +
                                                      '       TTS.NomeTipoTaxaSepultura ' +
                                                      'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura ' +
                                                      '                  Left Join TipoSepultura TS on S.CodTipoSepultura = TS.CodTipoSepultura ' +
                                                      '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTaxaSepultura = TTS.CodTipoTaxaSepultura ';

      case CbxOrdem.ItemIndex of
        0: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order By S.Lado ASC');
        1: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.Lado DESC');
      end;
      FormCadastroSepultura.QrySepulturas.Open;
    End;
    3:
    Begin
      FormCadastroSepultura.QrySepulturas.Close;
      FormCadastroSepultura.QrySepulturas.SQL.Clear;
      FormCadastroSepultura.QrySepulturas.SQL.Text := 'SELECT S.*, ' +
                                                      '       RS.NomeResponsavelSepultura, ' +
                                                      '       TS.NomeTipoSepultura, ' +
                                                      '       TTS.NomeTipoTaxaSepultura ' +
                                                      'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura ' +
                                                      '                  Left Join TipoSepultura TS on S.CodTipoSepultura = TS.CodTipoSepultura ' +
                                                      '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTaxaSepultura = TTS.CodTipoTaxaSepultura ';

      case CbxOrdem.ItemIndex of
        0: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.Numero ASC');
        1: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.Numero DESC');
      end;
      FormCadastroSepultura.QrySepulturas.Open;
    End;
    4:
    Begin
      FormCadastroSepultura.QrySepulturas.Close;
      FormCadastroSepultura.QrySepulturas.SQL.Clear;
      FormCadastroSepultura.QrySepulturas.SQL.Text := 'SELECT S.*, ' +
                                                      '       RS.NomeResponsavelSepultura, ' +
                                                      '       TS.NomeTipoSepultura, ' +
                                                      '       TTS.NomeTipoTaxaSepultura ' +
                                                      'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResponsavelSepultura = RS.CodResponsavelSepultura ' +
                                                      '                  Left Join TipoSepultura TS on S.CodTipoSepultura = TS.CodTipoSepultura ' +
                                                      '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTaxaSepultura = TTS.CodTipoTaxaSepultura ';

      case CbxOrdem.ItemIndex of
        0: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.NumeroDocumento ASC');
        1: FormCadastroSepultura.QrySepulturas.SQL.Add(' Order by S.NumeroDocumento DESC');
      end;
      FormCadastroSepultura.QrySepulturas.Open;
    End;
  end;

end;

procedure TFormConsultaSepultura.EdtBuscaChange(Sender: TObject);
begin

  case CBxBusca.ItemIndex of
    0: FormCadastroSepultura.QrySepulturas.Locate('NomeResponsavelSepultura',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    1: FormCadastroSepultura.QrySepulturas.Locate('Fila',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    2: FormCadastroSepultura.QrySepulturas.Locate('Lado',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    3: FormCadastroSepultura.QrySepulturas.Locate('Numero',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
    4: FormCadastroSepultura.QrySepulturas.Locate('NumeroDocumento',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);
  end;

end;

procedure TFormConsultaSepultura.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    BtnEditarClick(self);

end;

procedure TFormConsultaSepultura.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroSepultura.QrySepulturas.Close;
  FormCadastroSepultura.QryLkpTipoSepultura.Close;
  FormCadastroSepultura.QryLkpResponsavelSepultura.Close;
  FormCadastroSepultura.QryLkpTipoTaxaSepultura.Close;
  FreeAndNil(FormConsultaSepultura);

end;

procedure TFormConsultaSepultura.FormShow(Sender: TObject);
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

  FormCadastroSepultura.QrySepulturas.Close;
  FormCadastroSepultura.QrySepulturas.Open;
  FormCadastroSepultura.QryLkpTipoSepultura.Close;
  FormCadastroSepultura.QryLkpTipoSepultura.Open;
  FormCadastroSepultura.QryLkpResponsavelSepultura.Close;
  FormCadastroSepultura.QryLkpResponsavelSepultura.Open;
  FormCadastroSepultura.QryLkpTipoTaxaSepultura.Close;
  FormCadastroSepultura.QryLkpTipoTaxaSepultura.Open;

  EdtBusca.SetFocus;

end;

end.
