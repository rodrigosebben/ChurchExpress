object FormCadastroVisitante: TFormCadastroVisitante
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroVisitante'
  ClientHeight = 364
  ClientWidth = 775
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
    Width = 775
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE VISITANTE'
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
    Top = 315
    Width = 775
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 601
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
      Left = 684
      Top = 5
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
    Width = 775
    Height = 266
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 63
      Height = 16
      Caption = 'Visitante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 347
      Top = 6
      Width = 30
      Height = 16
      Caption = 'Rua:'
      FocusControl = DBEdtEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 682
      Top = 6
      Width = 54
      Height = 16
      Caption = 'Numero:'
      FocusControl = DBEdtNumero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 53
      Width = 92
      Height = 16
      Caption = 'Complemento:'
      FocusControl = DBEdtComplemento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 317
      Top = 53
      Width = 44
      Height = 16
      Caption = 'Bairro:'
      FocusControl = DBEdtBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 473
      Top = 53
      Width = 28
      Height = 16
      Caption = 'CEP:'
      FocusControl = DBEdtCep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 579
      Top = 53
      Width = 36
      Height = 16
      Caption = 'Sexo:'
      FocusControl = DBEdtSexo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 625
      Top = 53
      Width = 134
      Height = 16
      Caption = 'Data de nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 97
      Width = 32
      Height = 16
      Caption = 'DDD:'
      FocusControl = DBEdtDDDTelefone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 56
      Top = 97
      Width = 60
      Height = 16
      Caption = 'Telefone:'
      FocusControl = DBEdtTelefone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 172
      Top = 97
      Width = 32
      Height = 16
      Caption = 'DDD:'
      FocusControl = DBEdtDDDCelular
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 216
      Top = 97
      Width = 49
      Height = 16
      Caption = 'Celular:'
      FocusControl = DBEdtCelular
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 332
      Top = 97
      Width = 32
      Height = 16
      Caption = 'Email'
      FocusControl = DBEdtEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 638
      Top = 97
      Width = 67
      Height = 16
      Caption = 'DataVisita'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 12
      Top = 142
      Width = 49
      Height = 16
      Caption = 'Motivo:'
      FocusControl = DBMemoMotivo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdtVisitante: TDBEdit
      Left = 12
      Top = 24
      Width = 329
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NomeVisitante'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdtEndereco: TDBEdit
      Left = 347
      Top = 24
      Width = 329
      Height = 24
      DataField = 'Rua'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdtNumero: TDBEdit
      Left = 682
      Top = 24
      Width = 77
      Height = 24
      DataField = 'numero'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdtComplemento: TDBEdit
      Left = 12
      Top = 69
      Width = 299
      Height = 24
      DataField = 'Compl'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdtBairro: TDBEdit
      Left = 317
      Top = 69
      Width = 150
      Height = 24
      DataField = 'Bairro'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdtCep: TDBEdit
      Left = 473
      Top = 69
      Width = 100
      Height = 24
      DataField = 'CepMunicipio'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdtSexo: TDBEdit
      Left = 579
      Top = 69
      Width = 40
      Height = 24
      DataField = 'Sexo'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBdtEdtDataNasc: TDBDateEdit
      Left = 625
      Top = 69
      Width = 134
      Height = 24
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'DataNasc'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
    end
    object DBEdtDDDTelefone: TDBEdit
      Left = 12
      Top = 113
      Width = 38
      Height = 24
      DataField = 'DDD'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdtTelefone: TDBEdit
      Left = 56
      Top = 113
      Width = 110
      Height = 24
      DataField = 'Telefone'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdtDDDCelular: TDBEdit
      Left = 172
      Top = 113
      Width = 38
      Height = 24
      DataField = 'DDDCel'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdtCelular: TDBEdit
      Left = 216
      Top = 113
      Width = 110
      Height = 24
      DataField = 'Celular'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBEdtEmail: TDBEdit
      Left = 332
      Top = 113
      Width = 300
      Height = 24
      DataField = 'Email'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBDtEdtDataVisita: TDBDateEdit
      Left = 638
      Top = 113
      Width = 121
      Height = 24
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'DataVisita'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 13
    end
    object DBMemoMotivo: TDBMemo
      Left = 12
      Top = 164
      Width = 747
      Height = 89
      DataField = 'Motivo'
      DataSource = DSVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
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
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select * from visitante'
      'order by nomevisitante')
    Left = 620
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
      EditMask = '00000\-999;1;_'
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
      EditMask = '!\(999\);1;_'
      FixedChar = True
      Size = 10
    end
    object QryVisitanteTelefone: TStringField
      FieldName = 'Telefone'
      EditMask = '0000-0000;1;_'
      FixedChar = True
      Size = 30
    end
    object QryVisitanteDDDCel: TStringField
      FieldName = 'DDDCel'
      EditMask = '!\(999\);1;_'
      FixedChar = True
      Size = 10
    end
    object QryVisitanteCelular: TStringField
      FieldName = 'Celular'
      EditMask = '0000-0000;1;_'
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
  object DSVisitante: TDataSource
    DataSet = QryVisitante
    Left = 620
    Top = 48
  end
end
