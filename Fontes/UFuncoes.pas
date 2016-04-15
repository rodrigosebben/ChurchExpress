unit UFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, MemDS, DBAccess, MyAccess;

  Function ValidaUsuario(Usuario,senha:string):boolean;
  Procedure HabilitaCampos(Comando:boolean);
  Function VerificaForms:boolean;
  Function TrataFloat(Valor:string):Double;
  function ConverteHoraParaSegundos(Tempo:String):Integer;
  function ConverteSegundosParaHora(Secs: LongInt): string;
  Procedure ConectaBanco(Servidor,Usuario,Senha,Porta:String);
  Procedure ControleAcesso(Usuario:integer);
  Procedure ControleAcessoTelas(Modulo, TipoAcesso:String);
  Procedure AtualizaTotaisContasPagar(Opcao:integer);
  Procedure AtualizaTotaisContasReceber(Opcao:integer);
  Procedure CorrigeEnderecoMembroFamilia;
  Procedure CorrigeDatasEspeciais;
  Procedure CorrigeFilhos;
  Procedure CorrigeContribuicoes;
  Function RetornaValorString(Texto,Buscar:String):String;
  Function RetornaMembrosAtivosInativos(DataInicial,DataFinal:TDateTime):String;
  Function RetiraCaracter(Caracter,Texto:String):String;

implementation

uses UDMPrincipal, UFrmprincipal, UFrmConsultaProfissao, UfrmConsultaUsuario, UFrmConsultaContribuicao, UFrmConsultaDataEspecial, UFrmConsultaDepartamento, UFrmConsultaFamilia, UFrmConsultaGrupos,
  UFrmConsultaMembro, UFrmConsultaMensagem, UFrmConsultaTipoContribuicao, UFrmConsultaUsuarioAcesso, UFrmConsultaVisitante;

Function RetiraCaracter(Caracter,Texto:String):String;
Var
  ValorRetornado:String;
  Tamanho, posicao: Integer;
  I: Integer;
Begin

  ValorRetornado := '';
  Tamanho := Length(Texto);

  for I := 1 to Tamanho do
  Begin
    if Copy(Texto,i,1) <> caracter then
      ValorRetornado := ValorRetornado + Copy(Texto,i,1);
  End;

  result := ValorRetornado;

End;

  Function RetornaMembrosAtivosInativos(DataInicial,DataFinal:TDateTime):String;
Var
  Membros:String;
Begin

  with DMprincipal do
  Begin
    QryTemp.Close;
    QryTemp.SQL.Clear;
    QryTemp.SQL.Add('SELECT distinct codmembro FROM contribuicao where datacontribuicao between ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DataInicial)) + ' and ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DataFinal)));
    QryTemp.Open;

    Membros := '';

    while not QryTemp.Eof Do
    Begin
      if Membros = '' then
        Membros := QryTemp.FieldByName('CodMembro').AsString
      Else
        Membros := Membros + ',' + QryTemp.FieldByName('CodMembro').AsString;
      QryTemp.Next;
    End;
    Result := Membros;
  End;

End;

Function RetornaValorString(Texto,Buscar:String):String;
Var
  Tamanho,posicao, Resto:integer;
Begin

  Tamanho := Length(Texto);
  posicao := pos(Buscar,Texto) + 1;
  Resto := Tamanho - posicao + 1;

  Result := Copy(Texto, Posicao, resto);

End;

Procedure CorrigeContribuicoes;
Begin

  DMPrincipal.CMDAjustaContribuicoes.Execute;
  Showmessage('Rotina executada com sucesso!');

End;

Procedure CorrigeFilhos;
Begin

  DMPrincipal.CMDAjustaMembroFilhos.Execute;
  Showmessage('Rotina executada com sucesso!');

End;

Procedure CorrigeDatasEspeciais;
Begin

  DMPrincipal.CmdAjustaMembroDataEspec.Execute;
  Showmessage('Rotina executada com sucesso!');

