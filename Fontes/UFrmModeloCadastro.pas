unit UFrmModeloCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit;

type
  TFormCadastroSantaCeia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    QrySantaCeia: TMyQuery;
    DSSantaCeia: TDataSource;
    Label1: TLabel;
    DBEdtAno: TDBEdit;
    DBSpnJan: TcxDBSpinEdit;
    QryLkpMembros: TMyQuery;
    DSLkpMembros: TDataSource;
    QryLkpMembrosCodMembro: TLargeintField;
    QryLkpMembrosCodFamilia: TLargeintField;
    QryLkpMembrosNomeMembro: TStringField;
    Label2: TLabel;
    DBLkpCbxMembros: TDBLookupComboBox;
    QrySantaCeiaCodMembro: TLargeintField;
    QrySantaCeiaCodMembroAntigo: TLargeintField;
    QrySantaCeiaCodFamilia: TLargeintField;
    QrySantaCeiaano: TLargeintField;
    QrySantaCeiajaneiro: TLargeintField;
    QrySantaCeiafevereiro: TLargeintField;
    QrySantaCeiamarco: TLargeintField;
    QrySantaCeiaabril: TLargeintField;
    QrySantaCeiamaio: TLargeintField;
    QrySantaCeiajunho: TLargeintField;
    QrySantaCeiajulho: TLargeintField;
    QrySantaCeiaagosto: TLargeintField;
    QrySantaCeiasetembro: TLargeintField;
    QrySantaCeiaoutubro: TLargeintField;
    QrySantaCeianovembro: TLargeintField;
    QrySantaCeiadezembro: TLargeintField;
    QrySantaCeiaSobrenome: TStringField;
    QrySantaCeiaNomeMembro: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    DBSpnFev: TcxDBSpinEdit;
    Label5: TLabel;
    DBSpnMar: TcxDBSpinEdit;
    Label6: TLabel;
    DBSpnAbr: TcxDBSpinEdit;
    Label7: TLabel;
    DBSpnMai: TcxDBSpinEdit;
    Label8: TLabel;
    DBSpnJun: TcxDBSpinEdit;
    Label9: TLabel;
    DBSpnJul: TcxDBSpinEdit;
    Label10: TLabel;
    DBSpnAgo: TcxDBSpinEdit;
    Label11: TLabel;
    DBSpnSet: TcxDBSpinEdit;
    Label12: TLabel;
    DBSpnOut: TcxDBSpinEdit;
    Label13: TLabel;
    DBSpnNov: TcxDBSpinEdit;
    Label14: TLabel;
    DBSpnDez: TcxDBSpinEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSantaCeia: TFormCadastroSantaCeia;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal;

procedure TFormCadastroSantaCeia.BtnSalvarClick(Sender: TObject);
begin

  if DBLkpCbxMembros.Text='' then
  Begin
    ShowMessage('O Campo Membro � obrigat�rio!');
    DBLkpCbxMembros.SetFocus;
  End
  Else
  Begin
    if DBEdtAno.Text='' then
    Begin
      ShowMessage('O Campo ano � obrigat�rio!');
      DBEdtAno.SetFocus;
    End
    Else
    Begin
      QrySantaCeiaCodFamilia.Value := QryLkpMembrosCodFamilia.Value;
      QrySantaCeia.Post;
      QrySantaCeia.Close;
      QrySantaCeia.Open;
      Close;
    End;
  End;

end;

procedure TFormCadastroSantaCeia.FormShow(Sender: TObject);
begin

  DBLkpCbxMembros.SetFocus;

end;

procedure TFormCadastroSantaCeia.BtnCancelarClick(Sender: TObject);
begin

  QrySantaCeia.Cancel;
  Close;

end;

end.
