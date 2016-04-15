unit UFrmBuscaFamilia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormBuscaFamilia = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    QryBuscaMembro: TMyQuery;
    DSBuscaMembro: TDataSource;
    Label1: TLabel;
    CbxBuscarPor: TComboBox;
    Label2: TLabel;
    CbxOrdenarPor: TComboBox;
    EdtBusca: TEdit;
    CbxTipoBusca: TComboBox;
    Label3: TLabel;
    CbxTipoMembro: TComboBox;
    Label4: TLabel;
    BtnIncluiFamilia: TBitBtn;
    QryBuscaMembroCodMembro: TLargeintField;
    QryBuscaMembroNomeMembro: TStringField;
    QryBuscaMembroCodFamilia: TLargeintField;
    QryBuscaMembroSobrenome: TStringField;
    QryBuscaMembroEnvelope: TLargeintField;
    procedure EdtBuscaChange(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CbxBuscarPorSelect(Sender: TObject);
    procedure CbxOrdenarPorSelect(Sender: TObject);
    procedure CbxTipoBuscaSelect(Sender: TObject);
    procedure CbxTipoMembroSelect(Sender: TObject);
    procedure BtnIncluiFamiliaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscaFamilia: TFormBuscaFamilia;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrmPrincipal, UFrmCadastroFamilia;

procedure TFormBuscaFamilia.BtnIncluiFamiliaClick(Sender: TObject);
begin

  FormCadastroFamilia.QryFamilia.Open;
  FormCadastroFamilia.QryFamilia.Append;
  FormCadastroFamilia.ShowModal;
  QryBuscaMembro.Refresh;

end;

procedure TFormBuscaFamilia.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormBuscaFamilia.BtnSalvarClick(Sender: TObject);
begin

  FormPrincipal.CodMembroGlobal := QryBuscaMembroCodMembro.Value;
  FormPrincipal.NomeMembroGlobal := QryBuscaMembroNomeMembro.Value;
  FormPrincipal.CodFamiliaGlobal := QryBuscaMembroCodFamilia.Value;
  FormPrincipal.NomeFamiliaGlobal := QryBuscaMembroSobrenome.Value;
  FormPrincipal.EnvelopeGlobal := QryBuscaMembroEnvelope.Value;
  Close;

end;

procedure TFormBuscaFamilia.CbxBuscarPorSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormBuscaFamilia.CbxOrdenarPorSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormBuscaFamilia.CbxTipoBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormBuscaFamilia.CbxTipoMembroSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormBuscaFamilia.EdtBuscaChange(Sender: TObject);
begin

  QryBuscaMembro.Close;
  QryBuscaMembro.SQL.Clear;
  QryBuscaMembro.SQL.Add('Select m.CodMembro, m.NomeMembro, f.CodFamilia, f.Sobrenome, m.Envelope');
  QryBuscaMembro.SQL.Add('From Membros M right  join Familia F on m.codfamilia = f.codfamilia');

  case CbxTipoBusca.ItemIndex of
    0:Begin
        case CbxBuscarPor.ItemIndex of
          0: QryBuscaMembro.SQL.Add(' where m.codmembro like ' + QuotedStr('%' + EdtBusca.Text + ('%')));
          1: QryBuscaMembro.SQL.Add(' where m.Nomemembro like ' + QuotedStr('%' + EdtBusca.Text + ('%')));
          2: QryBuscaMembro.SQL.Add(' where m.codFamilia like ' + QuotedStr('%' + EdtBusca.Text + ('%')));
          3: QryBuscaMembro.SQL.Add(' where f.sobrenome like ' + QuotedStr('%' + EdtBusca.Text + ('%')));
          4: QryBuscaMembro.SQL.Add(' where m.Envelope like ' + QuotedStr('%' + EdtBusca.Text + ('%')));
        end;
      End;
    1:Begin
        case CbxBuscarPor.ItemIndex of
          0: QryBuscaMembro.SQL.Add(' where m.codmembro like ' + QuotedStr(EdtBusca.Text + ('%')));
          1: QryBuscaMembro.SQL.Add(' where m.Nomemembro like ' + QuotedStr(EdtBusca.Text + ('%')));
          2: QryBuscaMembro.SQL.Add(' where m.codFamilia like ' + QuotedStr(EdtBusca.Text + ('%')));
          3: QryBuscaMembro.SQL.Add(' where f.sobrenome like ' + QuotedStr(EdtBusca.Text + ('%')));
          4: QryBuscaMembro.SQL.Add(' where m.Envelope like ' + QuotedStr(EdtBusca.Text + ('%')));
        end;
      End;
  end;

  if CbxTipoMembro.ItemIndex = 0 then
    QryBuscaMembro.SQL.Add(' and isnull(m.codmotivosaida)');

  case CbxOrdenarPor.ItemIndex of
    0: QryBuscaMembro.SQL.Add(' Order by m.CodMembro');
    1: QryBuscaMembro.SQL.Add(' Order by m.NomeMembro, F.Sobrenome,m.codfamilia');
    2: QryBuscaMembro.SQL.Add(' Order by m.CodFamilia, F.Sobrenome');
    3: QryBuscaMembro.SQL.Add(' Order by F.sobrenome, m.codfamilia');
    4: QryBuscaMembro.SQL.Add(' Order by m.Envelope');
  end;

  QryBuscaMembro.Open;

end;

procedure TFormBuscaFamilia.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  QryBuscaMembro.Close;
  QryBuscaMembro.SQL.Clear;
  QryBuscaMembro.SQL.Add('Select m.CodMembro, m.NomeMembro, f.CodFamilia, f.Sobrenome, m.envelope');
  QryBuscaMembro.SQL.Add('From Membros M right join Familia F on m.codfamilia = f.codfamilia');
  QryBuscaMembro.SQL.Add('Order by m.NomeMembro');
  QryBuscaMembro.Open;

end;

procedure TFormBuscaFamilia.FormShow(Sender: TObject);
begin

  QryBuscaMembro.Close;
  QryBuscaMembro.SQL.Clear;
  QryBuscaMembro.SQL.Add('Select m.CodMembro, m.NomeMembro, f.CodFamilia, f.Sobrenome, m.envelope');
  QryBuscaMembro.SQL.Add('From Membros M right join Familia F on m.codfamilia = f.codfamilia');
  QryBuscaMembro.SQL.Add('Order by F.Sobrenome, m.codfamilia, m.NomeMembro');
  QryBuscaMembro.Open;

  EdtBusca.text:= '';
  EdtBusca.SetFocus;

end;

end.