End;


Procedure CorrigeEnderecoMembroFamilia;
Begin

  with DMPrincipal do
  Begin

    QryMembro.Open;

    while not QryMembro.Eof do
    Begin
      QryFamilia.Close;
      QryFamilia.ParamByName('pCodFamilia').AsInteger := QryMembro.FieldByName('CodFamilia').AsInteger;
      QryFamilia.Open;

      QryMembro.Edit;
      QryMembroendereco.Value := QryFamiliaEndereco.Value;
      QryMembroCompl.Value := QryFamiliaCompl.Value;
      QryMembroBairro.Value := QryFamiliaBairro.Value;
      QryMembroCidade.Value := QryFamiliaCidade.Value;
      QryMembroUF.Value := QryFamiliaUF.Value;
      QryMembroCEP.Value := QryFamiliaCep.Value;
      QryMembroTelefone.Value := QryFamiliaTelefone.Value;
      QryMembro.Post;

      QryMembro.Next;
    End;
    QryMembro.Close;
  End;

  ShowMessage('Ajustes completos! Acesse o cadastro de membros e confira.');

End;


// VALIDA O USU�RIO E A SENHA PARA ACESSO AO SISTEMA
Function ValidaUsuario(Usuario,senha:string):Boolean;
Begin

  DMPrincipal.QryTemp.Close;
  DMPrincipal.QryTemp.sql.Clear;
  DMPrincipal.QryTemp.sql.Text:= 'Select * from usuario where NomeUsuario = ' + QuotedStr(Usuario) + ' and senha = ' + QuotedStr(Senha);
  DMPrincipal.QryTemp.Open;

  Result := DMPrincipal.QryTemp.IsEmpty;

End;

// HABILITA/DESABILITA OS FORMS E CAMPOS DURANTE A TROCA DE USUARIO OU ENTRADA NO SISTEMA
Procedure HabilitaCampos(Comando:boolean);
Begin

    if FormConsultaProfissao <> nil then
      FormConsultaProfissao.Enabled := Comando;

    if FormConsultaUsuario <> nil then
      FormConsultaUsuario.Enabled := Comando;

    if FormConsultaContribuicao <> nil then
      FormConsultaContribuicao.Enabled := Comando;

    if FormConsultaDataEspecial <> nil then
      FormConsultaDataEspecial.Enabled := Comando;

    if FormConsultaDepartamento <> nil then
      FormConsultaDepartamento.Enabled := Comando;

    if FormConsultaFamilia <> nil then
      FormConsultaFamilia.Enabled := Comando;

    if FormConsultaGrupos <> nil then
      FormConsultaGrupos.Enabled := Comando;

    if FormConsultaMembro <> nil then
      FormConsultaMembro.Enabled := Comando;

    if FormConsultaMensagem <> nil then
      FormConsultaMensagem.Enabled := Comando;

    if FormConsultaTipoContribuicao <> nil then
      FormConsultaTipoContribuicao.Enabled := Comando;

    if FormConsultaUsuarioAcesso <> nil then
      FormConsultaUsuarioAcesso.Enabled := Comando;

    if FormConsultaVisitante <> nil then
      FormConsultaVisitante.Enabled := Comando;

End;

//  VERIFICA SE EXISTE ALGUM FORM ABERTO
Function VerificaForms:Boolean;
Begin

  if ((FormConsultaProfissao = nil)
  and (FormConsultaUsuario   = nil)) then
    Result:=True
  Else
    Result:=False;

End;

// FORMATA QUALQUER VALOR DE TEXTO EM FLOAT CORRETAMENTE
Function TrataFloat(Valor:string):Double;
Var
  Valoralterado: Double;
Begin

  Valoralterado := StrToFloat(StringReplace(Valor,'.','',[rfReplaceAll, rfIgnoreCase]));
  Result := Valoralterado;

End;

