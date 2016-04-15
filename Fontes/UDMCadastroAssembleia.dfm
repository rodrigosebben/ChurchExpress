object DMCadastroAssembleia: TDMCadastroAssembleia
  OldCreateOrder = False
  Height = 159
  Width = 411
  object QryAssembleia: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO assembleia'
      '  (CodAssembleia, TipoAssembleia, Data)'
      'VALUES'
      '  (:CodAssembleia, :TipoAssembleia, :Data)')
    SQLDelete.Strings = (
      'DELETE FROM assembleia'
      'WHERE'
      '  CodAssembleia = :Old_CodAssembleia')
    SQLUpdate.Strings = (
      'UPDATE assembleia'
      'SET'
      
        '  CodAssembleia = :CodAssembleia, TipoAssembleia = :TipoAssemble' +
        'ia, Data = :Data'
      'WHERE'
      '  CodAssembleia = :Old_CodAssembleia')
    SQLRefresh.Strings = (
      'SELECT CodAssembleia, TipoAssembleia, Data FROM assembleia'
      'WHERE'
      '  CodAssembleia = :CodAssembleia')
    SQLLock.Strings = (
      'SELECT * FROM assembleia'
      'WHERE'
      '  CodAssembleia = :Old_CodAssembleia'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT *'
      'FROM assembleia'
      'order by Data')
    Left = 64
    Top = 12
    object QryAssembleiaCodAssembleia: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodAssembleia'
      Origin = 'assembleia.CodAssembleia'
    end
    object QryAssembleiaTipoAssembleia: TStringField
      FieldName = 'TipoAssembleia'
      Origin = 'assembleia.TipoAssembleia'
      Size = 255
    end
    object QryAssembleiaData: TDateTimeField
      FieldName = 'Data'
      Origin = 'assembleia.Data'
    end
  end
  object DSAssembleia: TDataSource
    DataSet = QryAssembleia
    Left = 64
    Top = 60
  end
  object QryAssembleiaMembros: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO assembleiamembros'
      '  (CodAssembleiaMembro, CodAssembleia, CodMembro, Presente)'
      'VALUES'
      '  (:CodAssembleiaMembro, :CodAssembleia, :CodMembro, :Presente)')
    SQLDelete.Strings = (
      'DELETE FROM assembleiamembros'
      'WHERE'
      '  CodAssembleiaMembro = :Old_CodAssembleiaMembro')
    SQLUpdate.Strings = (
      'UPDATE assembleiamembros'
      'SET'
      
        '  CodAssembleiaMembro = :CodAssembleiaMembro, CodAssembleia = :C' +
        'odAssembleia, CodMembro = :CodMembro, Presente = :Presente'
      'WHERE'
      '  CodAssembleiaMembro = :Old_CodAssembleiaMembro')
    SQLRefresh.Strings = (
      
        'SELECT CodAssembleiaMembro, CodAssembleia, CodMembro, Presente F' +
        'ROM assembleiamembros'
      'WHERE'
      '  CodAssembleiaMembro = :CodAssembleiaMembro')
    SQLLock.Strings = (
      'SELECT * FROM assembleiamembros'
      'WHERE'
      '  CodAssembleiaMembro = :Old_CodAssembleiaMembro'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'SELECT am.*,concat(f.Sobrenome,'#39' - '#39',m.codfamilia) as FamiliaCam' +
        'po, m.NomeMembro'
      
        'FROM assembleiamembros am left join membros m on am.codmembro = ' +
        'm.codmembro'
      
        '                         left join Familia F on m.codfamilia = f' +
        '.codfamilia'
      'where am.CodAssembleia = :pCodAssembleia'
      'order by FamiliaCampo, M.codmembroantigo')
    Left = 188
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodAssembleia'
      end>
    object QryAssembleiaMembrosCodAssembleiaMembro: TLargeintField
      FieldName = 'CodAssembleiaMembro'
    end
    object QryAssembleiaMembrosCodAssembleia: TLargeintField
      FieldName = 'CodAssembleia'
    end
    object QryAssembleiaMembrosCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryAssembleiaMembrosPresente: TStringField
      FieldName = 'Presente'
      FixedChar = True
    end
    object QryAssembleiaMembrosNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Size = 255
    end
    object QryAssembleiaMembrosFamiliaCampo: TStringField
      FieldName = 'FamiliaCampo'
      Size = 269
    end
  end
  object DSAssembleiaMembros: TDataSource
    DataSet = QryAssembleiaMembros
    Left = 188
    Top = 60
  end
  object QryMembrosVotantes: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select codmembro, nomemembro'
      'from membros'
      'where not isnull(votante)'
      'order by Nomemembro')
    Left = 328
    Top = 8
    object QryMembrosVotantescodmembro: TLargeintField
      FieldName = 'codmembro'
    end
    object QryMembrosVotantesnomemembro: TStringField
      FieldName = 'nomemembro'
      Size = 255
    end
  end
end
