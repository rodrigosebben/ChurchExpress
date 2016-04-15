unit UFrmCadastroSepultura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, RxToolEdit, RxDBCtrl,
  Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFormCadastroSepultura = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    QrySepulturas: TMyQuery;
    DSSepulturas: TDataSource;
    QrySepulturasCodSepultura: TLargeintField;
    QrySepulturasCodResponsavelSepultura: TLargeintField;
    QrySepulturasFila: TStringField;
    QrySepulturasLado: TStringField;
    QrySepulturasNumero: TStringField;
    QrySepulturasCodTipoSepultura: TLargeintField;
    QrySepulturasSepultura: TStringField;
    QrySepulturasCodTipoTaxaSepultura: TLargeintField;
    QrySepulturasDataDesapropriacao: TDateTimeField;
    QrySepulturasNumeroDocumento: TStringField;
    QrySepulturasMotivos: TMemoField;
    QrySepulturasNomeResponsavelSepultura: TStringField;
    QrySepulturasNomeTipoSepultura: TStringField;
    QrySepulturasNomeTipoTaxaSepultura: TStringField;
    QryLkpTipoSepultura: TMyQuery;
    QryLkpResponsavelSepultura: TMyQuery;
    QryLkpTipoSepulturaCodTipoSepultura: TLargeintField;
    QryLkpTipoSepulturaNomeTipoSepultura: TStringField;
    QryLkpTipoTaxaSepultura: TMyQuery;
    DSLkpTipoSepultura: TDataSource;
    DSLkpResponsavelSepultura: TDataSource;
    DSLkpTipoTaxaSepultura: TDataSource;
    QryLkpResponsavelSepulturaCodResponsavelSepultura: TLargeintField;
    QryLkpResponsavelSepulturaNomeResponsavelSepultura: TStringField;
    QryLkpResponsavelSepulturaEndereco: TStringField;
    QryLkpResponsavelSepulturaCompl: TStringField;
    QryLkpResponsavelSepulturaBairro: TStringField;
    QryLkpResponsavelSepulturaCidade: TStringField;
    QryLkpResponsavelSepulturaTelefone: TStringField;
    QryLkpResponsavelSepulturaCelular: TStringField;
    QryLkpResponsavelSepulturaEmail: TStringField;
    QryLkpResponsavelSepulturaCodMembro: TLargeintField;
    QryLkpResponsavelSepulturacep: TStringField;
    QryLkpTipoTaxaSepulturaCodTipoTaxaSepultura: TLargeintField;
    QryLkpTipoTaxaSepulturaNomeTipoTaxaSepultura: TStringField;
    QryLkpTipoTaxaSepulturaValor: TFloatField;
    PageControl1: TPageControl;
    TbSCadastro: TTabSheet;
    TbSPagamentos: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBEdtFila: TDBEdit;
    DBEdtLado: TDBEdit;
    DBEdtNumero: TDBEdit;
    DBEdtNumeroDocumento: TDBEdit;
    DBMmMotivos: TDBMemo;
    DBLkpCbxTipoSepultura: TDBLookupComboBox;
    DBLkpCbxNomeResponsavel: TDBLookupComboBox;
    DBCbxSepultura: TDBComboBox;
    DBDtEdtDesapropriado: TDBDateEdit;
    DBLkpCbxTipoTaxa: TDBLookupComboBox;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    BtnAdicionar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLkpCbxTipoSepulturaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLkpCbxNomeResponsavelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLkpCbxTipoTaxaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSepultura: TFormCadastroSepultura;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroTipoSepultura, UFrmCadastroResponsavelSepultura, UFrmCadastroTaxasSepultamento,
  UFrmCadastroSepulturaPagamento;