// CONECTA O BANCO DE DADOS DE ACORDO COM O BANCO ESCOLHIDO
Procedure ConectaBanco(Servidor,Usuario,Senha,Porta:String);
Begin

  DMPrincipal.Conn.Connected := False;

  DMPrincipal.Conn.Server := '';
  DMPrincipal.Conn.Username := '';
  DMPrincipal.Conn.Password := '';
  DMPrincipal.Conn.Port := 3306;


  DMPrincipal.Conn.Server := Servidor;
  DMPrincipal.Conn.Username := Usuario;
  DMPrincipal.Conn.Password := Senha;
  DMPrincipal.Conn.Port := StrToInt(Porta);

  DMPrincipal.Conn.Connected := True;

End;

Procedure ControleAcesso(Usuario:integer);
Begin

  FormPrincipal.AcessoCadastro := 'N�O ACESSA';
  FormPrincipal.AcessoAdministracao := 'N�O ACESSA';
  FormPrincipal.AcessoGerenciamentoCongregacao := 'N�O ACESSA';
  FormPrincipal.AcessoRelatorios := 'N�O ACESSA';
  FormPrincipal.AcessoEstatistica := 'N�O ACESSA';
  FormPrincipal.AcessoControleCemiterio := 'N�O ACESSA';

  DMPrincipal.QryTemp.Close;
  DMPrincipal.QryTemp.SQL.Clear;
  DMPrincipal.QryTemp.SQL.Text:= 'SELECT * FROM usuarioacessos where codusuario = ' + Inttostr(Usuario);
  DMPrincipal.QryTemp.Open;

//  DMPrincipal.QryTemp.First;

{
    1, 'Cadastros'
    2, 'Administra��o'
    3, 'Gerenciamento da Congrega��o'
    4, 'Relat�rios'
    5, 'Estat�stica'
    6, 'Controle de Cemit�rio'
}
  While not DMPrincipal.QryTemp.Eof do
  Begin
    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 1 then
      FormPrincipal.AcessoCadastro := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 2 then
      FormPrincipal.AcessoAdministracao := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 3 then
      FormPrincipal.AcessoGerenciamentoCongregacao := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 4 then
      FormPrincipal.AcessoRelatorios := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 5 then
      FormPrincipal.AcessoEstatistica := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

    if DMPrincipal.QryTemp.FieldByName('CodModulo').Value = 6 then
      FormPrincipal.AcessoControleCemiterio := DMPrincipal.QryTemp.FieldByName('TipoAcesso').AsString;

//    if DMPrincipal.QryTemp.FieldByName('Modulo').AsString = 'XXX' then
//      FormPrincipal.AcessoXXX := DMPrincipal.QryTemp.FieldByName('Acesso').AsString;

    DMPrincipal.QryTemp.Next;
  End;

End;

