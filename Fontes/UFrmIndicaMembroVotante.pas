unit UFrmIndicaMembroVotante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, MyAccess, MemDS, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormIndicaMembroVotante = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BtnCancelar: TBitBtn;
    BitBtn1: TBitBtn;
    DBLkpCbxVotante: TDBLookupComboBox;
    QryVotante: TMyQuery;
    CMDAtualizaMembros: TMyCommand;
    QryVotanteCodMembro: TLargeintField;
    QryVotanteNomeMembro: TStringField;
    QryVotanteVotante: TDateTimeField;
    DSVotante: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndicaMembroVotante: TFormIndicaMembroVotante;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFormIndicaMembroVotante.BitBtn1Click(Sender: TObject);
begin

  CMDAtualizaMembros.ParamByName('pCodMembro').Value := QryVotanteCodMembro.Value;
  CMDAtualizaMembros.Execute;
  ShowMessage('O Membro ' + QryVotanteCodMembro.Text + '-' + QryVotanteNomeMembro.Text + ' foi adicionado como membro votante!');
  QryVotante.Close;
  QryVotante.Open;
  DBLkpCbxVotante.SetFocus;

end;

procedure TFormIndicaMembroVotante.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormIndicaMembroVotante.FormShow(Sender: TObject);
begin

  QryVotante.Close;
  QryVotante.Open;
  DBLkpCbxVotante.SetFocus;

end;

end.