procedure TFormCadastroSepultura.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtFila.Text='' then
  Begin
    ShowMessage('O Campo Fila � obrigat�rio!');
    DBEdtFila.SetFocus;
  End
  Else
  Begin
    if DBEdtLado.Text='' then
    Begin
      ShowMessage('O Campo Lado � obrigat�rio!');
      DBEdtLado.SetFocus;
    End
    Else
    Begin
      if DBEdtNumero.Text='' then
      Begin
        ShowMessage('O Campo n�mero � obrigat�rio!');
        DBEdtNumero.SetFocus;
      End
      Else
      Begin
        if DBLkpCbxTipoSepultura.Text='' then
        Begin
          ShowMessage('O Campo Tipo de Sepultura � obrigat�rio!');
          DBLkpCbxTipoSepultura.SetFocus;
        End
        Else
        Begin
          if DBLkpCbxNomeResponsavel.Text='' then
          Begin
            ShowMessage('O Campo Respons�vel � obrigat�rio!');
            DBLkpCbxNomeResponsavel.SetFocus;
          End
          Else
          Begin
            if DBLkpCbxTipoTaxa.Text='' then
            Begin
              ShowMessage('O Campo tipo de taxa � obrigat�rio!');
              DBLkpCbxTipoTaxa.SetFocus;
            End
            Else
            Begin
              if DBCbxSepultura.Text='' then
              Begin
                ShowMessage('O Campo sepultura � obrigat�rio!');
                DBCbxSepultura.SetFocus;
              End
              Else
              Begin
                QrySepulturas.Post;
                QrySepulturas.Close;
                QrySepulturas.Open;
                TbSCadastro.Show;
                Close;
              End;
            End;
          End;
        End;
      End;
    End;
  End;

end;

procedure TFormCadastroSepultura.DBLkpCbxNomeResponsavelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key=VK_F2 then
  Begin
    FormCadastroResponsavelSepultura.QryResponsavelSepultura.Open;
    FormCadastroResponsavelSepultura.MyQryLkpMembros.Open;
    FormCadastroResponsavelSepultura.QryResponsavelSepultura.Append;
    FormCadastroResponsavelSepultura.ShowModal;
    QryLkpResponsavelSepultura.Refresh;
  End;

end;

procedure TFormCadastroSepultura.DBLkpCbxTipoSepulturaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key=VK_F2 then
  Begin
    FormCadastroTipoSepultura.QryTipoSepultura.Open;
    FormCadastroTipoSepultura.QryTipoSepultura.Append;
    FormCadastroTipoSepultura.ShowModal;
    QryLkpTipoSepultura.Refresh;
  End;

end;

procedure TFormCadastroSepultura.DBLkpCbxTipoTaxaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key=VK_F2 then
  Begin
    FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Open;
    FormCadastroTaxasSepultamento.QryTipoTaxaSepultura.Append;
    FormCadastroTaxasSepultamento.ShowModal;
    QryLkpTipoTaxaSepultura.Refresh;
  End;

end;

procedure TFormCadastroSepultura.FormShow(Sender: TObject);
begin

  DBEdtFila.SetFocus;
  if QrySepulturas.State=dsEdit then
  Begin
    TbSPagamentos.Enabled := True;
    FormCadastroSepulturaPagamento.QryFalecidos.Close;
    FormCadastroSepulturaPagamento.QryFalecidos.ParamByName('pCodSepultura').Value := QrySepulturasCodSepultura.Value;
    FormCadastroSepulturaPagamento.QryFalecidos.Open;
  End
  Else
    TbSPagamentos.Enabled := False;

end;

procedure TFormCadastroSepultura.PageControl1Change(Sender: TObject);
begin

  if TbSPagamentos.Showing then
  Begin
    FormCadastroSepulturaPagamento.QryFalecidos.Close;
    FormCadastroSepulturaPagamento.QryFalecidos.ParamByName('pCodSepultura').Value := QrySepulturasCodSepultura.Value;
    FormCadastroSepulturaPagamento.QryFalecidos.Open;
  End;

end;

procedure TFormCadastroSepultura.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroSepulturaPagamento.QryFalecidos.Append;
    if FormCadastroSepulturaPagamento=nil then
      Application.CreateForm(TFormCadastroSepulturaPagamento,FormCadastroSepulturaPagamento);
    FormCadastroSepulturaPagamento.ShowModal;
  End;

end;

procedure TFormCadastroSepultura.BtnCancelarClick(Sender: TObject);
begin

  TbSCadastro.Show;
  QrySepulturas.Cancel;
  Close;

end;

procedure TFormCadastroSepultura.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    FormCadastroSepulturaPagamento.QryFalecidos.Edit;
    if FormCadastroSepulturaPagamento=nil then
      Application.CreateForm(TFormCadastroSepulturaPagamento,FormCadastroSepulturaPagamento);
    FormCadastroSepulturaPagamento.ShowModal;
  End;

end;

procedure TFormCadastroSepultura.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoControleCemiterio = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroSepulturaPagamento.QryFalecidos.Delete;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

end.
