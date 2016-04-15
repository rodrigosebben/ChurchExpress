object DM: TDM
  OldCreateOrder = False
  Height = 660
  Width = 1194
  object Conn: TMyConnection
    Database = 'churchexpress'
    Username = 'root'
    Password = '1904'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 68
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Rodrigo\Dropbox\Projetos\ChurchExpress\Documentos\Banco ADIG' +
      '\celc.mdb;Mode=Share Deny None;Persist Security Info=False;Jet O' +
      'LEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Dat' +
      'abase Password="";Jet OLEDB:Engine Type=4;Jet OLEDB:Database Loc' +
      'king Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global' +
      ' Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLED' +
      'B:Create System Database=False;Jet OLEDB:Encrypt Database=False;' +
      'Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact W' +
      'ithout Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
  end
  object ADOQryMembro: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from membro')
    Left = 48
    Top = 92
    object ADOQryMembroCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryMembroCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryMembroTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object ADOQryMembroNOME_MEMBRO: TWideStringField
      FieldName = 'NOME_MEMBRO'
      Size = 45
    end
    object ADOQryMembroNOME_SOLTEIRO: TWideStringField
      FieldName = 'NOME_SOLTEIRO'
      Size = 45
    end
    object ADOQryMembroSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ADOQryMembroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object ADOQryMembroTIPO_SANGUE: TWideStringField
      FieldName = 'TIPO_SANGUE'
      Size = 3
    end
    object ADOQryMembroCOD_AREA_SEL: TWideStringField
      FieldName = 'COD_AREA_SEL'
      Size = 2
    end
    object ADOQryMembroSELULAR: TWideStringField
      FieldName = 'SELULAR'
      Size = 9
    end
    object ADOQryMembroESCOLARIDADE: TWideStringField
      FieldName = 'ESCOLARIDADE'
      Size = 1
    end
    object ADOQryMembroPAI: TWideStringField
      FieldName = 'PAI'
      Size = 35
    end
    object ADOQryMembroPAI_CELC: TBooleanField
      FieldName = 'PAI_CELC'
    end
    object ADOQryMembroMAE: TWideStringField
      FieldName = 'MAE'
      Size = 35
    end
    object ADOQryMembroMAE_CELC: TBooleanField
      FieldName = 'MAE_CELC'
    end
    object ADOQryMembroDATA_NASC: TDateTimeField
      FieldName = 'DATA_NASC'
    end
    object ADOQryMembroUF_NASCI: TWideStringField
      FieldName = 'UF_NASCI'
      Size = 2
    end
    object ADOQryMembroNATURALDE: TWideStringField
      FieldName = 'NATURALDE'
      Size = 35
    end
    object ADOQryMembroESTADO_CIVIL: TWideStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 1
    end
    object ADOQryMembroNOME_CONJUGUE: TWideStringField
      FieldName = 'NOME_CONJUGUE'
      Size = 40
    end
    object ADOQryMembroDATA_NASCI_CONJ: TDateTimeField
      FieldName = 'DATA_NASCI_CONJ'
    end
    object ADOQryMembroCONJUGUE_FILIADO: TBooleanField
      FieldName = 'CONJUGUE_FILIADO'
    end
    object ADOQryMembroRELIGIAO_CONJ: TWideStringField
      FieldName = 'RELIGIAO_CONJ'
      Size = 30
    end
    object ADOQryMembroCOD_PROFISSAO: TIntegerField
      FieldName = 'COD_PROFISSAO'
    end
    object ADOQryMembroEMPRESA: TWideStringField
      FieldName = 'EMPRESA'
      Size = 35
    end
    object ADOQryMembroCEP_EMP: TWideStringField
      FieldName = 'CEP_EMP'
      Size = 8
    end
    object ADOQryMembroMUNICIPIO_EMP: TWideStringField
      FieldName = 'MUNICIPIO_EMP'
      Size = 40
    end
    object ADOQryMembroUF_EMP: TWideStringField
      FieldName = 'UF_EMP'
      Size = 2
    end
    object ADOQryMembroCOD_AREA_EMP: TWideStringField
      FieldName = 'COD_AREA_EMP'
      Size = 2
    end
    object ADOQryMembroFONE_EMP: TWideStringField
      FieldName = 'FONE_EMP'
      Size = 9
    end
    object ADOQryMembroEMAIL_EMP: TWideStringField
      FieldName = 'EMAIL_EMP'
      Size = 40
    end
    object ADOQryMembroCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 35
    end
    object ADOQryMembroRENDA: TBCDField
      FieldName = 'RENDA'
      Precision = 19
    end
    object ADOQryMembroDATA_ADM_COM: TDateTimeField
      FieldName = 'DATA_ADM_COM'
    end
    object ADOQryMembroFORMA_ADM: TWideStringField
      FieldName = 'FORMA_ADM'
      Size = 1
    end
    object ADOQryMembroPROCEDENCIA_ADM: TWideStringField
      FieldName = 'PROCEDENCIA_ADM'
      Size = 35
    end
    object ADOQryMembroENVELOPE: TIntegerField
      FieldName = 'ENVELOPE'
    end
    object ADOQryMembroDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object ADOQryMembroMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 1
    end
    object ADOQryMembroDESTINO: TWideStringField
      FieldName = 'DESTINO'
      Size = 35
    end
    object ADOQryMembroFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 50
    end
    object ADOQryMembroRG: TWideStringField
      FieldName = 'RG'
      Size = 10
    end
    object ADOQryMembroCPF: TWideStringField
      FieldName = 'CPF'
      Size = 11
    end
    object ADOQryMembroCOD_USUARIO: TWideStringField
      FieldName = 'COD_USUARIO'
      Size = 8
    end
    object ADOQryMembroDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object ADOQryMembroDATA_CONF: TDateTimeField
      FieldName = 'DATA_CONF'
    end
    object ADOQryMembroDATA_BATISMO: TDateTimeField
      FieldName = 'DATA_BATISMO'
    end
    object ADOQryMembroFILIADO: TBooleanField
      FieldName = 'FILIADO'
    end
    object ADOQryMembroDATA_ATIVO: TDateTimeField
      FieldName = 'DATA_ATIVO'
    end
    object ADOQryMembroNUM_VEZES: TIntegerField
      FieldName = 'NUM_VEZES'
    end
    object ADOQryMembroVOTANTE: TDateTimeField
      FieldName = 'VOTANTE'
    end
  end
  object DSMembro: TDataSource
    DataSet = ADOQryMembro
    Left = 48
    Top = 140
  end
  object DSFamilia: TDataSource
    DataSet = ADOQryFamilia
    Left = 48
    Top = 232
  end
  object ADOQryFamilia: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Familia'
      '')
    Left = 48
    Top = 188
    object ADOQryFamiliaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryFamiliaSOBRENOME: TWideStringField
      FieldName = 'SOBRENOME'
      Size = 40
    end
    object ADOQryFamiliaAREA: TWideStringField
      FieldName = 'AREA'
      Size = 3
    end
    object ADOQryFamiliaGRUPO: TWideStringField
      FieldName = 'GRUPO'
      Size = 4
    end
    object ADOQryFamiliaCEP_MUNICIPIO: TWideStringField
      FieldName = 'CEP_MUNICIPIO'
      Size = 8
    end
    object ADOQryFamiliaRUA: TWideStringField
      FieldName = 'RUA'
      Size = 50
    end
    object ADOQryFamiliaNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOQryFamiliaAPTO: TWideStringField
      FieldName = 'APTO'
      Size = 6
    end
    object ADOQryFamiliaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object ADOQryFamiliaCOD_AREA: TWideStringField
      FieldName = 'COD_AREA'
      Size = 2
    end
    object ADOQryFamiliaTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object ADOQryFamiliaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object ADOQryFamiliaCOD_AREA_SEL: TWideStringField
      FieldName = 'COD_AREA_SEL'
      Size = 2
    end
    object ADOQryFamiliaSELULAR: TWideStringField
      FieldName = 'SELULAR'
      Size = 9
    end
    object ADOQryFamiliaCOD_AREA_FAX: TWideStringField
      FieldName = 'COD_AREA_FAX'
      Size = 2
    end
    object ADOQryFamiliaFAX: TWideStringField
      FieldName = 'FAX'
      Size = 9
    end
    object ADOQryFamiliaDATA_ULT_VISITA: TDateTimeField
      FieldName = 'DATA_ULT_VISITA'
    end
    object ADOQryFamiliaNOME_VISITANTE: TWideStringField
      FieldName = 'NOME_VISITANTE'
      Size = 35
    end
  end
  object ADOQryTipoContribuicao: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from Tipo_contribuicao')
    Left = 48
    Top = 280
    object ADOQryTipoContribuicaoCOD_TP_CONTRB: TIntegerField
      FieldName = 'COD_TP_CONTRB'
    end
    object ADOQryTipoContribuicaoDESC_TP_CONTRB: TWideStringField
      FieldName = 'DESC_TP_CONTRB'
      Size = 40
    end
    object ADOQryTipoContribuicaoCOLETIVA: TBooleanField
      FieldName = 'COLETIVA'
    end
  end
  object DSTipoContibuicao: TDataSource
    DataSet = ADOQryTipoContribuicao
    Left = 48
    Top = 324
  end
  object QryMembro: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO membros'
      
        '  (CodMembro, CodFamilia, CodTipoMembro, NomeMembro, NomeSolteir' +
        'o, Sexo, Email, TipoSangue, Celular, CodEscolaridade, Pai, PaiCE' +
        'LC, Mae, MaeCELC, DataNasc, Naturalidade, CodEstadoCivil, NomeCo' +
        'njuge, DataNascConj, ConjugeFiliado, ReligiaoConjuge, CodProfiss' +
        'ao, Empresa, CEPEmpresa, UFEmpresa, DDDEmpresa, FoneEmpresa, Ema' +
        'ilEmpresa, Cargo, Renda, DataAdmisComunidade, CodFormaAdmissao, ' +
        'ProcedenciaAdmissao, Envelope, DataSaida, CodMotivoSaida, Destin' +
        'oSaida, FotoCaminho, RG, CPF, CodUsuario, DataCadastro, DataConf' +
        'irmacao, DataBatismo, Filiado, DataAtivo, NumVezes, Votante, Cid' +
        'adeEmpresa, EnderecoEmpresa, ComplEmpresa, Endereco, Compl, Cida' +
        'de, Bairro, CEP, UF, Telefone, EnderecoDesatualizado, TelefoneDe' +
        'satualizado, CelularDesatualizado, EmailDesatualizado, CodMembro' +
        'Antigo)'
      'VALUES'
      
        '  (:CodMembro, :CodFamilia, :CodTipoMembro, :NomeMembro, :NomeSo' +
        'lteiro, :Sexo, :Email, :TipoSangue, :Celular, :CodEscolaridade, ' +
        ':Pai, :PaiCELC, :Mae, :MaeCELC, :DataNasc, :Naturalidade, :CodEs' +
        'tadoCivil, :NomeConjuge, :DataNascConj, :ConjugeFiliado, :Religi' +
        'aoConjuge, :CodProfissao, :Empresa, :CEPEmpresa, :UFEmpresa, :DD' +
        'DEmpresa, :FoneEmpresa, :EmailEmpresa, :Cargo, :Renda, :DataAdmi' +
        'sComunidade, :CodFormaAdmissao, :ProcedenciaAdmissao, :Envelope,' +
        ' :DataSaida, :CodMotivoSaida, :DestinoSaida, :FotoCaminho, :RG, ' +
        ':CPF, :CodUsuario, :DataCadastro, :DataConfirmacao, :DataBatismo' +
        ', :Filiado, :DataAtivo, :NumVezes, :Votante, :CidadeEmpresa, :En' +
        'derecoEmpresa, :ComplEmpresa, :Endereco, :Compl, :Cidade, :Bairr' +
        'o, :CEP, :UF, :Telefone, :EnderecoDesatualizado, :TelefoneDesatu' +
        'alizado, :CelularDesatualizado, :EmailDesatualizado, :CodMembroA' +
        'ntigo)')
    SQLDelete.Strings = (
      'DELETE FROM membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLUpdate.Strings = (
      'UPDATE membros'
      'SET'
      
        '  CodMembro = :CodMembro, CodFamilia = :CodFamilia, CodTipoMembr' +
        'o = :CodTipoMembro, NomeMembro = :NomeMembro, NomeSolteiro = :No' +
        'meSolteiro, Sexo = :Sexo, Email = :Email, TipoSangue = :TipoSang' +
        'ue, Celular = :Celular, CodEscolaridade = :CodEscolaridade, Pai ' +
        '= :Pai, PaiCELC = :PaiCELC, Mae = :Mae, MaeCELC = :MaeCELC, Data' +
        'Nasc = :DataNasc, Naturalidade = :Naturalidade, CodEstadoCivil =' +
        ' :CodEstadoCivil, NomeConjuge = :NomeConjuge, DataNascConj = :Da' +
        'taNascConj, ConjugeFiliado = :ConjugeFiliado, ReligiaoConjuge = ' +
        ':ReligiaoConjuge, CodProfissao = :CodProfissao, Empresa = :Empre' +
        'sa, CEPEmpresa = :CEPEmpresa, UFEmpresa = :UFEmpresa, DDDEmpresa' +
        ' = :DDDEmpresa, FoneEmpresa = :FoneEmpresa, EmailEmpresa = :Emai' +
        'lEmpresa, Cargo = :Cargo, Renda = :Renda, DataAdmisComunidade = ' +
        ':DataAdmisComunidade, CodFormaAdmissao = :CodFormaAdmissao, Proc' +
        'edenciaAdmissao = :ProcedenciaAdmissao, Envelope = :Envelope, Da' +
        'taSaida = :DataSaida, CodMotivoSaida = :CodMotivoSaida, DestinoS' +
        'aida = :DestinoSaida, FotoCaminho = :FotoCaminho, RG = :RG, CPF ' +
        '= :CPF, CodUsuario = :CodUsuario, DataCadastro = :DataCadastro, ' +
        'DataConfirmacao = :DataConfirmacao, DataBatismo = :DataBatismo, ' +
        'Filiado = :Filiado, DataAtivo = :DataAtivo, NumVezes = :NumVezes' +
        ', Votante = :Votante, CidadeEmpresa = :CidadeEmpresa, EnderecoEm' +
        'presa = :EnderecoEmpresa, ComplEmpresa = :ComplEmpresa, Endereco' +
        ' = :Endereco, Compl = :Compl, Cidade = :Cidade, Bairro = :Bairro' +
        ', CEP = :CEP, UF = :UF, Telefone = :Telefone, EnderecoDesatualiz' +
        'ado = :EnderecoDesatualizado, TelefoneDesatualizado = :TelefoneD' +
        'esatualizado, CelularDesatualizado = :CelularDesatualizado, Emai' +
        'lDesatualizado = :EmailDesatualizado, CodMembroAntigo = :CodMemb' +
        'roAntigo'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLRefresh.Strings = (
      
        'SELECT CodMembro, CodFamilia, CodTipoMembro, NomeMembro, NomeSol' +
        'teiro, Sexo, Email, TipoSangue, Celular, CodEscolaridade, Pai, P' +
        'aiCELC, Mae, MaeCELC, DataNasc, Naturalidade, CodEstadoCivil, No' +
        'meConjuge, DataNascConj, ConjugeFiliado, ReligiaoConjuge, CodPro' +
        'fissao, Empresa, CEPEmpresa, UFEmpresa, DDDEmpresa, FoneEmpresa,' +
        ' EmailEmpresa, Cargo, Renda, DataAdmisComunidade, CodFormaAdmiss' +
        'ao, ProcedenciaAdmissao, Envelope, DataSaida, CodMotivoSaida, De' +
        'stinoSaida, FotoCaminho, RG, CPF, CodUsuario, DataCadastro, Data' +
        'Confirmacao, DataBatismo, Filiado, DataAtivo, NumVezes, Votante,' +
        ' CidadeEmpresa, EnderecoEmpresa, ComplEmpresa, Endereco, Compl, ' +
        'Cidade, Bairro, CEP, UF, Telefone, EnderecoDesatualizado, Telefo' +
        'neDesatualizado, CelularDesatualizado, EmailDesatualizado, CodMe' +
        'mbroAntigo FROM membros'
      'WHERE'
      '  CodMembro = :CodMembro')
    SQLLock.Strings = (
      'SELECT * FROM membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from membros')
    Left = 509
    Top = 96
    object QryMembroCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryMembroCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryMembroCodTipoMembro: TLargeintField
      FieldName = 'CodTipoMembro'
    end
    object QryMembroNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Size = 255
    end
    object QryMembroNomeSolteiro: TStringField
      FieldName = 'NomeSolteiro'
      Size = 255
    end
    object QryMembroSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryMembroEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryMembroTipoSangue: TStringField
      FieldName = 'TipoSangue'
      Size = 45
    end
    object QryMembroCelular: TStringField
      FieldName = 'Celular'
    end
    object QryMembroCodEscolaridade: TLargeintField
      FieldName = 'CodEscolaridade'
    end
    object QryMembroPai: TStringField
      FieldName = 'Pai'
      Size = 255
    end
    object QryMembroPaiCELC: TStringField
      FieldName = 'PaiCELC'
      FixedChar = True
      Size = 3
    end
    object QryMembroMae: TStringField
      FieldName = 'Mae'
      Size = 255
    end
    object QryMembroMaeCELC: TStringField
      FieldName = 'MaeCELC'
      FixedChar = True
      Size = 3
    end
    object QryMembroDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryMembroNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 255
    end
    object QryMembroCodEstadoCivil: TLargeintField
      FieldName = 'CodEstadoCivil'
    end
    object QryMembroNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Size = 255
    end
    object QryMembroDataNascConj: TDateField
      FieldName = 'DataNascConj'
    end
    object QryMembroConjugeFiliado: TStringField
      FieldName = 'ConjugeFiliado'
      FixedChar = True
      Size = 3
    end
    object QryMembroReligiaoConjuge: TStringField
      FieldName = 'ReligiaoConjuge'
      Size = 255
    end
    object QryMembroCodProfissao: TLargeintField
      FieldName = 'CodProfissao'
    end
    object QryMembroEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 255
    end
    object QryMembroCEPEmpresa: TStringField
      FieldName = 'CEPEmpresa'
      Size = 15
    end
    object QryMembroUFEmpresa: TStringField
      FieldName = 'UFEmpresa'
      FixedChar = True
      Size = 2
    end
    object QryMembroDDDEmpresa: TStringField
      FieldName = 'DDDEmpresa'
      FixedChar = True
      Size = 10
    end
    object QryMembroFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      FixedChar = True
    end
    object QryMembroEmailEmpresa: TStringField
      FieldName = 'EmailEmpresa'
      Size = 255
    end
    object QryMembroCargo: TStringField
      FieldName = 'Cargo'
      Size = 150
    end
    object QryMembroRenda: TFloatField
      FieldName = 'Renda'
    end
    object QryMembroDataAdmisComunidade: TDateTimeField
      FieldName = 'DataAdmisComunidade'
    end
    object QryMembroCodFormaAdmissao: TLargeintField
      FieldName = 'CodFormaAdmissao'
    end
    object QryMembroProcedenciaAdmissao: TStringField
      FieldName = 'ProcedenciaAdmissao'
      Size = 255
    end
    object QryMembroEnvelope: TLargeintField
      FieldName = 'Envelope'
    end
    object QryMembroDataSaida: TDateField
      FieldName = 'DataSaida'
    end
    object QryMembroCodMotivoSaida: TLargeintField
      FieldName = 'CodMotivoSaida'
    end
    object QryMembroDestinoSaida: TStringField
      FieldName = 'DestinoSaida'
      Size = 255
    end
    object QryMembroFotoCaminho: TStringField
      FieldName = 'FotoCaminho'
      Size = 255
    end
    object QryMembroRG: TStringField
      FieldName = 'RG'
    end
    object QryMembroCPF: TStringField
      FieldName = 'CPF'
      Size = 40
    end
    object QryMembroCodUsuario: TLargeintField
      FieldName = 'CodUsuario'
    end
    object QryMembroDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object QryMembroDataConfirmacao: TDateField
      FieldName = 'DataConfirmacao'
    end
    object QryMembroDataBatismo: TDateField
      FieldName = 'DataBatismo'
    end
    object QryMembroFiliado: TStringField
      FieldName = 'Filiado'
      FixedChar = True
      Size = 3
    end
    object QryMembroDataAtivo: TDateTimeField
      FieldName = 'DataAtivo'
    end
    object QryMembroNumVezes: TLargeintField
      FieldName = 'NumVezes'
    end
    object QryMembroVotante: TDateTimeField
      FieldName = 'Votante'
    end
    object QryMembroCidadeEmpresa: TStringField
      FieldName = 'CidadeEmpresa'
      Size = 200
    end
    object QryMembroEnderecoEmpresa: TStringField
      FieldName = 'EnderecoEmpresa'
      Size = 250
    end
    object QryMembroComplEmpresa: TStringField
      FieldName = 'ComplEmpresa'
      Size = 45
    end
    object QryMembroEndereco: TStringField
      FieldName = 'Endereco'
      Size = 250
    end
    object QryMembroCompl: TStringField
      FieldName = 'Compl'
      Size = 150
    end
    object QryMembroCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryMembroBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryMembroCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 12
    end
    object QryMembroUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryMembroTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
    end
    object QryMembroEnderecoDesatualizado: TBooleanField
      FieldName = 'EnderecoDesatualizado'
    end
    object QryMembroTelefoneDesatualizado: TBooleanField
      FieldName = 'TelefoneDesatualizado'
    end
    object QryMembroCelularDesatualizado: TBooleanField
      FieldName = 'CelularDesatualizado'
    end
    object QryMembroEmailDesatualizado: TBooleanField
      FieldName = 'EmailDesatualizado'
    end
    object QryMembroCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
  end
  object DSQryMembro: TDataSource
    DataSet = QryMembro
    Left = 509
    Top = 140
  end
  object QryFamilia: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO familia'
      
        '  (CodFamilia, Sobrenome, Area, Cep, Endereco, Compl, Bairro, Te' +
        'lefone, Email, Celular, Fax, DataUltVisita, Visitante, Cidade, U' +
        'F)'
      'VALUES'
      
        '  (:CodFamilia, :Sobrenome, :Area, :Cep, :Endereco, :Compl, :Bai' +
        'rro, :Telefone, :Email, :Celular, :Fax, :DataUltVisita, :Visitan' +
        'te, :Cidade, :UF)')
    SQLDelete.Strings = (
      'DELETE FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLUpdate.Strings = (
      'UPDATE familia'
      'SET'
      
        '  CodFamilia = :CodFamilia, Sobrenome = :Sobrenome, Area = :Area' +
        ', Cep = :Cep, Endereco = :Endereco, Compl = :Compl, Bairro = :Ba' +
        'irro, Telefone = :Telefone, Email = :Email, Celular = :Celular, ' +
        'Fax = :Fax, DataUltVisita = :DataUltVisita, Visitante = :Visitan' +
        'te, Cidade = :Cidade, UF = :UF'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLRefresh.Strings = (
      
        'SELECT CodFamilia, Sobrenome, Area, Cep, Endereco, Compl, Bairro' +
        ', Telefone, Email, Celular, Fax, DataUltVisita, Visitante, Cidad' +
        'e, UF FROM familia'
      'WHERE'
      '  CodFamilia = :CodFamilia')
    SQLLock.Strings = (
      'SELECT * FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select * from Familia')
    Left = 509
    Top = 188
    object QryFamiliaCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryFamiliaSobrenome: TStringField
      FieldName = 'Sobrenome'
      Size = 255
    end
    object QryFamiliaArea: TStringField
      FieldName = 'Area'
      Size = 255
    end
    object QryFamiliaCep: TStringField
      FieldName = 'Cep'
      FixedChar = True
      Size = 8
    end
    object QryFamiliaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object QryFamiliaCompl: TStringField
      FieldName = 'Compl'
      Size = 255
    end
    object QryFamiliaBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryFamiliaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
    object QryFamiliaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryFamiliaCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 45
    end
    object QryFamiliaFax: TStringField
      FieldName = 'Fax'
      Size = 45
    end
    object QryFamiliaDataUltVisita: TDateTimeField
      FieldName = 'DataUltVisita'
    end
    object QryFamiliaVisitante: TStringField
      FieldName = 'Visitante'
      Size = 255
    end
    object QryFamiliaCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryFamiliaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object DSQryFamilia: TDataSource
    DataSet = QryFamilia
    Left = 509
    Top = 232
  end
  object QryTipoContribuicao: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO tipocontribuicao'
      '  (CodTpContrb, DescTPContrb, Coletiva)'
      'VALUES'
      '  (:CodTpContrb, :DescTPContrb, :Coletiva)')
    SQLDelete.Strings = (
      'DELETE FROM tipocontribuicao'
      'WHERE'
      '  CodTpContrb = :Old_CodTpContrb')
    SQLUpdate.Strings = (
      'UPDATE tipocontribuicao'
      'SET'
      
        '  CodTpContrb = :CodTpContrb, DescTPContrb = :DescTPContrb, Cole' +
        'tiva = :Coletiva'
      'WHERE'
      '  CodTpContrb = :Old_CodTpContrb')
    SQLRefresh.Strings = (
      'SELECT CodTpContrb, DescTPContrb, Coletiva FROM tipocontribuicao'
      'WHERE'
      '  CodTpContrb = :CodTpContrb')
    SQLLock.Strings = (
      'SELECT * FROM tipocontribuicao'
      'WHERE'
      '  CodTpContrb = :Old_CodTpContrb'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from tipocontribuicao')
    Left = 509
    Top = 280
    object QryTipoContribuicaoCodTpContrb: TIntegerField
      FieldName = 'CodTpContrb'
    end
    object QryTipoContribuicaoDescTPContrb: TStringField
      FieldName = 'DescTPContrb'
      Size = 255
    end
    object QryTipoContribuicaoColetiva: TBooleanField
      FieldName = 'Coletiva'
    end
  end
  object DSQryTipoContribuicao: TDataSource
    DataSet = QryTipoContribuicao
    Left = 509
    Top = 324
  end
  object ADOQryVisitante: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from visitante')
    Left = 48
    Top = 372
    object ADOQryVisitanteCOD_VISITANTE: TIntegerField
      FieldName = 'COD_VISITANTE'
    end
    object ADOQryVisitanteNOME_VISITANTE: TWideStringField
      FieldName = 'NOME_VISITANTE'
      Size = 40
    end
    object ADOQryVisitanteRUA: TWideStringField
      FieldName = 'RUA'
      Size = 40
    end
    object ADOQryVisitanteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOQryVisitanteAPTO: TIntegerField
      FieldName = 'APTO'
    end
    object ADOQryVisitanteBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Size = 35
    end
    object ADOQryVisitanteCEP_MUNICIPIO: TWideStringField
      FieldName = 'CEP_MUNICIPIO'
      Size = 8
    end
    object ADOQryVisitanteSEXO: TWideStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ADOQryVisitanteDATA_NASC: TDateTimeField
      FieldName = 'DATA_NASC'
    end
    object ADOQryVisitanteCOD_AREAF: TWideStringField
      FieldName = 'COD_AREAF'
      Size = 2
    end
    object ADOQryVisitanteTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 9
    end
    object ADOQryVisitanteCOD_AREAS: TWideStringField
      FieldName = 'COD_AREAS'
      Size = 2
    end
    object ADOQryVisitanteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 9
    end
    object ADOQryVisitanteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object ADOQryVisitanteMOTIVO: TWideStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object ADOQryVisitanteDATA_VISITA: TDateTimeField
      FieldName = 'DATA_VISITA'
    end
  end
  object DSVisitante: TDataSource
    DataSet = ADOQryVisitante
    Left = 48
    Top = 420
  end
  object DSQryVisitante: TDataSource
    DataSet = QryVisitante
    Left = 509
    Top = 420
  end
  object QryVisitante: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO visitante'
      
        '  (CodVisitante, NomeVisitante, Rua, numero, Compl, Bairro, CepM' +
        'unicipio, Sexo, DataNasc, DDD, Telefone, DDDCel, Celular, Email,' +
        ' Motivo, DataVisita)'
      'VALUES'
      
        '  (:CodVisitante, :NomeVisitante, :Rua, :numero, :Compl, :Bairro' +
        ', :CepMunicipio, :Sexo, :DataNasc, :DDD, :Telefone, :DDDCel, :Ce' +
        'lular, :Email, :Motivo, :DataVisita)')
    SQLDelete.Strings = (
      'DELETE FROM visitante'
      'WHERE'
      '  CodVisitante = :Old_CodVisitante')
    SQLUpdate.Strings = (
      'UPDATE visitante'
      'SET'
      
        '  CodVisitante = :CodVisitante, NomeVisitante = :NomeVisitante, ' +
        'Rua = :Rua, numero = :numero, Compl = :Compl, Bairro = :Bairro, ' +
        'CepMunicipio = :CepMunicipio, Sexo = :Sexo, DataNasc = :DataNasc' +
        ', DDD = :DDD, Telefone = :Telefone, DDDCel = :DDDCel, Celular = ' +
        ':Celular, Email = :Email, Motivo = :Motivo, DataVisita = :DataVi' +
        'sita'
      'WHERE'
      '  CodVisitante = :Old_CodVisitante')
    SQLRefresh.Strings = (
      
        'SELECT CodVisitante, NomeVisitante, Rua, numero, Compl, Bairro, ' +
        'CepMunicipio, Sexo, DataNasc, DDD, Telefone, DDDCel, Celular, Em' +
        'ail, Motivo, DataVisita FROM visitante'
      'WHERE'
      '  CodVisitante = :CodVisitante')
    SQLLock.Strings = (
      'SELECT * FROM visitante'
      'WHERE'
      '  CodVisitante = :Old_CodVisitante'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from Visitante')
    Left = 509
    Top = 372
    object QryVisitanteCodVisitante: TIntegerField
      FieldName = 'CodVisitante'
    end
    object QryVisitanteNomeVisitante: TStringField
      FieldName = 'NomeVisitante'
      Size = 255
    end
    object QryVisitanteRua: TStringField
      FieldName = 'Rua'
      Size = 255
    end
    object QryVisitantenumero: TIntegerField
      FieldName = 'numero'
    end
    object QryVisitanteCompl: TStringField
      FieldName = 'Compl'
      Size = 255
    end
    object QryVisitanteBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryVisitanteCepMunicipio: TStringField
      FieldName = 'CepMunicipio'
      Size = 45
    end
    object QryVisitanteSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryVisitanteDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryVisitanteDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 10
    end
    object QryVisitanteTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 30
    end
    object QryVisitanteDDDCel: TStringField
      FieldName = 'DDDCel'
      FixedChar = True
      Size = 10
    end
    object QryVisitanteCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 30
    end
    object QryVisitanteEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryVisitanteMotivo: TMemoField
      FieldName = 'Motivo'
      BlobType = ftMemo
    end
    object QryVisitanteDataVisita: TDateField
      FieldName = 'DataVisita'
    end
  end
  object ADOQryContribuicao: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from contribuicao')
    Left = 48
    Top = 468
    object ADOQryContribuicaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ADOQryContribuicaoHORA: TDateTimeField
      FieldName = 'HORA'
    end
    object ADOQryContribuicaoCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryContribuicaoCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryContribuicaoCOD_TP_CONTRB: TIntegerField
      FieldName = 'COD_TP_CONTRB'
    end
    object ADOQryContribuicaoVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 19
    end
  end
  object DSContribuicao: TDataSource
    DataSet = ADOQryContribuicao
    Left = 48
    Top = 516
  end
  object DSQryContribuicao: TDataSource
    DataSet = QryContribuicao
    Left = 509
    Top = 516
  end
  object QryContribuicao: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO contribuicao'
      
        '  (DataContribuicao, CodMembroAntigo, CodFamilia, CodTpContrb, V' +
        'alor, CodContribuicao, Hora, CodMembro, Envelope)'
      'VALUES'
      
        '  (:DataContribuicao, :CodMembroAntigo, :CodFamilia, :CodTpContr' +
        'b, :Valor, :CodContribuicao, :Hora, :CodMembro, :Envelope)')
    SQLDelete.Strings = (
      'DELETE FROM contribuicao'
      'WHERE'
      '  CodContribuicao = :Old_CodContribuicao')
    SQLUpdate.Strings = (
      'UPDATE contribuicao'
      'SET'
      
        '  DataContribuicao = :DataContribuicao, CodMembroAntigo = :CodMe' +
        'mbroAntigo, CodFamilia = :CodFamilia, CodTpContrb = :CodTpContrb' +
        ', Valor = :Valor, CodContribuicao = :CodContribuicao, Hora = :Ho' +
        'ra, CodMembro = :CodMembro, Envelope = :Envelope'
      'WHERE'
      '  CodContribuicao = :Old_CodContribuicao')
    SQLRefresh.Strings = (
      
        'SELECT DataContribuicao, CodMembroAntigo, CodFamilia, CodTpContr' +
        'b, Valor, CodContribuicao, Hora, CodMembro, Envelope FROM contri' +
        'buicao'
      'WHERE'
      '  CodContribuicao = :CodContribuicao')
    SQLLock.Strings = (
      'SELECT * FROM contribuicao'
      'WHERE'
      '  CodContribuicao = :Old_CodContribuicao'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from contribuicao')
    Left = 509
    Top = 468
    object QryContribuicaoCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryContribuicaoCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryContribuicaoCodTpContrb: TLargeintField
      FieldName = 'CodTpContrb'
    end
    object QryContribuicaoValor: TFloatField
      FieldName = 'Valor'
    end
    object QryContribuicaoCodContribuicao: TLargeintField
      FieldName = 'CodContribuicao'
    end
    object QryContribuicaoHora: TTimeField
      FieldName = 'Hora'
    end
    object QryContribuicaoDataContribuicao: TDateField
      FieldName = 'DataContribuicao'
    end
    object QryContribuicaoCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
    object QryContribuicaoEnvelope: TLargeintField
      FieldName = 'Envelope'
    end
  end
  object ADOQryControle: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from controle')
    Left = 48
    Top = 564
    object ADOQryControleCODIGO: TBCDField
      FieldName = 'CODIGO'
      Precision = 19
    end
    object ADOQryControleVALOR: TWideStringField
      FieldName = 'VALOR'
      Size = 50
    end
    object ADOQryControleDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DSControle: TDataSource
    DataSet = ADOQryControle
    Left = 48
    Top = 612
  end
  object DSQryControle: TDataSource
    DataSet = QryControle
    Left = 509
    Top = 612
  end
  object QryControle: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO controle'
      '  (Codigo, Valor, Descricao)'
      'VALUES'
      '  (:Codigo, :Valor, :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM controle'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE controle'
      'SET'
      '  Codigo = :Codigo, Valor = :Valor, Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      'SELECT Codigo, Valor, Descricao FROM controle'
      'WHERE'
      '  Codigo = :Codigo')
    SQLLock.Strings = (
      'SELECT * FROM controle'
      'WHERE'
      '  Codigo = :Old_Codigo'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select *  from controle')
    Left = 509
    Top = 564
    object QryControleCodigo: TLargeintField
      FieldName = 'Codigo'
    end
    object QryControleValor: TStringField
      FieldName = 'Valor'
      Size = 255
    end
    object QryControleDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
  end
  object ADOQryDataEspecial: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from data_especial')
    Left = 160
    Top = 92
    object ADOQryDataEspecialCOD_DATA_ESP: TIntegerField
      FieldName = 'COD_DATA_ESP'
    end
    object ADOQryDataEspecialDESC_DATA_ESP: TWideStringField
      FieldName = 'DESC_DATA_ESP'
      Size = 35
    end
  end
  object DSDataEspecial: TDataSource
    DataSet = ADOQryDataEspecial
    Left = 160
    Top = 140
  end
  object ADOQryDepartamento: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from departamento')
    Left = 160
    Top = 188
    object ADOQryDepartamentoCOD_DEPTO: TIntegerField
      FieldName = 'COD_DEPTO'
    end
    object ADOQryDepartamentoDESC_DEPTO: TWideStringField
      FieldName = 'DESC_DEPTO'
      Size = 35
    end
  end
  object DSDepartamento: TDataSource
    DataSet = ADOQryDepartamento
    Left = 160
    Top = 232
  end
  object ADOQryFilho: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from filho')
    Left = 160
    Top = 280
    object ADOQryFilhoCOD_FILHO: TIntegerField
      FieldName = 'COD_FILHO'
    end
    object ADOQryFilhoCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryFilhoCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryFilhoNOME_FILHO: TWideStringField
      FieldName = 'NOME_FILHO'
      Size = 35
    end
    object ADOQryFilhoDATA_NASC: TDateTimeField
      FieldName = 'DATA_NASC'
    end
    object ADOQryFilhoIND_COMUNIDADE: TBooleanField
      FieldName = 'IND_COMUNIDADE'
    end
  end
  object DSFilho: TDataSource
    DataSet = ADOQryFilho
    Left = 160
    Top = 324
  end
  object ADOQryMembroDataEspec: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from Membro_data_espec')
    Left = 160
    Top = 372
    object ADOQryMembroDataEspecCOD_ACONTEC: TIntegerField
      FieldName = 'COD_ACONTEC'
    end
    object ADOQryMembroDataEspecCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryMembroDataEspecCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryMembroDataEspecDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object ADOQryMembroDataEspecUF_DT_ESP: TWideStringField
      FieldName = 'UF_DT_ESP'
      Size = 2
    end
    object ADOQryMembroDataEspecMUNICIPIO_DT_ESP: TWideStringField
      FieldName = 'MUNICIPIO_DT_ESP'
      Size = 40
    end
    object ADOQryMembroDataEspecIGREJA: TWideStringField
      FieldName = 'IGREJA'
      Size = 35
    end
    object ADOQryMembroDataEspecOFICIANTE: TWideStringField
      FieldName = 'OFICIANTE'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA1: TWideStringField
      FieldName = 'TESTEMUNHA1'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA2: TWideStringField
      FieldName = 'TESTEMUNHA2'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA3: TWideStringField
      FieldName = 'TESTEMUNHA3'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA4: TWideStringField
      FieldName = 'TESTEMUNHA4'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA5: TWideStringField
      FieldName = 'TESTEMUNHA5'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA6: TWideStringField
      FieldName = 'TESTEMUNHA6'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA7: TWideStringField
      FieldName = 'TESTEMUNHA7'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA8: TWideStringField
      FieldName = 'TESTEMUNHA8'
      Size = 30
    end
    object ADOQryMembroDataEspecTESTEMUNHA9: TWideStringField
      FieldName = 'TESTEMUNHA9'
      Size = 30
    end
  end
  object DSMembroDataEspec: TDataSource
    DataSet = ADOQryMembroDataEspec
    Left = 160
    Top = 420
  end
  object ADOQryMembroDepto: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Membro_depto')
    Left = 160
    Top = 468
    object ADOQryMembroDeptoCOD_DEPTO: TIntegerField
      FieldName = 'COD_DEPTO'
    end
    object ADOQryMembroDeptoCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryMembroDeptoCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
  end
  object DSMembroDepto: TDataSource
    DataSet = ADOQryMembroDepto
    Left = 160
    Top = 516
  end
  object ADOQryMensagem: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Mensagem')
    Left = 160
    Top = 564
    object ADOQryMensagemCOD_MENSAGEM: TIntegerField
      FieldName = 'COD_MENSAGEM'
    end
    object ADOQryMensagemDESC_MENSAGEM: TWideStringField
      FieldName = 'DESC_MENSAGEM'
      Size = 255
    end
    object ADOQryMensagemCOMPL: TWideStringField
      FieldName = 'COMPL'
    end
  end
  object DSMensagem: TDataSource
    DataSet = ADOQryMensagem
    Left = 160
    Top = 612
  end
  object ADOQryProfissao: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from profissao')
    Left = 290
    Top = 92
    object ADOQryProfissaoCOD_PROFISSAO: TIntegerField
      FieldName = 'COD_PROFISSAO'
    end
    object ADOQryProfissaoDESC_PROFISSAO: TWideStringField
      FieldName = 'DESC_PROFISSAO'
      Size = 40
    end
  end
  object DSProfissao: TDataSource
    DataSet = ADOQryProfissao
    Left = 290
    Top = 140
  end
  object ADOQryVisita: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from visita')
    Left = 290
    Top = 188
    object ADOQryVisitaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryVisitaDATA_VISITA: TDateTimeField
      FieldName = 'DATA_VISITA'
    end
    object ADOQryVisitaVISITANTE: TWideStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object ADOQryVisitaASSUNTO: TWideMemoField
      FieldName = 'ASSUNTO'
      BlobType = ftWideMemo
    end
    object ADOQryVisitaREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 40
    end
  end
  object DSVisita: TDataSource
    DataSet = ADOQryVisita
    Left = 290
    Top = 232
  end
  object ADOQryVotacao: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Votacao')
    Left = 290
    Top = 280
    object ADOQryVotacaoCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQryVotacaoCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQryVotacaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object DSVotacao: TDataSource
    DataSet = ADOQryVotacao
    Left = 290
    Top = 324
  end
  object DSQryDataEspecial: TDataSource
    DataSet = QryDataEspecial
    Left = 636
    Top = 140
  end
  object QryDataEspecial: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO dataespecial'
      '  (CodDataEsp, DescDataEsp)'
      'VALUES'
      '  (:CodDataEsp, :DescDataEsp)')
    SQLDelete.Strings = (
      'DELETE FROM dataespecial'
      'WHERE'
      '  CodDataEsp = :Old_CodDataEsp')
    SQLUpdate.Strings = (
      'UPDATE dataespecial'
      'SET'
      '  CodDataEsp = :CodDataEsp, DescDataEsp = :DescDataEsp'
      'WHERE'
      '  CodDataEsp = :Old_CodDataEsp')
    SQLRefresh.Strings = (
      'SELECT CodDataEsp, DescDataEsp FROM dataespecial'
      'WHERE'
      '  CodDataEsp = :CodDataEsp')
    SQLLock.Strings = (
      'SELECT * FROM dataespecial'
      'WHERE'
      '  CodDataEsp = :Old_CodDataEsp'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from dataespecial')
    Left = 636
    Top = 96
    object QryDataEspecialCodDataEsp: TLargeintField
      FieldName = 'CodDataEsp'
    end
    object QryDataEspecialDescDataEsp: TStringField
      FieldName = 'DescDataEsp'
      Size = 255
    end
  end
  object DSQryDepartamento: TDataSource
    DataSet = QryDepartamento
    Left = 636
    Top = 232
  end
  object QryDepartamento: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO departamento'
      '  (CodDepto, DescDepto)'
      'VALUES'
      '  (:CodDepto, :DescDepto)')
    SQLDelete.Strings = (
      'DELETE FROM departamento'
      'WHERE'
      '  CodDepto = :Old_CodDepto')
    SQLUpdate.Strings = (
      'UPDATE departamento'
      'SET'
      '  CodDepto = :CodDepto, DescDepto = :DescDepto'
      'WHERE'
      '  CodDepto = :Old_CodDepto')
    SQLRefresh.Strings = (
      'SELECT CodDepto, DescDepto FROM departamento'
      'WHERE'
      '  CodDepto = :CodDepto')
    SQLLock.Strings = (
      'SELECT * FROM departamento'
      'WHERE'
      '  CodDepto = :Old_CodDepto'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select *  from departamento')
    Left = 636
    Top = 188
    object QryDepartamentoCodDepto: TLargeintField
      FieldName = 'CodDepto'
    end
    object QryDepartamentoDescDepto: TStringField
      FieldName = 'DescDepto'
      Size = 255
    end
  end
  object DSQryFilho: TDataSource
    DataSet = QryFilho
    Left = 636
    Top = 324
  end
  object QryFilho: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO filho'
      
        '  (CodFilho, CodMembroAntigo, CodFamilia, NomeFilho, DataNasc, I' +
        'ndComunidade, CodMembro)'
      'VALUES'
      
        '  (:CodFilho, :CodMembroAntigo, :CodFamilia, :NomeFilho, :DataNa' +
        'sc, :IndComunidade, :CodMembro)')
    SQLDelete.Strings = (
      'DELETE FROM filho'
      'WHERE'
      '  CodFilho = :Old_CodFilho')
    SQLUpdate.Strings = (
      'UPDATE filho'
      'SET'
      
        '  CodFilho = :CodFilho, CodMembroAntigo = :CodMembroAntigo, CodF' +
        'amilia = :CodFamilia, NomeFilho = :NomeFilho, DataNasc = :DataNa' +
        'sc, IndComunidade = :IndComunidade, CodMembro = :CodMembro'
      'WHERE'
      '  CodFilho = :Old_CodFilho')
    SQLRefresh.Strings = (
      
        'SELECT CodFilho, CodMembroAntigo, CodFamilia, NomeFilho, DataNas' +
        'c, IndComunidade, CodMembro FROM filho'
      'WHERE'
      '  CodFilho = :CodFilho')
    SQLLock.Strings = (
      'SELECT * FROM filho'
      'WHERE'
      '  CodFilho = :Old_CodFilho'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select * from filho')
    Left = 636
    Top = 280
    object QryFilhoCodFilho: TLargeintField
      FieldName = 'CodFilho'
    end
    object QryFilhoCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
    object QryFilhoCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryFilhoNomeFilho: TStringField
      FieldName = 'NomeFilho'
      Size = 255
    end
    object QryFilhoDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryFilhoIndComunidade: TLargeintField
      FieldName = 'IndComunidade'
    end
    object QryFilhoCodMembro: TBooleanField
      FieldName = 'CodMembro'
    end
  end
  object DSqryMembroDataEspec: TDataSource
    DataSet = QryMembroDataEspec
    Left = 636
    Top = 420
  end
  object QryMembroDataEspec: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO membrodataespec'
      
        '  (CodAcontec, CodMembro, CodFamilia, Data, UFDTEsp, MunicipioDT' +
        'Esp, Igreja, Oficiante, Testemunha1, Testemunha2, Testemunha3, T' +
        'estemunha4, Testemunha5, Testemunha6, Testemunha7, Testemunha8, ' +
        'Testemunha9)'
      'VALUES'
      
        '  (:CodAcontec, :CodMembro, :CodFamilia, :Data, :UFDTEsp, :Munic' +
        'ipioDTEsp, :Igreja, :Oficiante, :Testemunha1, :Testemunha2, :Tes' +
        'temunha3, :Testemunha4, :Testemunha5, :Testemunha6, :Testemunha7' +
        ', :Testemunha8, :Testemunha9)')
    SQLDelete.Strings = (
      'DELETE FROM membrodataespec'
      'WHERE'
      '  CodAcontec = :Old_CodAcontec')
    SQLUpdate.Strings = (
      'UPDATE membrodataespec'
      'SET'
      
        '  CodAcontec = :CodAcontec, CodMembro = :CodMembro, CodFamilia =' +
        ' :CodFamilia, Data = :Data, UFDTEsp = :UFDTEsp, MunicipioDTEsp =' +
        ' :MunicipioDTEsp, Igreja = :Igreja, Oficiante = :Oficiante, Test' +
        'emunha1 = :Testemunha1, Testemunha2 = :Testemunha2, Testemunha3 ' +
        '= :Testemunha3, Testemunha4 = :Testemunha4, Testemunha5 = :Teste' +
        'munha5, Testemunha6 = :Testemunha6, Testemunha7 = :Testemunha7, ' +
        'Testemunha8 = :Testemunha8, Testemunha9 = :Testemunha9'
      'WHERE'
      '  CodAcontec = :Old_CodAcontec')
    SQLRefresh.Strings = (
      
        'SELECT CodAcontec, CodMembro, CodFamilia, Data, UFDTEsp, Municip' +
        'ioDTEsp, Igreja, Oficiante, Testemunha1, Testemunha2, Testemunha' +
        '3, Testemunha4, Testemunha5, Testemunha6, Testemunha7, Testemunh' +
        'a8, Testemunha9 FROM membrodataespec'
      'WHERE'
      '  CodAcontec = :CodAcontec')
    SQLLock.Strings = (
      'SELECT * FROM membrodataespec'
      'WHERE'
      '  CodAcontec = :Old_CodAcontec'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select * from membrodataespec')
    Left = 636
    Top = 372
    object QryMembroDataEspecCodAcontec: TLargeintField
      FieldName = 'CodAcontec'
    end
    object QryMembroDataEspecCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryMembroDataEspecCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryMembroDataEspecData: TDateField
      FieldName = 'Data'
    end
    object QryMembroDataEspecUFDTEsp: TStringField
      FieldName = 'UFDTEsp'
      FixedChar = True
      Size = 2
    end
    object QryMembroDataEspecMunicipioDTEsp: TStringField
      FieldName = 'MunicipioDTEsp'
      Size = 255
    end
    object QryMembroDataEspecIgreja: TStringField
      FieldName = 'Igreja'
      Size = 255
    end
    object QryMembroDataEspecOficiante: TStringField
      FieldName = 'Oficiante'
      Size = 255
    end
    object QryMembroDataEspecTestemunha1: TStringField
      FieldName = 'Testemunha1'
      Size = 255
    end
    object QryMembroDataEspecTestemunha2: TStringField
      FieldName = 'Testemunha2'
      Size = 255
    end
    object QryMembroDataEspecTestemunha3: TStringField
      FieldName = 'Testemunha3'
      Size = 255
    end
    object QryMembroDataEspecTestemunha4: TStringField
      FieldName = 'Testemunha4'
      Size = 255
    end
    object QryMembroDataEspecTestemunha5: TStringField
      FieldName = 'Testemunha5'
      Size = 255
    end
    object QryMembroDataEspecTestemunha6: TStringField
      FieldName = 'Testemunha6'
      Size = 255
    end
    object QryMembroDataEspecTestemunha7: TStringField
      FieldName = 'Testemunha7'
      Size = 255
    end
    object QryMembroDataEspecTestemunha8: TStringField
      FieldName = 'Testemunha8'
      Size = 255
    end
    object QryMembroDataEspecTestemunha9: TStringField
      FieldName = 'Testemunha9'
      Size = 255
    end
  end
  object DSQryMembroDepto: TDataSource
    DataSet = QryMembroDepto
    Left = 636
    Top = 516
  end
  object QryMembroDepto: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO membrodepto'
      '  (CodDepto, CodMembro, CodFamilia)'
      'VALUES'
      '  (:CodDepto, :CodMembro, :CodFamilia)')
    SQLDelete.Strings = (
      'DELETE FROM membrodepto'
      'WHERE'
      
        '  CodDepto = :Old_CodDepto AND CodMembro = :Old_CodMembro AND Co' +
        'dFamilia = :Old_CodFamilia')
    SQLUpdate.Strings = (
      'UPDATE membrodepto'
      'SET'
      
        '  CodDepto = :CodDepto, CodMembro = :CodMembro, CodFamilia = :Co' +
        'dFamilia'
      'WHERE'
      
        '  CodDepto = :Old_CodDepto AND CodMembro = :Old_CodMembro AND Co' +
        'dFamilia = :Old_CodFamilia')
    SQLRefresh.Strings = (
      'SELECT CodDepto, CodMembro, CodFamilia FROM membrodepto'
      'WHERE'
      
        '  CodDepto = :CodDepto AND CodMembro = :CodMembro AND CodFamilia' +
        ' = :CodFamilia')
    SQLLock.Strings = (
      'SELECT * FROM membrodepto'
      'WHERE'
      
        '  CodDepto = :Old_CodDepto AND CodMembro = :Old_CodMembro AND Co' +
        'dFamilia = :Old_CodFamilia'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select * from membrodepto')
    Left = 636
    Top = 468
    object QryMembroDeptoCodDepto: TLargeintField
      FieldName = 'CodDepto'
    end
    object QryMembroDeptoCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryMembroDeptoCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
  end
  object DSQryMensagem: TDataSource
    DataSet = QryMensagem
    Left = 636
    Top = 612
  end
  object QryMensagem: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO mensagem'
      '  (CodMensagem, DescMensagem, Compl)'
      'VALUES'
      '  (:CodMensagem, :DescMensagem, :Compl)')
    SQLDelete.Strings = (
      'DELETE FROM mensagem'
      'WHERE'
      '  CodMensagem = :Old_CodMensagem')
    SQLUpdate.Strings = (
      'UPDATE mensagem'
      'SET'
      
        '  CodMensagem = :CodMensagem, DescMensagem = :DescMensagem, Comp' +
        'l = :Compl'
      'WHERE'
      '  CodMensagem = :Old_CodMensagem')
    SQLRefresh.Strings = (
      'SELECT CodMensagem, DescMensagem, Compl FROM mensagem'
      'WHERE'
      '  CodMensagem = :CodMensagem')
    SQLLock.Strings = (
      'SELECT * FROM mensagem'
      'WHERE'
      '  CodMensagem = :Old_CodMensagem'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'select *  from Mensagem')
    Left = 636
    Top = 564
    object QryMensagemCodMensagem: TLargeintField
      FieldName = 'CodMensagem'
    end
    object QryMensagemDescMensagem: TMemoField
      FieldName = 'DescMensagem'
      BlobType = ftMemo
    end
    object QryMensagemCompl: TStringField
      FieldName = 'Compl'
      Size = 255
    end
  end
  object DSQryProfissao: TDataSource
    DataSet = QryProfissao
    Left = 756
    Top = 136
  end
  object QryProfissao: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO profissao'
      '  (CodProfissao, NomeProfissao)'
      'VALUES'
      '  (:CodProfissao, :NomeProfissao)')
    SQLDelete.Strings = (
      'DELETE FROM profissao'
      'WHERE'
      '  CodProfissao = :Old_CodProfissao')
    SQLUpdate.Strings = (
      'UPDATE profissao'
      'SET'
      '  CodProfissao = :CodProfissao, NomeProfissao = :NomeProfissao'
      'WHERE'
      '  CodProfissao = :Old_CodProfissao')
    SQLRefresh.Strings = (
      'SELECT CodProfissao, NomeProfissao FROM profissao'
      'WHERE'
      '  CodProfissao = :CodProfissao')
    SQLLock.Strings = (
      'SELECT * FROM profissao'
      'WHERE'
      '  CodProfissao = :Old_CodProfissao'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select *  from Profissao')
    Left = 756
    Top = 92
    object QryProfissaoCodProfissao: TLargeintField
      FieldName = 'CodProfissao'
    end
    object QryProfissaoNomeProfissao: TStringField
      FieldName = 'NomeProfissao'
      Size = 255
    end
  end
  object DSQryVisita: TDataSource
    DataSet = QryVisita
    Left = 756
    Top = 228
  end
  object QryVisita: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO visita'
      
        '  (CodVisita, CodFamilia, DataVisita, Visitante, Assunto, Refere' +
        'ncia)'
      'VALUES'
      
        '  (:CodVisita, :CodFamilia, :DataVisita, :Visitante, :Assunto, :' +
        'Referencia)')
    SQLDelete.Strings = (
      'DELETE FROM visita'
      'WHERE'
      '  CodVisita = :Old_CodVisita')
    SQLUpdate.Strings = (
      'UPDATE visita'
      'SET'
      
        '  CodVisita = :CodVisita, CodFamilia = :CodFamilia, DataVisita =' +
        ' :DataVisita, Visitante = :Visitante, Assunto = :Assunto, Refere' +
        'ncia = :Referencia'
      'WHERE'
      '  CodVisita = :Old_CodVisita')
    SQLRefresh.Strings = (
      
        'SELECT CodVisita, CodFamilia, DataVisita, Visitante, Assunto, Re' +
        'ferencia FROM visita'
      'WHERE'
      '  CodVisita = :CodVisita')
    SQLLock.Strings = (
      'SELECT * FROM visita'
      'WHERE'
      '  CodVisita = :Old_CodVisita'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from visita')
    Left = 756
    Top = 184
    object QryVisitaCodVisita: TIntegerField
      FieldName = 'CodVisita'
    end
    object QryVisitaCodFamilia: TIntegerField
      FieldName = 'CodFamilia'
    end
    object QryVisitaDataVisita: TDateField
      FieldName = 'DataVisita'
    end
    object QryVisitaVisitante: TStringField
      FieldName = 'Visitante'
      Size = 200
    end
    object QryVisitaAssunto: TStringField
      FieldName = 'Assunto'
      Size = 255
    end
    object QryVisitaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 255
    end
  end
  object DSQryVotacao: TDataSource
    DataSet = QryVotacao
    Left = 756
    Top = 320
  end
  object QryVotacao: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO votacao'
      '  (CodMembro, CodFamilia, Data)'
      'VALUES'
      '  (:CodMembro, :CodFamilia, :Data)')
    Connection = Conn
    SQL.Strings = (
      'select * from votacao')
    Left = 756
    Top = 276
    object QryVotacaoCodMembro: TIntegerField
      FieldName = 'CodMembro'
    end
    object QryVotacaoCodFamilia: TIntegerField
      FieldName = 'CodFamilia'
    end
    object QryVotacaoData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object DSQryMunicipio: TDataSource
    DataSet = QryMunicipio
    Left = 856
    Top = 136
  end
  object DSQrySanta_Ceia_Antigo: TDataSource
    DataSet = QrySanta_Ceia_Antigo
    Left = 856
    Top = 228
  end
  object QryMunicipio: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO municipio'
      '  (CEP_Municipio, Desc_Municipio, UF)'
      'VALUES'
      '  (:CEP_Municipio, :Desc_Municipio, :UF)')
    SQLDelete.Strings = (
      'DELETE FROM municipio'
      'WHERE'
      '  CEP_Municipio = :Old_CEP_Municipio')
    SQLUpdate.Strings = (
      'UPDATE municipio'
      'SET'
      
        '  CEP_Municipio = :CEP_Municipio, Desc_Municipio = :Desc_Municip' +
        'io, UF = :UF'
      'WHERE'
      '  CEP_Municipio = :Old_CEP_Municipio')
    SQLRefresh.Strings = (
      'SELECT CEP_Municipio, Desc_Municipio, UF FROM municipio'
      'WHERE'
      '  CEP_Municipio = :CEP_Municipio')
    SQLLock.Strings = (
      'SELECT * FROM municipio'
      'WHERE'
      '  CEP_Municipio = :Old_CEP_Municipio'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from Municipio')
    Left = 856
    Top = 92
    object QryMunicipioCEP_Municipio: TStringField
      FieldName = 'CEP_Municipio'
      Size = 45
    end
    object QryMunicipioDesc_Municipio: TStringField
      FieldName = 'Desc_Municipio'
      Size = 255
    end
    object QryMunicipioUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object QrySanta_Ceia_Antigo: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO santa_ceia_antigo'
      
        '  (CodMembroAntigo, CodFamilia, ano, janeiro, fevereiro, marco, ' +
        'abril, maio, junho, julho, agosto, setembro, outubro, novembro, ' +
        'dezembro)'
      'VALUES'
      
        '  (:CodMembroAntigo, :CodFamilia, :ano, :janeiro, :fevereiro, :m' +
        'arco, :abril, :maio, :junho, :julho, :agosto, :setembro, :outubr' +
        'o, :novembro, :dezembro)')
    SQLDelete.Strings = (
      'DELETE FROM santa_ceia_antigo'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLUpdate.Strings = (
      'UPDATE santa_ceia_antigo'
      'SET'
      
        '  CodMembroAntigo = :CodMembroAntigo, CodFamilia = :CodFamilia, ' +
        'ano = :ano, jan = :jan, fev = :fev, mar = :mar, abr = :abr, mai ' +
        '= :mai, jun = :jun, jul = :jul, ago = :ago, set = :set, out = :o' +
        'ut, nov = :nov, dez = :dez'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLRefresh.Strings = (
      
        'SELECT CodMembroAntigo, CodFamilia, ano, jan, fev, mar, abr, mai' +
        ', jun, jul, ago, set, out, nov, dez FROM santa_ceia_antigo'
      'WHERE'
      '  CodMembro = :CodMembro')
    SQLLock.Strings = (
      'SELECT * FROM santa_ceia_antigo'
      'WHERE'
      '  CodMembro = :Old_CodMembro'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      'Select * from santa_ceia_antigo')
    Left = 856
    Top = 184
    object QrySanta_Ceia_AntigoCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QrySanta_Ceia_AntigoCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
    object QrySanta_Ceia_AntigoCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QrySanta_Ceia_Antigoano: TLargeintField
      FieldName = 'ano'
    end
    object QrySanta_Ceia_Antigojaneiro: TLargeintField
      FieldName = 'janeiro'
    end
    object QrySanta_Ceia_Antigofevereiro: TLargeintField
      FieldName = 'fevereiro'
    end
    object QrySanta_Ceia_Antigomarco: TLargeintField
      FieldName = 'marco'
    end
    object QrySanta_Ceia_Antigoabril: TLargeintField
      FieldName = 'abril'
    end
    object QrySanta_Ceia_Antigomaio: TLargeintField
      FieldName = 'maio'
    end
    object QrySanta_Ceia_Antigojunho: TLargeintField
      FieldName = 'junho'
    end
    object QrySanta_Ceia_Antigojulho: TLargeintField
      FieldName = 'julho'
    end
    object QrySanta_Ceia_Antigoagosto: TLargeintField
      FieldName = 'agosto'
    end
    object QrySanta_Ceia_Antigosetembro: TLargeintField
      FieldName = 'setembro'
    end
    object QrySanta_Ceia_Antigooutubro: TLargeintField
      FieldName = 'outubro'
    end
    object QrySanta_Ceia_Antigonovembro: TLargeintField
      FieldName = 'novembro'
    end
    object QrySanta_Ceia_Antigodezembro: TLargeintField
      FieldName = 'dezembro'
    end
    object QrySanta_Ceia_AntigoCodSantaCeia: TLargeintField
      FieldName = 'CodSantaCeia'
    end
  end
  object ADOQryMunicipios: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Municipio')
    Left = 288
    Top = 372
    object ADOQryMunicipiosCEP_MUNICIPIO: TWideStringField
      FieldName = 'CEP_MUNICIPIO'
      Size = 8
    end
    object ADOQryMunicipiosDESC_MUNICIPIO: TWideStringField
      FieldName = 'DESC_MUNICIPIO'
      Size = 40
    end
    object ADOQryMunicipiosUF: TWideStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object ADOQrySanta_Ceia: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Santa_ceia')
    Left = 288
    Top = 468
    object ADOQrySanta_CeiaCOD_MEMBRO: TIntegerField
      FieldName = 'COD_MEMBRO'
    end
    object ADOQrySanta_CeiaCOD_FAMILIA: TIntegerField
      FieldName = 'COD_FAMILIA'
    end
    object ADOQrySanta_CeiaANO: TIntegerField
      FieldName = 'ANO'
    end
    object ADOQrySanta_CeiaJAN: TIntegerField
      FieldName = 'JAN'
    end
    object ADOQrySanta_CeiaFEV: TIntegerField
      FieldName = 'FEV'
    end
    object ADOQrySanta_CeiaMAR: TIntegerField
      FieldName = 'MAR'
    end
    object ADOQrySanta_CeiaABR: TIntegerField
      FieldName = 'ABR'
    end
    object ADOQrySanta_CeiaMAI: TIntegerField
      FieldName = 'MAI'
    end
    object ADOQrySanta_CeiaJUN: TIntegerField
      FieldName = 'JUN'
    end
    object ADOQrySanta_CeiaJUL: TIntegerField
      FieldName = 'JUL'
    end
    object ADOQrySanta_CeiaAGO: TIntegerField
      FieldName = 'AGO'
    end
    object ADOQrySanta_CeiaSET: TIntegerField
      FieldName = 'SET'
    end
    object ADOQrySanta_CeiaOUT: TIntegerField
      FieldName = 'OUT'
    end
    object ADOQrySanta_CeiaNOV: TIntegerField
      FieldName = 'NOV'
    end
    object ADOQrySanta_CeiaDEZ: TIntegerField
      FieldName = 'DEZ'
    end
  end
  object DSMunicipio: TDataSource
    DataSet = ADOQryMunicipios
    Left = 288
    Top = 420
  end
  object DSSanta_Ceia: TDataSource
    DataSet = ADOQrySanta_Ceia
    Left = 288
    Top = 512
  end
  object CmdAjustaMembroDataEspec: TMyCommand
    Connection = Conn
    SQL.Strings = (
      'update membroDataEspec MDE'
      
        'set mde.CodMembro = (select CodMembro from Membros where codmemb' +
        'roantigo = MDE.CodmembroAntigo and CodFamilia = MDE.Codfamilia)')
    Left = 412
    Top = 8
  end
  object CMDAjustaMembroFilhos: TMyCommand
    Connection = Conn
    SQL.Strings = (
      'update Filho F'
      
        'set F.CodMembro = (select CodMembro from Membros where codmembro' +
        'antigo = F.CodMembroAntigo and CodFamilia = F.Codfamilia)')
    Left = 412
    Top = 60
  end
  object CMDAjustaContribuicoes: TMyCommand
    Connection = Conn
    SQL.Strings = (
      'update contribuicao c'
      
        'set c.CodMembro = (select CodMembro from Membros where codmembro' +
        'antigo = C.CodMembroAntigo and CodFamilia = C.Codfamilia)')
    Left = 412
    Top = 112
  end
  object QryAjustaMembro: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO membros'
      
        '  (CodMembro, CodFamilia, Email, Celular, Endereco, Compl, Cidad' +
        'e, Bairro, CEP, UF, Telefone)'
      'VALUES'
      
        '  (:CodMembro, :CodFamilia, :Email, :Celular, :Endereco, :Compl,' +
        ' :Cidade, :Bairro, :CEP, :UF, :Telefone)')
    SQLDelete.Strings = (
      'DELETE FROM membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLUpdate.Strings = (
      'UPDATE membros'
      'SET'
      
        '  CodMembro = :CodMembro, CodFamilia = :CodFamilia, Email = :Ema' +
        'il, Celular = :Celular, Endereco = :Endereco, Compl = :Compl, Ci' +
        'dade = :Cidade, Bairro = :Bairro, CEP = :CEP, UF = :UF, Telefone' +
        ' = :Telefone'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLRefresh.Strings = (
      
        'SELECT CodMembro, CodFamilia, Email, Celular, Endereco, Compl, C' +
        'idade, Bairro, CEP, UF, Telefone FROM membros'
      'WHERE'
      '  CodMembro = :CodMembro')
    SQLLock.Strings = (
      'SELECT * FROM membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      
        'SELECT CodMembro, CodFamilia, endereco, Compl, Bairro, Cidade, U' +
        'F, CEP, Telefone, Email, celular'
      'FROM membros')
    Left = 568
    object QryAjustaMembroCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryAjustaMembroCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryAjustaMembroendereco: TStringField
      FieldName = 'endereco'
      Size = 250
    end
    object QryAjustaMembroCompl: TStringField
      FieldName = 'Compl'
      Size = 150
    end
    object QryAjustaMembroBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryAjustaMembroCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryAjustaMembroUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryAjustaMembroCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 12
    end
    object QryAjustaMembroTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
    end
    object QryAjustaMembroEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryAjustaMembrocelular: TStringField
      FieldName = 'celular'
    end
  end
  object DSQryAjustaMembro: TDataSource
    DataSet = QryAjustaMembro
    Left = 568
    Top = 48
  end
  object QryAjustaFamilia: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO familia'
      
        '  (CodFamilia, Cep, Endereco, Compl, Bairro, Telefone, Email, Ce' +
        'lular, Cidade, UF)'
      'VALUES'
      
        '  (:CodFamilia, :Cep, :Endereco, :Compl, :Bairro, :Telefone, :Em' +
        'ail, :Celular, :Cidade, :UF)')
    SQLDelete.Strings = (
      'DELETE FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLUpdate.Strings = (
      'UPDATE familia'
      'SET'
      
        '  CodFamilia = :CodFamilia, Cep = :Cep, Endereco = :Endereco, Co' +
        'mpl = :Compl, Bairro = :Bairro, Telefone = :Telefone, Email = :E' +
        'mail, Celular = :Celular, Cidade = :Cidade, UF = :UF'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLRefresh.Strings = (
      
        'SELECT CodFamilia, Cep, Endereco, Compl, Bairro, Telefone, Email' +
        ', Celular, Cidade, UF FROM familia'
      'WHERE'
      '  CodFamilia = :CodFamilia')
    SQLLock.Strings = (
      'SELECT * FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia'
      'FOR UPDATE')
    Connection = Conn
    SQL.Strings = (
      
        'SELECT CodFamilia, Endereco, Compl, Bairro, Cidade, UF, Cep, Tel' +
        'efone, Email, Celular'
      'FROM familia'
      'Where CodFamilia = :pCodFamilia')
    Left = 668
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCodFamilia'
      end>
    object QryAjustaFamiliaCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryAjustaFamiliaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object QryAjustaFamiliaCompl: TStringField
      FieldName = 'Compl'
      Size = 255
    end
    object QryAjustaFamiliaBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryAjustaFamiliaCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryAjustaFamiliaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryAjustaFamiliaCep: TStringField
      FieldName = 'Cep'
      FixedChar = True
      Size = 8
    end
    object QryAjustaFamiliaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
    object QryAjustaFamiliaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryAjustaFamiliaCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 45
    end
  end
  object DSQryAjustaFamilia: TDataSource
    DataSet = QryAjustaFamilia
    Left = 668
    Top = 44
  end
  object CmdAjustaCidade: TMyCommand
    Connection = Conn
    SQL.Strings = (
      'update Familia f'
      
        'set F.Cidade = (select Desc_Municipio from Municipio where Cep_m' +
        'unicipio = F.Cep)')
    Left = 412
    Top = 164
  end
end
