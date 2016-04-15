unit UFrmCadastroVisitanteSantaCeia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroVisitanteSantaCeia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QrySantaCeiaVisitante: TMyQuery;
    DSSantaCeiaVisitante: TDataSource;
    Label1: TLabel;
    DBEdtNomeVisitante: TDBEdit;
    Label2: TLabel;
    DBEdtOrigem: TDBEdit;
    DBChkBxLuterano: TDBCheckBox;
    Label3: TLabel;
    QuerySantaCeiaVisitantePresenca: TMyQuery;
    DSSantaCeiaVisitantePresenca: TDataSource;
    QuerySantaCeiaVisitantePresencaCodSantaCeiaVisitantePresenca: TLargeintField;
    QuerySantaCeiaVisitantePresencaCodSantaCeiaVisitante: TLargeintField;
    QuerySantaCeiaVisitantePresencaDataUltimaVisita: TDateTimeField;
    QrySantaCeiaVisitanteCodSantaCeiaVisitante: TLargeintField;
    QrySantaCeiaVisitanteNomeVisitante: TStringField;
    QrySantaCeiaVisitanteLuterano: TBooleanField;
    QrySantaCeiaVisitanteOrigem: TStringField;
    DBGridVisitas: TDBGrid;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridVisitasCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVisitanteSantaCeia: TFormCadastroVisitanteSantaCeia;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroVisitanteSantaCeia.BtnSalvarClick(Sender: TObject);
begin

  if DBEdtNomeVisitante.Text='' then
  Begin
    ShowMessage('O Campo Nome Visitante é obrigatório!');
    DBEdtNomeVisitante.SetFocus;
  End
  Else
  Begin
    if DBEdtOrigem.Text='' then
    Begin
      ShowMessage('O Campo Origem é obrigatório!');
      DBEdtOrigem.SetFocus;
    End
    Else
    Begin
      QrySantaCeiaVisitante.Post;
      QrySantaCeiaVisitante.Close;
      QrySantaCeiaVisitante.Open;
      Close;
    End;
  End;

end;

procedure TFormCadastroVisitanteSantaCeia.DBGridVisitasCellClick(Column: TColumn);
begin

  if QrySantaCeiaVisitante.State = dsInsert then
  Begin
    if DBEdtNomeVisitante.Text='' then
    Begin
      ShowMessage('O Campo Nome Visitante é obrigatório!');
      DBEdtNomeVisitante.SetFocus;
    End
    Else
    Begin
      if DBEdtOrigem.Text='' then
      Begin
        ShowMessage('O Campo Origem é obrigatório!');
        DBEdtOrigem.SetFocus;
      End
      Else
      Begin
        QrySantaCeiaVisitante.Post;
        DBGridVisitas.Enabled := True;
        DBGridVisitas.SetFocus;
      End;
    End;
  End
  Else
  Begin
    if QrySantaCeiaVisitante.State = dsEdit then
    Begin
        DBGridVisitas.Enabled := True;
        DBGridVisitas.SetFocus;
    End;
  End;

end;

procedure TFormCadastroVisitanteSantaCeia.FormShow(Sender: TObject);
begin

  QuerySantaCeiaVisitantePresenca.Close;
  QuerySantaCeiaVisitantePresenca.Open;

  DBEdtNomeVisitante.SetFocus;

  if QrySantaCeiaVisitante.State = dsEdit then
    DBGridVisitas.Enabled := true
  Else
  Begin
    if QrySantaCeiaVisitante.State = dsInsert then
    Begin
      DBGridVisitas.Enabled := False;
      DBChkBxLuterano.Checked := True;
    End;
  End;

end;

procedure TFormCadastroVisitanteSantaCeia.BtnCancelarClick(Sender: TObject);
begin

  QrySantaCeiaVisitante.Cancel;
  Close;

end;

end.