Procedure ControleAcessoTelas(Modulo, TipoAcesso:String);
Begin

  if Modulo = 'Cadastros' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgCadastros.Enabled := True;
      FormPrincipal.RBGrpCadastroCadastros.Enabled := True;
      FormPrincipal.RbGrpAcessoCadastros.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgCadastros.Enabled := True;
        FormPrincipal.RBGrpCadastroCadastros.Enabled := True;
        FormPrincipal.RbGrpAcessoCadastros.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgCadastros.Enabled := False;
          FormPrincipal.RBGrpCadastroCadastros.Enabled := False;
          FormPrincipal.RbGrpAcessoCadastros.Enabled := False;
        End;
      End;
    End;
  End;

  if Modulo = 'Administra��o' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgAdministracao.Enabled := True;
      FormPrincipal.RbGrpCadastroAdministracao.Enabled := True;
      //FormPrincipal.RbGrpFerramentasAdministracao.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgAdministracao.Enabled := True;
        FormPrincipal.RbGrpCadastroAdministracao.Enabled := True;
        //FormPrincipal.RbGrpFerramentasAdministracao.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgAdministracao.Enabled := False;
          FormPrincipal.RbGrpCadastroAdministracao.Enabled := False;
          //FormPrincipal.RbGrpFerramentasAdministracao.Enabled := False;
        End;
      End;
    End;
  End;

  if Modulo = 'Gerenciamento da Congrega��o' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgGerenciamentoCongregacao.Enabled := True;
      FormPrincipal.RbGrpAtividades.Enabled := True;
      FormPrincipal.RbGrpAcessoGerenciamentoCongregacao.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgGerenciamentoCongregacao.Enabled := True;
        FormPrincipal.RbGrpAtividades.Enabled := True;
        FormPrincipal.RbGrpAcessoGerenciamentoCongregacao.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgGerenciamentoCongregacao.Enabled := False;
          FormPrincipal.RbGrpAtividades.Enabled := False;
          FormPrincipal.RbGrpAcessoGerenciamentoCongregacao.Enabled := False;
        End;
      End;
    End;
  End;

  if Modulo = 'Relat�rios' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgRelatorio.Enabled := True;
      FormPrincipal.RbGrpAcessoRelatorios.Enabled := True;
      FormPrincipal.RbGrpFormularios.Enabled := True;
      FormPrincipal.RbGrpRelatorios.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgRelatorio.Enabled := True;
        FormPrincipal.RbGrpAcessoRelatorios.Enabled := True;
        FormPrincipal.RbGrpFormularios.Enabled := True;
        FormPrincipal.RbGrpRelatorios.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgRelatorio.Enabled := False;
          FormPrincipal.RbGrpAcessoRelatorios.Enabled := False;
          FormPrincipal.RbGrpFormularios.Enabled := False;
          FormPrincipal.RbGrpRelatorios.Enabled := False;
        End;
      End;
    End;
  End;

  if Modulo = 'Estat�stica' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgEstatistica.Enabled := True;
      FormPrincipal.RbGrpEstatisticaCongregacao.Enabled := True;
      FormPrincipal.RbGrpEstatisticaIELB.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgEstatistica.Enabled := True;
        FormPrincipal.RbGrpEstatisticaCongregacao.Enabled := True;
        FormPrincipal.RbGrpEstatisticaIELB.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgEstatistica.Enabled := False;
          FormPrincipal.RbGrpEstatisticaCongregacao.Enabled := False;
          FormPrincipal.RbGrpEstatisticaIELB.Enabled := False;
        End;
      End;
    End;
  End;

  if Modulo = 'Controle de Cemit�rio' then
  Begin
    if TipoAcesso = 'ACESSO TOTAL' then
    Begin
      FormPrincipal.RbPgControleCemiterio.Enabled := True;
      FormPrincipal.RbGrpCadastroCemiterio.Enabled := True;
      FormPrincipal.RbGrpRelatorioCemiterio.Enabled := True;
    End
    Else
    Begin
      if TipoAcesso = 'APENAS VISUALIZA��O' then
      Begin
        FormPrincipal.RbPgControleCemiterio.Enabled := True;
        FormPrincipal.RbGrpCadastroCemiterio.Enabled := True;
        FormPrincipal.RbGrpRelatorioCemiterio.Enabled := True;
      End
      Else
      Begin
        if TipoAcesso = 'N�O ACESSA' then
        Begin
          FormPrincipal.RbPgControleCemiterio.Enabled := False;
          FormPrincipal.RbGrpCadastroCemiterio.Enabled := False;
          FormPrincipal.RbGrpRelatorioCemiterio.Enabled := False;
        End;
      End;
    End;
  End;

End;

Procedure AtualizaTotaisContasPagar(Opcao:integer);
{Var
  Pagas,Apagar,Vencidas: TMyQuery;}
begin

