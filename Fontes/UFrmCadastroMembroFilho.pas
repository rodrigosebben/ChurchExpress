unit UFrmCadastroMembroFilho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, MyAccess, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, RxToolEdit, RxDBCtrl, cxTextEdit, cxDBEdit,
  cxCheckBox;

type
  TFormCadastroMembroFilho = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdtNomeFilho: TcxDBTextEdit;
    Label3: TLabel;
    DBDtEdtDataNascimento: TDBDateEdit;
    DBRdGrpFiliadoCongregacao: TDBRadioGroup;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMembroFilho: TFormCadastroMembroFilho;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroMembro;

procedure TFormCadastroMembroFilho.BtnSalvarClick(Sender: TObject);
begin


  if DBEdtNomeFilho.Text='' then
  Begin
    ShowMessage('O Campo Nome � obrigat�rio!');
    DBEdtNomeFilho.SetFocus;
  End
  Else
  Begin
    FormCadastroMembro.QryFilhosCodFamilia.Value := FormCadastroMembro.QryMembrosCodFamilia.Value;
    FormCadastroMembro.QryFilhosCodMembro.Value := FormCadastroMembro.QryMembrosCodMembro.Value;
    FormCadastroMembro.QryFilhos.Post;
    FormCadastroMembro.QryFilhos.Close;
    FormCadastroMembro.QryFilhos.Open;
    Close;
  End;

end;

procedure TFormCadastroMembroFilho.FormShow(Sender: TObject);
begin

  DBEdtNomeFilho.SetFocus;

end;

procedure TFormCadastroMembroFilho.BtnCancelarClick(Sender: TObject);
begin

  FormCadastroMembro.QryFilhos.Cancel;
  Close;

end;

end.
