object FormCadastroVisitanteSantaCeia: TFormCadastroVisitanteSantaCeia
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroVisitanteSantaCeia'
  ClientHeight = 257
  ClientWidth = 601
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE VISITANTE NA SANTA CEIA'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 208
    Width = 601
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 230
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Salvar'
      Default = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDB6BAE94D6
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD6DBDB6BAE9493CBB76BAE94D6DBDBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDB6BAE9486C9B2A1EDD986
        C9B26BAE94D6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D6DBDB6BAE9482C8B18AE8D082E6CD8AE8D082C8B16BAE94D6DBDBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDB6BAE9486C9B28CE8D179E5C974E3C778
        E4C988E7CF82C8B16BAE94D6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94
        93CBB8A6EDDB8AE8D07DE5CB79E5C979E5C97DE5CB8AE8D082C8B16BAE94D6DB
        DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE948ACAB4A0ECD97DC7AF6BAE9478
        C6AD84E7CE82E6CD8AE8D082C8B16BAE94D6DBDBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF6BAE949ECCBB6BAE94FFFFFF6BAE9496C9B7CCEDE5C9ECE3CCEDE597CA
        B76BAE94D6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94FFFFFFFFFFFFFF
        FFFF6BAE949BCAB9D8F0EAD5EFE9D9F1EB9DCBBA6BAE94D6DBDBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE949FCCBCE5F5F1E5F5
        F1EBF7F4A3CEBE6BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF6BAE94A3CEBEF3FAF9A4CEBE6BAE94FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94A7CF
        BF6BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 311
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDBD6DBDBD6DBDBD6DBDBD6
        DBDBD6DBDBD6DBDBD6DBDBD6DBDBD6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D6DBDB4646C14646C14646C14646C14646C14646C14646C14646C14646C14646
        C1D6DBDBFFFFFFFFFFFFFFFFFFFFFFFF4646C17777DB9F9FFF8C8CFF8686FF86
        86FF8686FF8686FF8C8CFF9F9FFF7777DB4646C1FFFFFFFFFFFFFFFFFFFFFFFF
        4646C17171DB8888FF7272FF6868FF1212891212896868FF7272FF8888FF7171
        DB4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C18686FF6868FF5B5BFF58
        58FF5858FF5B5BFF6868FF8686FF4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4646C17C7CDBB6B6FFACACFF121289121289ACACFFB6B6FF7C7CDB4646
        C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C1CCCCFFC0C0FF12
        1289121289C0C0FFCCCCFF4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF4646C18585DBD6D6FF121289121289D6D6FF8585DB4646C1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C1E9E9FF12
        1289121289E9E9FF4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4646C18F8FDBF5F5FFF5F5FF8F8FDB4646C1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C1FF
        FFFFFFFFFF4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF4646C19292DB9292DB4646C1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46
        46C14646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 601
    Height = 159
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 121
      Height = 16
      Caption = 'Nome do visitante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 86
      Width = 307
      Height = 16
      Caption = 'Origem (Comunidade Luterana/Religi'#227'o/Igreja)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 443
      Top = 14
      Width = 43
      Height = 16
      Caption = 'Visitas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdtNomeVisitante: TDBEdit
      Left = 16
      Top = 36
      Width = 421
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NomeVisitante'
      DataSource = DSSantaCeiaVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdtOrigem: TDBEdit
      Left = 16
      Top = 108
      Width = 421
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Origem'
      DataSource = DSSantaCeiaVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBChkBxLuterano: TDBCheckBox
      Left = 16
      Top = 63
      Width = 149
      Height = 17
      Caption = 'Visitante '#233' Luterano?'
      DataField = 'Luterano'
      DataSource = DSSantaCeiaVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBGridVisitas: TDBGrid
      Left = 443
      Top = 33
      Width = 134
      Height = 100
      DataSource = DSSantaCeiaVisitantePresenca
      Enabled = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridVisitasCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DataUltimaVisita'
          Title.Caption = 'Data ultima visita'
          Width = 103
          Visible = True
        end>
    end
  end
  object QrySantaCeiaVisitante: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO santaceiavisitante'
      '  (CodSantaCeiaVisitante, NomeVisitante, Luterano, Origem)'
      'VALUES'
      '  (:CodSantaCeiaVisitante, :NomeVisitante, :Luterano, :Origem)')
    SQLDelete.Strings = (
      'DELETE FROM santaceiavisitante'
      'WHERE'
      '  CodSantaCeiaVisitante = :Old_CodSantaCeiaVisitante')
    SQLUpdate.Strings = (
      'UPDATE santaceiavisitante'
      'SET'
      
        '  CodSantaCeiaVisitante = :CodSantaCeiaVisitante, NomeVisitante ' +
        '= :NomeVisitante, Luterano = :Luterano, Origem = :Origem'
      'WHERE'
      '  CodSantaCeiaVisitante = :Old_CodSantaCeiaVisitante')
    SQLRefresh.Strings = (
      
        'SELECT CodSantaCeiaVisitante, NomeVisitante, Luterano, Origem FR' +
        'OM santaceiavisitante'
      'WHERE'
      '  CodSantaCeiaVisitante = :CodSantaCeiaVisitante')
    SQLLock.Strings = (
      'SELECT * FROM santaceiavisitante'
      'WHERE'
      '  CodSantaCeiaVisitante = :Old_CodSantaCeiaVisitante'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from santaceiaVisitante')
    Left = 400
    Top = 8
    object QrySantaCeiaVisitanteCodSantaCeiaVisitante: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodSantaCeiaVisitante'
      Origin = 'santaceiavisitante.CodSantaCeiaVisitante'
    end
    object QrySantaCeiaVisitanteNomeVisitante: TStringField
      FieldName = 'NomeVisitante'
      Origin = 'santaceiavisitante.NomeVisitante'
      Size = 250
    end
    object QrySantaCeiaVisitanteLuterano: TBooleanField
      FieldName = 'Luterano'
      Origin = 'santaceiavisitante.Luterano'
    end
    object QrySantaCeiaVisitanteOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'santaceiavisitante.Origem'
      Size = 255
    end
  end
  object DSSantaCeiaVisitante: TDataSource
    DataSet = QrySantaCeiaVisitante
    Left = 428
    Top = 8
  end
  object QuerySantaCeiaVisitantePresenca: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO santaceiavisitantepresenca'
      
        '  (CodSantaCeiaVisitantePresenca, CodSantaCeiaVisitante, DataUlt' +
        'imaVisita)'
      'VALUES'
      
        '  (:CodSantaCeiaVisitantePresenca, :CodSantaCeiaVisitante, :Data' +
        'UltimaVisita)')
    SQLDelete.Strings = (
      'DELETE FROM santaceiavisitantepresenca'
      'WHERE'
      
        '  CodSantaCeiaVisitantePresenca = :Old_CodSantaCeiaVisitantePres' +
        'enca')
    SQLUpdate.Strings = (
      'UPDATE santaceiavisitantepresenca'
      'SET'
      
        '  CodSantaCeiaVisitantePresenca = :CodSantaCeiaVisitantePresenca' +
        ', CodSantaCeiaVisitante = :CodSantaCeiaVisitante, DataUltimaVisi' +
        'ta = :DataUltimaVisita'
      'WHERE'
      
        '  CodSantaCeiaVisitantePresenca = :Old_CodSantaCeiaVisitantePres' +
        'enca')
    SQLRefresh.Strings = (
      
        'SELECT CodSantaCeiaVisitantePresenca, CodSantaCeiaVisitante, Dat' +
        'aUltimaVisita FROM santaceiavisitantepresenca'
      'WHERE'
      '  CodSantaCeiaVisitantePresenca = :CodSantaCeiaVisitantePresenca')
    SQLLock.Strings = (
      'SELECT * FROM santaceiavisitantepresenca'
      'WHERE'
      
        '  CodSantaCeiaVisitantePresenca = :Old_CodSantaCeiaVisitantePres' +
        'enca'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select * from SantaceiaVisitantePresenca'
      'order by DataUltimaVisita')
    MasterSource = DSSantaCeiaVisitante
    MasterFields = 'CodSantaCeiaVisitante'
    DetailFields = 'CodSantaCeiaVisitante'
    Active = True
    Left = 464
    Top = 188
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'CodSantaCeiaVisitante'
        ParamType = ptInput
        Value = 1
      end>
    object QuerySantaCeiaVisitantePresencaCodSantaCeiaVisitantePresenca: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodSantaCeiaVisitantePresenca'
      Origin = 'santaceiavisitantepresenca.CodSantaCeiaVisitantePresenca'
    end
    object QuerySantaCeiaVisitantePresencaCodSantaCeiaVisitante: TLargeintField
      FieldName = 'CodSantaCeiaVisitante'
      Origin = 'santaceiavisitantepresenca.CodSantaCeiaVisitante'
    end
    object QuerySantaCeiaVisitantePresencaDataUltimaVisita: TDateTimeField
      FieldName = 'DataUltimaVisita'
      Origin = 'santaceiavisitantepresenca.DataUltimaVisita'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DSSantaCeiaVisitantePresenca: TDataSource
    DataSet = QuerySantaCeiaVisitantePresenca
    Left = 492
    Top = 188
  end
end