{  Pagas := TMyQuery.Create(nil);
  Apagar := TMyQuery.Create(nil);
  Vencidas := TMyQuery.Create(nil);

  case Opcao of
    0:Begin
        Pagas.Connection := DM.MyConn;
        Pagas.Close;
        Pagas.SQL.Clear;
        Pagas.SQL.Text := 'SELECT Sum(ValorTitulo) as TotalPagas ' +
                          '  FROM contaspagar ';
        Pagas.Open;
        FormConsultaContasPagar.PanelTotal.Caption := 'TOTAL DE CONTAS: R$ ' + FormatFloat('#,##0.00',Pagas.FieldByName('TotalPagas').AsFloat);
      End;
    1:Begin
        Pagas.Connection := DM.MyConn;
        Pagas.Close;
        Pagas.SQL.Clear;
        Pagas.SQL.Text := 'SELECT Sum(ValorTitulo) as TotalPagas ' +
                          '  FROM contaspagar ' +
                          ' Where not isnull(DataPagamento) ';
        Pagas.Open;
        FormConsultaContasPagar.PanelTotal.Caption := 'TOTAL DE CONTAS PAGAS: R$ ' + FormatFloat('#,##0.00',Pagas.FieldByName('TotalPagas').AsFloat);
      End;
    2:Begin
        Apagar.Connection := DM.MyConn;
        Apagar.Close;
        Apagar.SQL.Clear;
        Apagar.SQL.Text := 'SELECT sum(ValorTitulo) as TotalAPagar ' +
                           '  FROM contaspagar ' +
                           ' Where isnull(DataPagamento) and dataVencimento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',now));
        Apagar.Open;
        FormConsultaContasPagar.PanelTotal.Caption := 'TOTAL DE CONTAS A PAGAR: R$ ' + FormatFloat('#,##0.00',Apagar.FieldByName('TotalAPagar').AsFloat);
      End;
    3:Begin
        Vencidas.Connection := DM.MyConn;
        Vencidas.Close;
        Vencidas.SQL.Clear;
        Vencidas.SQL.Text := 'SELECT sum(ValorTitulo) as TotalVencidas ' +
                             '  FROM contaspagar ' +
                             ' Where isnull(DataPagamento) and dataVencimento < ' + QuotedStr(FormatDateTime('yyyy-mm-dd',now));
        Vencidas.Open;
        FormConsultaContasPagar.PanelTotal.Caption := 'TOTAL DE CONTAS VENCIDAS: R$ ' + FormatFloat('#,##0.00',Vencidas.FieldByName('TotalVencidas').AsFloat);
      End;
  end;

  FreeAndNil(Pagas);
  FreeAndNil(Apagar);
  FreeAndNil(Vencidas);
}
end;

Procedure AtualizaTotaisContasReceber(Opcao:integer);
{Var
  Recebidas,Areceber,EmAtraso: TMyQuery;}
