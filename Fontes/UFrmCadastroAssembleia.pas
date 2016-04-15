unit UFrmCadastroAssembleia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Grids, Vcl.DBGrids, cxDropDownEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar;

type
  TFormCadastroAssembleia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBEditData: TcxDBDateEdit;
    DBCbxTipoAssembleia: TcxDBComboBox;
    BitBtn1: TBitBtn;
    DBGridParticipantes: TDBGrid;
    Label2: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAssembleia: TFormCadastroAssembleia;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UDMCadastroAssembleia;

procedure TFormCadastroAssembleia.BtnSalvarClick(Sender: TObject);
begin

  with DMCadastroAssembleia do
  Begin
    if ((QryAssembleia.State <> dsEdit) or (QryAssembleia.State <> dsInsert)) then
      Close
    Else
    Begin
      if DBEditData.Text='' then
      Begin
        ShowMessage('Informe a data da assembléia!');
        DBEditData.SetFocus;
      End
      Else
      Begin
        if DBCbxTipoAssembleia.Text='' then
        Begin
          ShowMessage('Informe o tipo de assembléia!');
          DBCbxTipoAssembleia.SetFocus;
        End
        Else
        Begin
          QryAssembleia.Post;
          Close;
        End;
      End;
    End;
  End;

end;

procedure TFormCadastroAssembleia.FormShow(Sender: TObject);
begin

  if DMCadastroAssembleia.QryAssembleia.State = dsInsert then
  Begin
    DMCadastroAssembleia.QryAssembleiaMembros.Close;
    DMCadastroAssembleia.QryAssembleiaMembros.ParamByName('pCodAssembleia').Value := 0;
    DMCadastroAssembleia.QryAssembleiaMembros.Open;
    DBGridParticipantes.Enabled := False;
  End
  Else
  Begin
    if DMCadastroAssembleia.QryAssembleia.State = dsEdit then
    Begin
      DMCadastroAssembleia.QryAssembleiaMembros.Close;
      DMCadastroAssembleia.QryAssembleiaMembros.ParamByName('pCodAssembleia').Value := DMCadastroAssembleia.QryAssembleiaCodAssembleia.Value;
      DMCadastroAssembleia.QryAssembleiaMembros.Open;
      DBGridParticipantes.Enabled := True;
    End;
  End;
  DBEditData.SetFocus;

end;

procedure TFormCadastroAssembleia.BitBtn1Click(Sender: TObject);
begin

  if DBEditData.Text='' then
  Begin
    ShowMessage('Informe a data da assembléia!');
    DBEditData.SetFocus;
  End
  Else
  Begin
    if DBCbxTipoAssembleia.Text='' then
    Begin
      ShowMessage('Informe o tipo de assembléia!');
      DBCbxTipoAssembleia.SetFocus;
    End
    Else
    Begin
      with DMCadastroAssembleia do
      Begin
        QryAssembleia.Post;

        QryMembrosVotantes.Close;
        QryMembrosVotantes.Open;

        while not QryMembrosVotantes.eof do
        Begin
          QryAssembleiaMembros.Open;
          QryAssembleiaMembros.Append;
          QryAssembleiaMembrosCodAssembleia.Value := QryAssembleiaCodAssembleia.Value;
          QryAssembleiaMembrosCodMembro.Value := QryMembrosVotantescodmembro.Value;
          QryAssembleiaMembrosNomeMembro.Value := QryMembrosVotantesnomemembro.Value;
          QryAssembleiaMembros.Post;
          QryMembrosVotantes.Next;
        End;
        QryAssembleiaMembros.Close;
        QryAssembleiaMembros.ParamByName('pCodAssembleia').Value := QryAssembleiaCodAssembleia.Value;
        QryAssembleiaMembros.Open;

        DBGridParticipantes.Enabled := True;
        DBGridParticipantes.SetFocus;
      End;
    End;
  End;

end;

procedure TFormCadastroAssembleia.BtnCancelarClick(Sender: TObject);
begin

  DMCadastroAssembleia.QryAssembleia.Cancel;
  Close;

end;

end.
