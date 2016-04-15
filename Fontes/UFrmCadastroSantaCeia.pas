unit UFrmCadastroSantaCeia;

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
    DBSpnJan: TcxDBSpinEdit;
    QryLkpMembros: TMyQuery;
    DSLkpMembros: TDataSource;
    QryLkpMembrosCodMembro: TLargeintField;
    QryLkpMembrosCodFamilia: TLargeintField;
    QryLkpMembrosNomeMembro: TStringField;
    Label2: TLabel;
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
    DBEdtAno: TDBEdit;
    DBLkpCbxMembros: TDBLookupComboBox;
    QryTemp: TMyQuery;
    QryLkpMembroscodmembroantigo: TLargeintField;
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

  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Add('Select * from Santa_Ceia_antigo where codMembro = ' + QrySantaCeiaCodMembro.Text + ' and Ano = ' + QrySantaCeiaano.Text);
  QryTemp.Open;

  if QryTemp.IsEmpty then
  Begin
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
        if QrySantaCeia.State= dsInsert then
          QrySantaCeia.Last;
        Close;
      End;
    End;
  End
  Else
  Begin
    if QrySantaCeia.State= dsInsert then
    Begin
      if Application.MessageBox('Um registro com o mesmo membro e mesmo ano foi encontrado no banco de dados. Deseja acessar esse registro e atualizar as informa��es?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        QrySantaCeia.Cancel;
        QrySantaCeia.Locate('CodSantaCeia',QryTemp.FieldByName('CodSantaCeia').Text,[loCaseInsensitive]);
        QrySantaCeia.Edit;
        DBSpnJan.SetFocus;
      End
      Else
      Begin
        QrySantaCeia.Cancel;
      End;
    End
    Else
    Begin
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
          QrySantaCeiaCodMembroAntigo.Value := QryLkpMembroscodmembroantigo.Value;
          QrySantaCeia.Post;
          if QrySantaCeia.State= dsInsert then
            QrySantaCeia.Last;
          Close;
        End;
      End;
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
