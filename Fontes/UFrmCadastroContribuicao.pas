unit UFrmCadastroContribuicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, RxToolEdit, RxDBCtrl;

type
  TFormCadastroContribuicao = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QryContribuicoes: TMyQuery;
    DSContribuicoes: TDataSource;
    MyQryLkpMembro: TMyQuery;
    MyQryLkpTipoContribuicao: TMyQuery;
    DSLkpMembro: TDataSource;
    DSLkpTipoContribuicao: TDataSource;
    MyQryLkpMembroCodMembro: TLargeintField;
    MyQryLkpMembroNomeMembro: TStringField;
    MyQryLkpMembroCodFamilia: TLargeintField;
    MyQryLkpTipoContribuicaoCodTpContrb: TIntegerField;
    MyQryLkpTipoContribuicaoDescTPContrb: TStringField;
    MyQryLkpTipoContribuicaoColetiva: TBooleanField;
    Label2: TLabel;
    DBEdtData: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DBEdtValor: TDBEdit;
    QryContribuicoesCodMembroAntigo: TLargeintField;
    QryContribuicoesCodFamilia: TLargeintField;
    QryContribuicoesCodTpContrb: TLargeintField;
    QryContribuicoesValor: TFloatField;
    QryContribuicoesCodContribuicao: TLargeintField;
    QryContribuicoesHora: TTimeField;
    QryContribuicoesCodMembro: TLargeintField;
    QryContribuicoesEnvelope: TLargeintField;
    QryContribuicoesSobrenome: TStringField;
    QryContribuicoesNomeMembro: TStringField;
    QryContribuicoesDescTpContrb: TStringField;
    QryTemp: TMyQuery;
    DBEdtEnvelope: TDBEdit;
    MyQryLkpMembroEnvelope: TLargeintField;
    QryContribuicoesDataContribuicao: TDateField;
    SpdBtnBuscaMembro: TSpeedButton;
    DBLkpTipoContribuicao: TDBLookupComboBox;
    EdtNomeMembro: TEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdtEnvelopeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLkpMembroEnter(Sender: TObject);
    procedure SpdBtnBuscaMembroClick(Sender: TObject);

  private
    procedure PreencheMembroAntigo(Codigo:Integer);
    { Private declarations }
  public
    var CodMembroAntigo,CodMembro:Integer;
    { Public declarations }
  end;

var
  FormCadastroContribuicao: TFormCadastroContribuicao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmBuscaMembro;

procedure TFormCadastroContribuicao.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtData.Text='' then
  Begin
    ShowMessage('O Campo data � obrigat�rio!');
    DBEdtData.SetFocus;
  End
  Else
  Begin
    if DBEdtEnvelope.Text='' then
    Begin
      ShowMessage('O Campo Envelope � obrigat�rio!');
      DBEdtEnvelope.SetFocus;
    End
    Else
    Begin
      if EdtNomeMembro.Text='' then
      Begin
        ShowMessage('O Campo Membro � obrigat�rio!');
        SpdBtnBuscaMembroClick(self);
      End
      Else
      Begin
        if DBLkpTipoContribuicao.Text='' then
        Begin
          ShowMessage('O Campo Tipo de Contribui��o � obrigat�rio!');
          DBLkpTipoContribuicao.SetFocus;
        End
        Else
        Begin
          if DBEdtValor.Text='' then
          Begin
            ShowMessage('O Campo valor � obrigat�rio!');
            DBEdtValor.SetFocus;
          End
          Else
          Begin
            QryContribuicoesCodFamilia.Value := FormPrincipal.CodFamiliaGlobal;
            PreencheMembroAntigo(FormPrincipal.CodMembroGlobal);
            QryContribuicoes.Post;
            QryContribuicoes.Close;
            QryContribuicoes.Open;
            Close;
          End;
        End;
      End;
    End;
  End;

end;

