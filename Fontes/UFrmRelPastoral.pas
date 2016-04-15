unit UFrmRelPastoral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB, frxClass, MemDS, DBAccess,
  MyAccess, frxDBSet, frxExportRTF, frxExportPDF, frxExportHTML, frxExportCSV, frxExportText, frxExportImage, Vcl.Grids, Vcl.DBGrids;

type
  TFormRelPastoral = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    BtnImprimir: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    CbxAno: TComboBox;
    Label3: TLabel;
    CbxTipoMembro: TComboBox;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    RelPastoral: TfrxReport;
    SpdBtnBuscaFamilia: TSpeedButton;
    EdtNomeFamilia: TEdit;
    frxDBDataset1: TfrxDBDataset;
    DBGrid1: TDBGrid;
    BtnGerarPDF: TBitBtn;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    CbxFamilia: TComboBox;
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SpdBtnBuscaFamiliaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RodaConsulta;
    procedure BtnGerarPDFClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CbxFamiliaChange(Sender: TObject);
  private
    { Private declarations }
  public
    var
      TotalFamilias:integer;
      TotalMembros:integer;
    { Public declarations }
  end;

var
  FormRelPastoral: TFormRelPastoral;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrmPrincipal, UFrmBuscaFamilia, UDMRelPastoral;

procedure TFormRelPastoral.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormRelPastoral.BtnGerarPDFClick(Sender: TObject);
begin

  RodaConsulta;
  RelPastoral.Variables.Clear;
  RelPastoral.Variables[' ' + 'Geral'] := Null;
  RelPastoral.Variables.AddVariable('Geral','TotalFamilia',QuotedStr(IntToStr(TotalFamilias)));
  RelPastoral.PrepareReport();
  RelPastoral.Export(frxPDFExport1);
  TotalFamilias:=0;

end;

procedure TFormRelPastoral.BtnImprimirClick(Sender: TObject);
begin

  RodaConsulta;
  RelPastoral.Variables.Clear;
  RelPastoral.Variables[' ' + 'Geral'] := Null;
  RelPastoral.Variables.AddVariable('Geral','TotalFamilia',QuotedStr(IntToStr(TotalFamilias)));
  RelPastoral.ShowReport;
  TotalFamilias:=0;

end;

procedure TFormRelPastoral.Button1Click(Sender: TObject);
begin

  RodaConsulta;

end;

procedure TFormRelPastoral.CbxFamiliaChange(Sender: TObject);
begin

  case CbxFamilia.ItemIndex of
    0:Begin
        EdtNomeFamilia.Tag := 0;
        EdtNomeFamilia.enabled := False;
        SpdBtnBuscaFamilia.enabled := False;
      End;
    1:Begin
        SpdBtnBuscaFamilia.enabled := True;
        SpdBtnBuscaFamiliaClick(self);
      End;
  end;


end;

procedure TFormRelPastoral.FormShow(Sender: TObject);
begin

  with DMRelPastoral do
  Begin
    QueryTemp.Close;
    QueryTemp.SQL.Clear;
    QueryTemp.SQL.Add('SELECT distinct ano FROM santa_ceia_antigo s order by ano');
    QueryTemp.open;
    QueryTemp.First;

    CbxAno.Items.Clear;
    CbxAno.Items.Add('TODOS');

    while not QueryTemp.Eof do
    Begin
      if QueryTemp.FieldByName('ano').AsString <> null then
        CbxAno.Items.Add(QueryTemp.FieldByName('ano').AsString);
      QueryTemp.Next;
    End;
    CbxAno.ItemIndex := 0;
    CbxTipoMembro.ItemIndex := 0;
    CbxFamilia.ItemIndex := 0;
    EdtNomeFamilia.Clear;
    EdtNomeFamilia.Tag :=0;
    CbxAno.SetFocus;
  End;

end;

procedure TFormRelPastoral.RodaConsulta;
Var
  where:boolean;
  FamiliaAtual,MembroAtual:integer;
