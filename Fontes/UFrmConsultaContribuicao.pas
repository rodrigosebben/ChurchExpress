unit UFrmConsultaContribuicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, DB, MemDS, DBAccess, MyAccess, frxClass, frxDBSet;

type
  TFormConsultaContribuicao = class(TForm)
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
    frxDBDataset1: TfrxDBDataset;
    frxRelContribuicoes: TfrxReport;
    BtnImprimir: TBitBtn;
    Label4: TLabel;
    CbxFalecido: TComboBox;
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBxBuscaSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOrdenacaoChange(Sender: TObject);
    procedure CbxOrdemChange(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure CbxOrdenacaoSelect(Sender: TObject);
    procedure CbxOrdemSelect(Sender: TObject);
    procedure CbxFalecidoSelect(Sender: TObject);
  private
    procedure RodaConsulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaContribuicao: TFormConsultaContribuicao;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDMPrincipal, UFrmCadastroContribuicao;

procedure TFormConsultaContribuicao.BtnAdicionarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroContribuicao.QryContribuicoes.Append;
    if FormCadastroContribuicao=nil then
      Application.CreateForm(TFormCadastroContribuicao,FormCadastroContribuicao);
    FormCadastroContribuicao.ShowModal;
  End;

end;

procedure TFormConsultaContribuicao.BtnAtualizarClick(Sender: TObject);
begin

  FormCadastroContribuicao.QryContribuicoes.Close;
  FormCadastroContribuicao.QryContribuicoes.Open;

end;

procedure TFormConsultaContribuicao.BtnEditarClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    FormCadastroContribuicao.QryContribuicoes.Edit;
    if FormCadastroContribuicao=nil then
      Application.CreateForm(TFormCadastroContribuicao,FormCadastroContribuicao);
    FormCadastroContribuicao.ShowModal;
  End;

end;

procedure TFormConsultaContribuicao.BtnExcluirClick(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
  Begin
    try
      if Application.MessageBox('Deseja realmente deletar o registro atual?','Confirma��o',Mb_YesNo+ Mb_IconInformation + Mb_DefButton1)=mrYes then
      Begin
        FormCadastroContribuicao.QryContribuicoes.Delete;
        EdtBusca.SetFocus;
      End;
    except on E: Exception do
      ShowMessage('Ocorreu um erro ao deletar este registro! Verifique se ele n�o est� sendo usando em outro cadastro no sistema.');
    end;
  End;

end;

procedure TFormConsultaContribuicao.BtnImprimirClick(Sender: TObject);
begin

  frxRelContribuicoes.ShowReport;

end;

procedure TFormConsultaContribuicao.BtnSairClick(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaContribuicao.CBxBuscaSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaContribuicao.CbxFalecidoSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaContribuicao.CbxOrdemChange(Sender: TObject);
begin

  Rodaconsulta;

end;

procedure TFormConsultaContribuicao.CbxOrdemSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaContribuicao.CbxOrdenacaoChange(Sender: TObject);
begin

  Rodaconsulta;

end;

procedure TFormConsultaContribuicao.CbxOrdenacaoSelect(Sender: TObject);
begin

  EdtBusca.SetFocus;

end;

procedure TFormConsultaContribuicao.EdtBuscaKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
  Begin
    RodaConsulta;
  End;

end;

procedure TFormConsultaContribuicao.RodaConsulta;
begin

  with FormCadastroContribuicao do
  begin
    if EdtBusca.Text = '' then
    begin
      QryContribuicoes.Close;
      QryContribuicoes.SQL.Clear;
      QryContribuicoes.SQL.Text := 'SELECT C.* , ' +
                                   '       F.Sobrenome, ' +
                                   '       M.NomeMembro, ' +
                                   '       TC.DescTpContrb ' +
                                   'FROM contribuicao C left join Familia F on C.CodFamilia = F.CodFamilia ' +
                                   '                    left join Membros M on C.CodMembro = M.CodMembro ' +
                                   '                    left Join TipoContribuicao TC ON C.CodTpContrb = TC.CodTpContrb ';
      if CbxFalecido.ItemIndex = 0 then
        QryContribuicoes.SQL.Add(' Where isnull(M.codmotivosaida)');

      QryContribuicoes.Open;
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text := 'SELECT sum(c.valor) as total ' + 'FROM contribuicao c left join membros m on c.codmembro = m.codmembro';
      if CbxFalecido.ItemIndex = 0 then
        QryTemp.SQL.Add(' and isnull(M.codmotivosaida)');

      QryTemp.Open;
      StatusBar1.Panels[0].Text := 'TOTAL DE REGISTROS: ' + IntToStr(QryContribuicoes.RecordCount);
      StatusBar1.Panels[1].Text := 'VALOR ACUMULADO: R$ ' + FormatFloat('#,##0.00', QryTemp.FieldByName('Total').AsFloat);
    end
    else
    begin
      QryContribuicoes.Close;
      QryContribuicoes.SQL.Clear;
      QryContribuicoes.SQL.Text := 'SELECT C.* , ' +
                                   '       F.Sobrenome, ' +
                                   '       M.NomeMembro, ' +
                                   '       TC.DescTpContrb ' +
                                   'FROM contribuicao C left join Familia F on C.CodFamilia = F.CodFamilia ' +
                                   '                    left join Membros M on C.CodMembro = M.CodMembro ' +
                                   '                    left Join TipoContribuicao TC ON C.CodTpContrb = TC.CodTpContrb ';
      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Text := 'SELECT Sum(c.valor) as total ' +
                          'FROM contribuicao C left join Familia F on C.CodFamilia = F.CodFamilia ' +
                          '                    left join Membros M on C.CodMembro = M.CodMembro ' +
                          '                    left Join TipoContribuicao TC ON C.CodTpContrb = TC.CodTpContrb ';
      case CBxBusca.ItemIndex of
        0:
          begin
            QryContribuicoes.SQL.add(' where DataContribuicao like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryContribuicoes.SQL.Add(' and isnull(M.codmotivosaida)');

            QryTemp.SQL.Add(' where DataContribuicao like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryTemp.SQL.Add(' and isnull(M.codmotivosaida)');

            case CbxOrdenacao.ItemIndex of
              0:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order By DataContribuicao ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DataContribuicao DESC');
                  end;
                end;
              1:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome DESC');
                  end;
                end;
              2:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro DESC');
                  end;
                end;
              3:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb DESC');
                  end;
                end;
              4:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Valor ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Valor DESC');
                  end;
                end;
            end;
          end;
        1:
          begin
            QryContribuicoes.SQL.add(' where Sobrenome like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryContribuicoes.SQL.Add(' and isnull(M.codmotivosaida)');

            QryTemp.SQL.Add(' where Sobrenome like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryTemp.SQL.Add(' and isnull(M.codmotivosaida)');

            case CbxOrdenacao.ItemIndex of
              0:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order By DataContribuicao ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DataContribuicao DESC');
                  end;
                end;
              1:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome DESC');
                  end;
                end;
              2:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro DESC');
                  end;
                end;
              3:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb DESC');
                  end;
                end;
              4:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Valor ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Valor DESC');
                  end;
                end;
            end;
          end;
        2:
          begin
            QryContribuicoes.SQL.add(' where NomeMembro like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryContribuicoes.SQL.Add(' and isnull(M.codmotivosaida)');

            QryTemp.SQL.Add(' where NomeMembro like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryTemp.SQL.Add(' and isnull(M.codmotivosaida)');

            case CbxOrdenacao.ItemIndex of
              0:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order By DataContribuicao ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DataContribuicao DESC');
                  end;
                end;
              1:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome DESC');
                  end;
                end;
              2:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro DESC');
                  end;
                end;
              3:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb DESC');
                  end;
                end;
              4:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Valor ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Valor DESC');
                  end;
                end;
            end;
          end;
        3:
          begin
            QryContribuicoes.SQL.add(' where DescTpContrb like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryContribuicoes.SQL.Add(' and isnull(M.codmotivosaida)');

            QryTemp.SQL.Add(' where DescTpContrb like ' + QuotedStr(EdtBusca.Text + '%'));
            if CbxFalecido.ItemIndex = 0 then
              QryTemp.SQL.Add(' and isnull(M.codmotivosaida)');

            case CbxOrdenacao.ItemIndex of
              0:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order By DataContribuicao ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DataContribuicao DESC');
                  end;
                end;
              1:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Sobrenome DESC');
                  end;
                end;
              2:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by NomeMembro DESC');
                  end;
                end;
              3:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by DescTpContrb DESC');
                  end;
                end;
              4:
                begin
                  case CbxOrdem.ItemIndex of
                    0:
                      QryContribuicoes.SQL.Add(' Order by Valor ASC');
                    1:
                      QryContribuicoes.SQL.Add(' Order by Valor DESC');
                  end;
                end;
            end;
          end;
      end;
      QryContribuicoes.Open;
      QryTemp.Open;
      StatusBar1.Panels[0].Text := 'TOTAL DE REGISTROS: ' + IntToStr(QryContribuicoes.RecordCount);
      StatusBar1.Panels[1].Text := 'VALOR ACUMULADO: R$ ' + FormatFloat('#,##0.00', QryTemp.FieldByName('Total').AsFloat);
    end;
  end;
end;

procedure TFormConsultaContribuicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormCadastroContribuicao.QryContribuicoes.Close;
  FreeAndNil(FormConsultaContribuicao);

end;

procedure TFormConsultaContribuicao.FormShow(Sender: TObject);
begin

  if FormPrincipal.AcessoCadastro = 'APENAS VISUALIZA��O' then
  Begin
    BtnAdicionar.Enabled := False;
    BtnEditar.Enabled    := False;
    BtnExcluir.Enabled   := False;
  End
  Else
  Begin
    if FormPrincipal.AcessoCadastro = 'ACESSO TOTAL' then
    Begin
      BtnAdicionar.Enabled := True;
      BtnEditar.Enabled    := True;
      BtnExcluir.Enabled   := True;
    End;
  End;

  FormCadastroContribuicao.MyQryLkpMembro.Close;
  FormCadastroContribuicao.MyQryLkpMembro.Open;

  FormCadastroContribuicao.MyQryLkpTipoContribuicao.Close;
  FormCadastroContribuicao.MyQryLkpTipoContribuicao.Open;


  FormCadastroContribuicao.QryContribuicoes.Close;
  FormCadastroContribuicao.QryContribuicoes.Open;

  CBxBusca.ItemIndex := 3;
  CbxOrdenacao.ItemIndex := 3;
  CbxOrdem.ItemIndex := 0;
  EdtBusca.Text := '';
  RodaConsulta;
  EdtBusca.SetFocus;

end;

end.