procedure TFormCadastroContribuicao.DBEdtEnvelopeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if ((key=#13) or (key=#9)) then
  Begin
    MyQryLkpMembro.Close;
    MyQryLkpMembro.SQL.Clear;
    MyQryLkpMembro.SQL.Text := 'Select CodMembro, NomeMembro, CodFamilia, Envelope ' +
                               'From Membros ' +
                               'where envelope = ' + DBEdtEnvelope.Text +
                               ' and isnull(codmotivosaida) Order by NomeMembro';
    MyQryLkpMembro.Open;

    if MyQryLkpMembro.RecordCount=0 then
    Begin
      ShowMessage('Envelope n�o encontrado!');
      DBEdtEnvelope.Clear;
      DBEdtEnvelope.SetFocus;
    End
    Else
    Begin
      EdtNomeMembro.ReadOnly := False;
      EdtNomeMembro.Enabled := True;
      QryContribuicoesCodMembro.Value:= MyQryLkpMembroCodMembro.Value;
      FormPrincipal.CodFamiliaGlobal:= MyQryLkpMembroCodFamilia.Value;
      EdtNomeMembro.Text := MyQryLkpMembroNomeMembro.Value;
      EdtNomeMembro.ReadOnly := True;
      EdtNomeMembro.Enabled := False;
      DBLkpTipoContribuicao.SetFocus;
    End;
  End;

end;

procedure TFormCadastroContribuicao.DBLkpMembroEnter(Sender: TObject);
begin

  MyQryLkpMembro.Close;
  MyQryLkpMembro.SQL.Clear;
  MyQryLkpMembro.SQL.Text := 'Select CodMembro, NomeMembro, CodFamilia, Envelope ' +
                             'From Membros ' +
                             'Order by NomeMembro';
  MyQryLkpMembro.Open;

end;

procedure TFormCadastroContribuicao.FormShow(Sender: TObject);
begin

  if QryContribuicoes.State=dsInsert then
  Begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.ADD('Select DataContribuicao from Contribuicao');
    QryTemp.Open;
    QryTemp.Last;
    DBEdtData.Date := QryTemp.FieldByName('DataContribuicao').Value;
    EdtNomeMembro.Clear;
  End;

  if QryContribuicoes.State=dsEdit then
  Begin
    MyQryLkpMembro.Close;
    MyQryLkpMembro.SQL.Clear;
    MyQryLkpMembro.SQL.Text := 'Select CodMembro, NomeMembro, CodFamilia, Envelope ' +
                               'From Membros ' +
                               'Where CodMembro = ' + QryContribuicoesCodMembro.AsString;
    MyQryLkpMembro.Open;
    EdtNomeMembro.Text := MyQryLkpMembroNomeMembro.Value;
  End;

  DBEdtEnvelope.SetFocus;
  MyQryLkpMembro.Close;
  MyQryLkpMembro.SQL.Clear;
  MyQryLkpMembro.SQL.Text := 'Select CodMembro, NomeMembro, CodFamilia, Envelope ' +
                             'From Membros ' +
                             'Order by NomeMembro';
  MyQryLkpMembro.Open;
  MyQryLkpTipoContribuicao.Open;

end;

procedure TFormCadastroContribuicao.SpdBtnBuscaMembroClick(Sender: TObject);
begin

  FormBuscaMembro.ShowModal;
  QryContribuicoesCodMembro.Value := FormPrincipal.CodMembroGlobal;
  PreencheMembroAntigo(FormPrincipal.CodMembroGlobal);

  EdtNomeMembro.Text := FormPrincipal.NomeMembroGlobal;
  DBEdtEnvelope.Text := IntTostr(FormPrincipal.EnvelopeGlobal);

end;

procedure TFormCadastroContribuicao.PreencheMembroAntigo(Codigo:Integer);
begin
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text := 'Select codmembroantigo from membros where codmembro = ' + IntToStr(codigo);
  QryTemp.Open;
  if not QryTemp.IsEmpty then
    QryContribuicoesCodMembroAntigo.Value := QryTemp.FieldByName('codmembroantigo').Value;
end;

procedure TFormCadastroContribuicao.BtnCancelarClick(Sender: TObject);
begin

  QryContribuicoes.Cancel;
  MyQryLkpMembro.Close;
  MyQryLkpTipoContribuicao.Close;
  Close;

end;

end.