begin

  where:= false;

  WITH DMRelPastoral do
  Begin

    CDSRelPastoral.Close;
    CDSRelPastoral.Open;
    CDSRelPastoral.EmptyDataSet;


    QuerySantaCeia.Close;
    QuerySantaCeia.SQL.Clear;
    QuerySantaCeia.SQL.Text := ' SELECT concat(F.sobrenome,' + quotedStr('-') + ', s.CodFamilia) as FamiliaCodigo, s.CodFamilia, s.codmembroantigo,s.Codmembro, F.Sobrenome as Familia, ' +
                               '       m.NomeMembro as Membro,t.nometipomembro,M.DataNasc, M.envelope, M.Celular as TelefoneMembro, ' +
                               '       M.Codmotivosaida, s.ano, F.endereco, f.bairro, f.cidade, f.area, f.grupo, f.uf, f.cep, f.telefone, f.email,F.Compl, ' +
                               '      (SELECT DataVisita FROM visita v where v.codfamilia = s.codfamilia order by DATAVISITA desc limit 1) DataUltimaVisita,' +
                               '      (SELECT Visitante FROM visita v where v.codfamilia = s.codfamilia order by DATAVISITA desc limit 1) UltimoVisitante,' +
                               '       janeiro, ' +
                               '       fevereiro, ' +
                               '       marco, ' +
                               '       abril, ' +
                               '       maio, ' +
                               '       junho, ' +
                               '       julho, ' +
                               '       agosto, ' +
                               '       setembro, ' +
                               '       outubro, ' +
                               '       novembro, ' +
                               '       dezembro ' +
                               ' FROM santa_ceia_antigo s left join Familia F on s.codfamilia = f.codfamilia ' +
                               '                         left join Membros M on s.codmembro = m.codmembro ' +
                               '                         left join TipoMembro t on m.codtipomembro = t.codtipomembro ';
    QueryContribuicoes.Close;
    QueryContribuicoes.SQL.Clear;
    QueryContribuicoes.SQL.Text := ' SELECT concat(F.sobrenome,' + quotedStr('-') + ', c.CodFamilia) as FamiliaCodigo, c.CodFamilia,c.CodMembroAntigo, ' +
                                   '       c.codmembro, F.sobrenome As Familia, M.NomeMembro as Membro,t.nometipomembro,M.DataNasc, M.envelope, M.Celular as TelefoneMembro, M.Codmotivosaida, cast(year(c.DataContribuicao) as char) Ano, ' +
                                   '       F.endereco, f.bairro, f.cidade, f.area, f.grupo, f.uf, f.cep, f.telefone, f.email,F.Compl, ' +
                                   '      (SELECT DataVisita FROM visita v where v.codfamilia = c.codfamilia order by DATAVISITA desc limit 1) DataUltimaVisita,' +
                                   '      (SELECT Visitante FROM visita v where v.codfamilia = c.codfamilia order by DATAVISITA desc limit 1) UltimoVisitante,' +
                                   '       Count(Case when month(c.DataContribuicao) = 1 then Valor else null end) as Janeiro, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 2 then Valor else null end) as Fevereiro, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 3 then Valor else null end) as Março, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 4 then Valor else null end) as Abril, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 5 then Valor else null end) as Maio, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 6 then Valor else null end) as Junho, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 7 then Valor else null end) as Julho, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 8 then Valor else null end) as Agosto, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 9 then Valor else null end) as Setembro, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 10 then Valor else null end) as Outubro, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 11 then Valor else null end) as Novembro, ' +
                                   '       Count(Case when month(c.DataContribuicao) = 12 then Valor else null end) as Dezembro ' +
                                   'FROM contribuicao c left join membros m on c.codmembro = m.codmembro ' +
                                   '                    left join familia f on c.codfamilia = f.codfamilia ' +
                                   '                    left join TipoMembro t on m.codtipomembro = t.codtipomembro ';


    if CbxAno.ItemIndex <> 0 then
    Begin
      QuerySantaCeia.SQL.add(' where ano = ' + CbxAno.Text);
      QueryContribuicoes.SQL.add(' where year(c.DataContribuicao) = ' + CbxAno.Text);
      where := True;
    End;

    if where then
    Begin
      case CbxTipoMembro.ItemIndex of
        1:Begin
            QuerySantaCeia.SQL.add(' and isnull(m.codmotivosaida)');
            QueryContribuicoes.SQL.add(' and isnull(m.codmotivosaida)');
          End;
        2:Begin
            QuerySantaCeia.SQL.add(' and not isnull(m.codmotivosaida)');
            QueryContribuicoes.SQL.add(' and not isnull(m.codmotivosaida)');
          End;
      end;
    End
    Else
    Begin
      case CbxTipoMembro.ItemIndex of
        1:Begin
            QuerySantaCeia.SQL.add(' where isnull(m.codmotivosaida)');
            QueryContribuicoes.SQL.add(' where isnull(m.codmotivosaida)');
            where := True;
          End;
        2:Begin
            QuerySantaCeia.SQL.add(' where not isnull(m.codmotivosaida)');
            QueryContribuicoes.SQL.add(' where not isnull(m.codmotivosaida)');
            where := True;
          End;
      end;
    End;

    if ((CbxFamilia.ItemIndex = 1) and (EdtNomeFamilia.Text <> '')) then
    Begin
      if where then
      Begin
        QuerySantaCeia.SQL.add(' and s.codfamilia = ' + inttostr(EdtNomeFamilia.Tag));
        QueryContribuicoes.SQL.add(' and c.codfamilia = ' + inttostr(EdtNomeFamilia.Tag));
      End
      Else
      Begin
        QuerySantaCeia.SQL.add(' where s.codfamilia = ' + inttostr(EdtNomeFamilia.Tag));
        QueryContribuicoes.SQL.add(' where c.codfamilia = ' + inttostr(EdtNomeFamilia.Tag));
      End;
    end;

    QuerySantaCeia.SQL.add(' Order by ano, FamiliaCodigo, s.codmembroantigo, Membro, ano ');
    QuerySantaCeia.Open;

    QuerySantaCeia.First;
    ProgressBar1.min := 0;
    ProgressBar1.max := QuerySantaCeia.RecordCount;
    ProgressBar1.Position := 0;
    while not QuerySantaCeia.Eof do
    Begin

      CDSRelPastoral.Append;
      CDSRelPastoralFamiliaCodigo.Value := QuerySantaCeiaFamilia.Value;
      CDSRelPastoralCodFamilia.Value := QuerySantaCeiaCodFamilia.Value;

      QueryMembroAntigo.Close;
      QueryMembroAntigo.ParamByName('pCodMembro').Value := QuerySantaCeiaCodmembro.Value;
      QueryMembroAntigo.Open;

      if not QueryMembroAntigo.IsEmpty then
      Begin
        if QueryMembroAntigochefefamilia.value<>true then
          CDSRelPastoralCodMembroAntigo.Value := QueryMembroAntigocodmembroantigo.Value
        Else
          CDSRelPastoralCodMembroAntigo.Value := 1;
      End;

      CDSRelPastoralCodMembro.Value := QuerySantaCeiaCodmembro.Value;
      CDSRelPastoralFamilia.Value := QuerySantaCeiaFamilia.Value;
      CDSRelPastoralMembro.Value := QuerySantaCeiaMembro.Value;
      CDSRelPastoralNomeTipoMembro.Value := QuerySantaCeianometipomembro.Value;
      CDSRelPastoralDataNasc.Value := QuerySantaCeiaDataNasc.Value;
      CDSRelPastoralEnvelope.Value := QuerySantaCeiaenvelope.Value;
      CDSRelPastoralTelefoneMembro.Value := QuerySantaCeiaTelefoneMembro.Value;
      CDSRelPastoralCodMotivoSaida.Value := QuerySantaCeiaCodmotivosaida.Value;
      CDSRelPastoralAno.AsString := QuerySantaCeiaano.AsString;
      if QuerySantaCeiacompl.Value='' then
        CDSRelPastoralEndereco.Value := QuerySantaCeiaendereco.Value
      else
        CDSRelPastoralEndereco.Value := QuerySantaCeiaendereco.Value + ' / ' + QuerySantaCeiacompl.Value;
      CDSRelPastoralBairro.Value := QuerySantaCeiabairro.Value;
      CDSRelPastoralCidade.Value := QuerySantaCeiacidade.Value;
      CDSRelPastoralArea.Value := QuerySantaCeiaarea.Value;
      CDSRelPastoralGrupo.Value := QuerySantaCeiagrupo.AsString;
      CDSRelPastoralUF.Value := QuerySantaCeiauf.Value;
      CDSRelPastoralCEP.Value := QuerySantaCeiacep.Value;
      CDSRelPastoraltelefone.Value := QuerySantaCeiatelefone.Value;
      CDSRelPastoralEmail.Value := QuerySantaCeiaemail.Value;

      QueryVisitas.Close;
      QueryVisitas.ParamByName('pCodFamilia').Value := QuerySantaCeiaCodFamilia.Value;
      QueryVisitas.open;

      if not QueryVisitas.IsEmpty then
      Begin
        CDSRelPastoralDataUltVisita.Value := QueryVisitasDataVisita.Value;
        CDSRelPastoralVisitante.Value := QueryVisitasVisitante.Value;
      End;

      CDSRelPastoralJaneiroCeia.Value := QuerySantaCeiajaneiro.Value;
      CDSRelPastoralFevereiroCeia.Value := QuerySantaCeiafevereiro.Value;
      CDSRelPastoralMarcoCeia.Value := QuerySantaCeiamarco.Value;
      CDSRelPastoralAbrilCeia.Value := QuerySantaCeiaabril.Value;
      CDSRelPastoralMaioCeia.Value := QuerySantaCeiamaio.Value;
      CDSRelPastoralJunhoCeia.Value := QuerySantaCeiajunho.Value;
      CDSRelPastoralJulhoCeia.Value := QuerySantaCeiajulho.Value;
      CDSRelPastoralAgostoCeia.Value := QuerySantaCeiaagosto.Value;
      CDSRelPastoralSetembroCeia.Value := QuerySantaCeiasetembro.Value;
      CDSRelPastoralOutubroCeia.Value := QuerySantaCeiaoutubro.Value;
      CDSRelPastoralNovembroCeia.Value := QuerySantaCeianovembro.Value;
      CDSRelPastoralDezembroCeia.Value := QuerySantaCeiadezembro.Value;
      CDSRelPastoral.Post;
      ProgressBar1.Position := ProgressBar1.Position+1;
      QuerySantaCeia.Next;
    End;

    QueryContribuicoes.SQL.Add(' Group by c.codmembro Order By ano, Familiacodigo, c.Codmembroantigo ');
    QueryContribuicoes.Open;

    QueryContribuicoes.First;
    ProgressBar1.min := 0;
    ProgressBar1.max := QueryContribuicoes.RecordCount;
    ProgressBar1.Position := 0;

    while not QueryContribuicoes.Eof do
    Begin

      CDSRelPastoral.Filtered := False;
      CDSRelPastoral.Filter := 'CodMembro = ' + QueryContribuicoescodmembro.Text + ' and CodFamilia = ' + QueryContribuicoesCodFamilia.Text;
      CDSRelPastoral.Filtered := True;

      if CDSRelPastoral.RecordCount > 0 then
      Begin
        CDSRelPastoral.Edit;
        CDSRelPastoralJaneiroContrib.Value := QueryContribuicoesjaneiro.Value;
        CDSRelPastoralFevereiroContrib.Value := QueryContribuicoesfevereiro.Value;
        CDSRelPastoralMarcoContrib.Value := QueryContribuicoesMarço.Value;
        CDSRelPastoralAbrilContrib.Value := QueryContribuicoesabril.Value;
        CDSRelPastoralMaioContrib.Value := QueryContribuicoesmaio.Value;
        CDSRelPastoralJunhoContrib.Value := QueryContribuicoesjunho.Value;
        CDSRelPastoralJulhoContrib.Value := QueryContribuicoesjulho.Value;
        CDSRelPastoralAgostoContrib.Value := QueryContribuicoesagosto.Value;
        CDSRelPastoralSetembroContrib.Value := QueryContribuicoessetembro.Value;
        CDSRelPastoralOutubroContrib.Value := QueryContribuicoesoutubro.Value;
        CDSRelPastoralNovembroContrib.Value := QueryContribuicoesnovembro.Value;
        CDSRelPastoralDezembroContrib.Value := QueryContribuicoesdezembro.Value;
        if ((QueryContribuicoesTelefoneMembro.AsString<>'') and (CDSRelPastoralTelefoneMembro.AsString='')) then
          CDSRelPastoralTelefoneMembro.AsString := QueryContribuicoesTelefoneMembro.AsString;
        if ((QueryContribuicoestelefone.AsString<>'') and (CDSRelPastoraltelefone.AsString='')) then
          CDSRelPastoralTelefone.AsString := QueryContribuicoesTelefone.AsString;
        CDSRelPastoral.Post;
      End
      else
      Begin
        CDSRelPastoral.Append;
        CDSRelPastoralCodFamilia.Value := QueryContribuicoesCodFamilia.Value;

        QueryMembroAntigo.Close;
        QueryMembroAntigo.ParamByName('pCodMembro').Value := QueryContribuicoesCodmembro.Value;
        QueryMembroAntigo.Open;

        if not QueryMembroAntigo.IsEmpty then
        Begin
          if QueryMembroAntigochefefamilia.value <> true then
            CDSRelPastoralCodMembroAntigo.Value := QueryMembroAntigocodmembroantigo.Value
          Else
            CDSRelPastoralCodMembroAntigo.Value := 1;
        End;

        CDSRelPastoralCodMembro.Value := QueryContribuicoesCodmembro.Value;
        CDSRelPastoralFamilia.Value := QueryContribuicoesFamilia.Value;
        CDSRelPastoralMembro.Value := QueryContribuicoesMembro.Value;
        CDSRelPastoralNomeTipoMembro.Value := QueryContribuicoesnometipomembro.Value;
        CDSRelPastoralDataNasc.Value := QueryContribuicoesDataNasc.Value;
        CDSRelPastoralEnvelope.Value := QueryContribuicoesenvelope.Value;
        CDSRelPastoralTelefoneMembro.Value := QueryContribuicoesTelefoneMembro.Value;
        CDSRelPastoralCodMotivoSaida.Value := QueryContribuicoesCodmotivosaida.Value;
        CDSRelPastoral.FieldByName('Ano').AsString := QueryContribuicoes.FieldByName('Ano').AsString;
        if QueryContribuicoescompl.Value='' then
          CDSRelPastoralEndereco.Value := QueryContribuicoesendereco.Value
        else
          CDSRelPastoralEndereco.Value := QueryContribuicoesendereco.Value + ' / ' + QueryContribuicoescompl.Value;
        CDSRelPastoralBairro.Value := QueryContribuicoesbairro.Value;
        CDSRelPastoralCidade.Value := QueryContribuicoescidade.Value;
        CDSRelPastoralArea.Value := QueryContribuicoesarea.Value;
        CDSRelPastoralGrupo.Value := QueryContribuicoesgrupo.AsString;
        CDSRelPastoralUF.Value := QueryContribuicoesuf.Value;
        CDSRelPastoralCEP.Value := QueryContribuicoescep.Value;
        CDSRelPastoraltelefone.Value := QueryContribuicoesTelefoneMembro.Value;
        CDSRelPastoralEmail.Value := QueryContribuicoesemail.Value;

        QueryVisitas.Close;
        QueryVisitas.ParamByName('pCodFamilia').Value := QueryContribuicoesCodFamilia.Value;
        QueryVisitas.open;

        if not QueryVisitas.IsEmpty then
        Begin
          CDSRelPastoralDataUltVisita.Value := QueryVisitasDataVisita.Value;
          CDSRelPastoralVisitante.Value := QueryVisitasVisitante.Value;
        End;

        CDSRelPastoralJaneiroContrib.Value := QueryContribuicoesjaneiro.Value;
        CDSRelPastoralFevereiroContrib.Value := QueryContribuicoesfevereiro.Value;
        CDSRelPastoralMarcoContrib.Value := QueryContribuicoesMarço.Value;
        CDSRelPastoralAbrilContrib.Value := QueryContribuicoesabril.Value;
        CDSRelPastoralMaioContrib.Value := QueryContribuicoesmaio.Value;
        CDSRelPastoralJunhoContrib.Value := QueryContribuicoesjunho.Value;
        CDSRelPastoralJulhoContrib.Value := QueryContribuicoesjulho.Value;
        CDSRelPastoralAgostoContrib.Value := QueryContribuicoesagosto.Value;
        CDSRelPastoralSetembroContrib.Value := QueryContribuicoessetembro.Value;
        CDSRelPastoralOutubroContrib.Value := QueryContribuicoesoutubro.Value;
        CDSRelPastoralNovembroContrib.Value := QueryContribuicoesnovembro.Value;
        CDSRelPastoralDezembroContrib.Value := QueryContribuicoesdezembro.Value;
        CDSRelPastoral.Post;
      End;
      ProgressBar1.Position := ProgressBar1.Position+1;
      QueryContribuicoes.Next;
    End;

    // adiciona membros da familia sem movimentação no periodo, mas que estão ativos
    if CbxFamilia.ItemIndex=0 then
    Begin
      QueryMembrosAdicionais.Close;
      QueryMembrosAdicionais.SQL.Clear;
      QueryMembrosAdicionais.SQL.Text := 'SELECT m.codmembro, ' +
                                         '       m.codfamilia, ' +
                                         '       m.codtipomembro, ' +
                                         '       m.codmembroantigo, ' +
                                         '       tp.NomeTipoMembro, ' +
                                         '       m.nomemembro, ' +
                                         '       m.datanasc, ' +
                                         '       f.sobrenome, ' +
                                         '       f.telefone, ' +
                                         '       f.endereco,F.Compl, ' +
                                         '       f.bairro, ' +
                                         '       f.Cidade, ' +
                                         '       f.Area, ' +
                                         '       f.grupo, ' +
                                         '       f.UF, ' +
                                         '       f.CEP, ' +
                                         '       f.email, ' +
                                         '      (SELECT DataVisita FROM visita v where v.codfamilia = m.codfamilia order by DATAVISITA desc limit 1) DataUltimaVisita, ' +
                                         '      (SELECT Visitante FROM visita v where v.codfamilia = m.codfamilia order by DATAVISITA desc limit 1) UltimoVisitante, ' +
                                         '       m.Celular ' +
                                         'FROM membros m left join Familia F on m.codfamilia = f.codfamilia ' +
                                         '               left join Tipomembro tp on m.codtipomembro = tp.codtipomembro ' +
                                         ' where isnull(codmotivosaida) ' +
                                         ' order by m.CodFamilia, m.codtipomembro; ';
      QueryMembrosAdicionais.Open;
      ProgressBar1.min := 0;
      ProgressBar1.max := QueryMembrosAdicionais.RecordCount;
      ProgressBar1.Position := 0;

      while not QueryMembrosAdicionais.Eof do
      Begin
        CDSRelPastoral.Filtered := False;
        CDSRelPastoral.Filter := 'CodMembro = ' + QueryMembrosAdicionaiscodmembro.Text + ' and CodFamilia = ' + QueryMembrosAdicionaisCodFamilia.Text;
        CDSRelPastoral.Filtered := True;

        if CDSRelPastoral.RecordCount = 0 then
        Begin
          CDSRelPastoral.Append;
          CDSRelPastoralCodFamilia.Value := QueryMembrosAdicionaisCodFamilia.Value;

          QueryMembroAntigo.Close;
          QueryMembroAntigo.ParamByName('pCodMembro').Value := QueryMembrosAdicionaisCodmembro.Value;
          QueryMembroAntigo.Open;

          if not QueryMembroAntigo.IsEmpty then
          Begin
            if QueryMembroAntigochefefamilia.value <> true then
              CDSRelPastoralCodMembroAntigo.Value := QueryMembroAntigocodmembroantigo.Value
            Else
              CDSRelPastoralCodMembroAntigo.Value := 1;
          End;

          CDSRelPastoralCodMembro.Value := QueryMembrosAdicionaisCodmembro.Value;
          CDSRelPastoralFamilia.Value := QueryMembrosAdicionaissobrenome.Value;
          CDSRelPastoralMembro.Value := QueryMembrosAdicionaisnomemembro.Value;
          CDSRelPastoralNomeTipoMembro.Value := QueryMembrosAdicionaisNomeTipoMembro.Value;
          CDSRelPastoralDataNasc.Value := QueryMembrosAdicionaisDataNasc.Value;
          CDSRelPastoralTelefoneMembro.Value := QueryMembrosAdicionaisCelular.Value;
          CDSRelPastoral.FieldByName('Ano').AsString := CbxAno.Text;
          if QueryMembrosAdicionaiscompl.Value='' then
            CDSRelPastoralEndereco.Value := QueryMembrosAdicionaisendereco.Value
          else
            CDSRelPastoralEndereco.Value := QueryMembrosAdicionaisendereco.Value + ' / ' + QueryMembrosAdicionaiscompl.Value;
          CDSRelPastoralBairro.Value := QueryMembrosAdicionaisbairro.Value;
          CDSRelPastoralCidade.Value := QueryMembrosAdicionaiscidade.Value;
          CDSRelPastoralArea.Value := QueryMembrosAdicionaisarea.Value;
          CDSRelPastoralGrupo.Value := QueryMembrosAdicionaisgrupo.AsString;
          CDSRelPastoralUF.Value := QueryMembrosAdicionaisuf.Value;
          CDSRelPastoralCEP.Value := QueryMembrosAdicionaiscep.Value;
          CDSRelPastoralEmail.Value := QueryMembrosAdicionaisemail.Value;

          QueryVisitas.Close;
          QueryVisitas.ParamByName('pCodFamilia').Value := QueryMembrosAdicionaisCodFamilia.Value;
          QueryVisitas.open;

          if not QueryVisitas.IsEmpty then
          Begin
            CDSRelPastoralDataUltVisita.Value := QueryVisitasDataVisita.Value;
            CDSRelPastoralVisitante.Value := QueryVisitasVisitante.Value;
          End;

          CDSRelPastoral.Post;
        End;
        ProgressBar1.Position := ProgressBar1.Position+1;
        QueryMembrosAdicionais.Next;
      End;
    End
    Else
    Begin
      QueryMembrosAdicionais.Close;
      QueryMembrosAdicionais.SQL.Clear;
      QueryMembrosAdicionais.SQL.Text := 'SELECT m.codmembro, ' +
                                         '       m.codfamilia, ' +
                                         '       m.codtipomembro, ' +
                                         '       m.codmembroantigo, ' +
                                         '       tp.NomeTipoMembro, ' +
                                         '       m.nomemembro, ' +
                                         '       m.datanasc, ' +
                                         '       f.sobrenome, ' +
                                         '       f.telefone, ' +
                                         '       f.endereco,F.Compl, ' +
                                         '       f.bairro, ' +
                                         '       f.Cidade, ' +
                                         '       f.Area, ' +
                                         '       f.grupo, ' +
                                         '       f.UF, ' +
                                         '       f.CEP, ' +
                                         '       f.email, ' +
                                         '      (SELECT DataVisita FROM visita v where v.codfamilia = m.codfamilia order by DATAVISITA desc limit 1) DataUltimaVisita, ' +
                                         '      (SELECT Visitante FROM visita v where v.codfamilia = m.codfamilia order by DATAVISITA desc limit 1) UltimoVisitante, ' +
                                         '       m.Celular ' +
                                         'FROM membros m left join Familia F on m.codfamilia = f.codfamilia ' +
                                         '               left join Tipomembro tp on m.codtipomembro = tp.codtipomembro ' +
                                         ' where isnull(codmotivosaida) and m.codfamilia = ' + inttostr(EdtNomeFamilia.Tag) +
                                         ' order by m.CodFamilia, m.codtipomembro; ';
      QueryMembrosAdicionais.Open;
      ProgressBar1.min := 0;
      ProgressBar1.max := QueryMembrosAdicionais.RecordCount;
      ProgressBar1.Position := 0;

      while not QueryMembrosAdicionais.Eof do
      Begin
        CDSRelPastoral.Filtered := False;
        CDSRelPastoral.Filter := 'CodMembro = ' + QueryMembrosAdicionaiscodmembro.Text + ' and CodFamilia = ' + QueryMembrosAdicionaisCodFamilia.Text;
        CDSRelPastoral.Filtered := True;

        if CDSRelPastoral.RecordCount = 0 then
        Begin
          CDSRelPastoral.Append;
          CDSRelPastoralCodFamilia.Value := QueryMembrosAdicionaisCodFamilia.Value;

          QueryMembroAntigo.Close;
          QueryMembroAntigo.ParamByName('pCodMembro').Value := QueryMembrosAdicionaisCodmembro.Value;
          QueryMembroAntigo.Open;

          if not QueryMembroAntigo.IsEmpty then
          Begin
            if QueryMembroAntigochefefamilia.value <> true then
              CDSRelPastoralCodMembroAntigo.Value := QueryMembroAntigocodmembroantigo.Value
            Else
              CDSRelPastoralCodMembroAntigo.Value := 1;
          End;

          CDSRelPastoralCodMembro.Value := QueryMembrosAdicionaisCodmembro.Value;
          CDSRelPastoralFamilia.Value := QueryMembrosAdicionaissobrenome.Value;
          CDSRelPastoralMembro.Value := QueryMembrosAdicionaisnomemembro.Value;
          CDSRelPastoralNomeTipoMembro.Value := QueryMembrosAdicionaisNomeTipoMembro.Value;
          CDSRelPastoralDataNasc.Value := QueryMembrosAdicionaisDataNasc.Value;
          CDSRelPastoralTelefoneMembro.Value := QueryMembrosAdicionaisCelular.Value;
          CDSRelPastoral.FieldByName('Ano').AsString := CbxAno.Text;
          CDSRelPastoralEndereco.Value := QueryMembrosAdicionaisendereco.Value + ' ' + QueryMembrosAdicionaiscompl.Value;
          CDSRelPastoralBairro.Value := QueryMembrosAdicionaisbairro.Value;
          CDSRelPastoralCidade.Value := QueryMembrosAdicionaiscidade.Value;
          CDSRelPastoralArea.Value := QueryMembrosAdicionaisarea.Value;
          CDSRelPastoralGrupo.Value := QueryMembrosAdicionaisgrupo.AsString;
          CDSRelPastoralUF.Value := QueryMembrosAdicionaisuf.Value;
          CDSRelPastoralCEP.Value := QueryMembrosAdicionaiscep.Value;
          CDSRelPastoralEmail.Value := QueryMembrosAdicionaisemail.Value;

          QueryVisitas.Close;
          QueryVisitas.ParamByName('pCodFamilia').Value := QueryMembrosAdicionaisCodFamilia.Value;
          QueryVisitas.open;

          if not QueryVisitas.IsEmpty then
          Begin
            CDSRelPastoralDataUltVisita.Value := QueryVisitasDataVisita.Value;
            CDSRelPastoralVisitante.Value := QueryVisitasVisitante.Value;
          End;

          CDSRelPastoral.Post;
        End;
        ProgressBar1.Position := ProgressBar1.Position+1;
        QueryMembrosAdicionais.Next;
      End;

    End;

    CDSRelPastoral.Filtered := False;
    CDSRelPastoral.IndexFieldNames := 'Ano;Familia;CodFamilia;CodMembroAntigo';

    // calcula o total de familias
    CDSRelPastoral.First;
    FamiliaAtual := CDSRelPastoralCodFamilia.Value;
    MembroAtual := CDSRelPastoralCodMembro.Value;
    inc(TotalFamilias);
    inc(TotalMembros);
    while not CDSRelPastoral.eof do
    Begin
      if FamiliaAtual<>CDSRelPastoralCodFamilia.Value then
      Begin
        inc(TotalFamilias);
        FamiliaAtual := CDSRelPastoralCodFamilia.Value;
      End;

      if MembroAtual<>CDSRelPastoralCodMembro.Value then
      Begin
        inc(TotalMembros);
        MembroAtual := CDSRelPastoralCodMembro.Value;
      End;
      CDSRelPastoral.Next;
    End;
    Showmessage('O total de familias é ' + inttostr(TotalFamilias) + ' e o total de membros é: ' + inttostr(TotalMembros));

  End;
  ProgressBar1.Position := 0;

end;

procedure TFormRelPastoral.SpdBtnBuscaFamiliaClick(Sender: TObject);
begin

  FormPrincipal.CodMembroGlobal :=0;
  FormPrincipal.CodFamiliaGlobal :=0;
  FormPrincipal.NomeMembroGlobal :='';
  FormPrincipal.NomeFamiliaGlobal :='';

  FormBuscaFamilia.ShowModal;

  if FormPrincipal.CodFamiliaGlobal>0 then
  Begin
    EdtNomeFamilia.Tag := FormPrincipal.CodFamiliaGlobal;
    EdtNomeFamilia.Text := FormPrincipal.NomeFamiliaGlobal + ' - ' + inttostr(FormPrincipal.CodFamiliaGlobal);
  End
  Else
    CbxFamilia.ItemIndex := 0;

end;

end.