begin
{
  Recebidas := TMyQuery.Create(nil);
  Areceber := TMyQuery.Create(nil);
  EmAtraso := TMyQuery.Create(nil);

  case Opcao of
    0:Begin
        Recebidas.Connection := DM.MyConn;
        Recebidas.Close;
        Recebidas.SQL.Clear;
        Recebidas.SQL.Text := 'SELECT Sum(ValorTitulo) as TotalRecebidas ' +
                              '  FROM contasreceber ';
        Recebidas.Open;
        FormConsultaContasReceber.PanelTotal.Caption := 'TOTAL DE CONTAS: R$ ' + FormatFloat('#,##0.00',Recebidas.FieldByName('TotalRecebidas').AsFloat);
      End;
    1:Begin
        Recebidas.Connection := DM.MyConn;
        Recebidas.Close;
        Recebidas.SQL.Clear;
        Recebidas.SQL.Text := 'SELECT Sum(ValorTitulo) as TotalRecebidas ' +
                              '  FROM contasreceber ' +
                              ' Where not isnull(DataRecebimento) ';
        Recebidas.Open;
        FormConsultaContasReceber.PanelTotal.Caption := 'TOTAL DE CONTAS RECEBIDAS: R$ ' + FormatFloat('#,##0.00',Recebidas.FieldByName('TotalRecebidas').AsFloat);
      End;
    2:Begin
        Areceber.Connection := DM.MyConn;
        Areceber.Close;
        Areceber.SQL.Clear;
        Areceber.SQL.Text := 'SELECT sum(ValorTitulo) as TotalAReceber ' +
                             '  FROM contasreceber ' +
                             ' Where isnull(DataRecebimento) and dataVencimento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',now));
        Areceber.Open;
        FormConsultaContasReceber.PanelTotal.Caption := 'TOTAL DE CONTAS A RECEBER: R$ ' + FormatFloat('#,##0.00',Areceber.FieldByName('TotalAReceber').AsFloat);
      End;
    3:Begin
        EmAtraso.Connection := DM.MyConn;
        EmAtraso.Close;
        EmAtraso.SQL.Clear;
        EmAtraso.SQL.Text := 'SELECT sum(ValorTitulo) as TotalEmAtraso ' +
                             '  FROM contasreceber ' +
                             ' Where isnull(DataRecebimento) and dataVencimento < ' + QuotedStr(FormatDateTime('yyyy-mm-dd',now));
        EmAtraso.Open;
        FormConsultaContasReceber.PanelTotal.Caption := 'TOTAL DE CONTAS A RECEBER EM ATRASO: R$ ' + FormatFloat('#,##0.00',EmAtraso.FieldByName('TotalEmAtraso').AsFloat);
      End;
  end;

  FreeAndNil(Recebidas);
  FreeAndNil(Areceber);
  FreeAndNil(EmAtraso);
}
end;

function ConverteHoraParaSegundos(Tempo:String):Integer;
var h,m,s,x:Integer;
begin
  x:=0;
  if Length(Tempo) = 9 then
  begin
    h:=StrtoInt(Copy(Tempo,1,3));
    m:=StrtoInt(Copy(Tempo,5,2));
    s:=StrtoInt(Copy(Tempo,8,2));
    x:=(s+(m*60)+(h*3600));
  end
  else
  if Length(Tempo) <= 8 then
  begin
    h:=StrtoInt(Copy(Tempo,1,2));
    m:=StrtoInt(Copy(Tempo,4,2));
    s:=StrtoInt(Copy(Tempo,7,2));
    x:=(s+(m*60)+(h*3600));
  end;
  Result:=x;
end;

function ConverteSegundosParaHora(Secs: LongInt): string;
var
  Hrs, Min: Word;
  H, M, S: String;
begin
  Hrs := Secs div 3600;
  Secs := Secs mod 3600;
  Min := Secs div 60;
  Secs := Secs mod 60;
  H:=FormatFloat('#00',Hrs);
  M:=FormatFloat('00',Min);
  S:=FormatFloat('00',Secs);
  Result:=Concat(H,':',M,':',S);
end;

Procedure CorrigeSantaCeia;
Begin

  with DMPrincipal do
  Begin
    QrySantaCeiaAntigoAjuste.close;
    QrySantaCeiaAntigoAjuste.Open;
    while not QrySantaCeiaAntigoAjuste.Eof do
    Begin

      QryTemp.Close;
      QryTemp.SQL.Clear;
      QryTemp.SQL.Add('Select CodMembro, CodMembroAntigo, Codfamilia from Membros where codmembroantigo = ' + QrySantaCeiaAntigoAjusteCodMembroAntigo.AsString +
                      ' and codfamilia = ' + QrySantaCeiaAntigoAjusteCodMembroAntigo.AsString);
      QryTemp.Open;

      QrySantaCeiaAntigoAjuste.Edit;
      QrySantaCeiaAntigoAjusteCodMembro.Value := QryTemp.FieldByName('CodMembro').Value;
      QrySantaCeiaAntigoAjuste.Post;

      QrySantaCeiaAntigoAjuste.Next;

    End;
  End;
  ShowMessage('Processo finalizado!');

End;

end.
