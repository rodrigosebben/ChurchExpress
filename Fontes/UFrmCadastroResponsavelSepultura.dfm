object FormCadastroResponsavelSepultura: TFormCadastroResponsavelSepultura
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro de Responsavel pela Sepultura'
  ClientHeight = 283
  ClientWidth = 740
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
    Width = 740
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE RESPONS'#193'VEL PELA SEPULTURA'
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
    Top = 234
    Width = 740
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 568
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
      Left = 649
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
    Width = 740
    Height = 185
    Align = alClient
    BorderWidth = 1
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 57
      Width = 107
      Height = 13
      Caption = 'Nome do responsavel:'
      FocusControl = DBEdtNomeResponsavelSepultura
    end
    object Label2: TLabel
      Left = 318
      Top = 57
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
      FocusControl = DBEdtEndereco
    end
    object Label4: TLabel
      Left = 12
      Top = 96
      Width = 69
      Height = 13
      Caption = 'Complemento:'
      FocusControl = DBEdtCompl
    end
    object Label5: TLabel
      Left = 318
      Top = 96
      Width = 32
      Height = 13
      Caption = 'Bairro:'
      FocusControl = DBEdtBairro
    end
    object Label6: TLabel
      Left = 471
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdtCidade
    end
    object Label7: TLabel
      Left = 12
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Telefone:'
      FocusControl = DBEdtTelefone
    end
    object Label8: TLabel
      Left = 168
      Top = 136
      Width = 37
      Height = 13
      Caption = 'Celular:'
      FocusControl = DBEdtCelular
    end
    object Label9: TLabel
      Left = 318
      Top = 137
      Width = 32
      Height = 13
      Caption = 'E-mail:'
      FocusControl = DBEdtEmail
    end
    object Label10: TLabel
      Left = 646
      Top = 94
      Width = 23
      Height = 13
      Caption = 'CEP:'
      FocusControl = DBEdtCep
    end
    object DBEdtNomeResponsavelSepultura: TDBEdit
      Left = 12
      Top = 72
      Width = 300
      Height = 21
      DataField = 'NomeResponsavelSepultura'
      DataSource = DSResponsavelSepultura
      TabOrder = 0
    end
    object DBEdtEndereco: TDBEdit
      Left = 318
      Top = 72
      Width = 406
      Height = 21
      DataField = 'Endereco'
      DataSource = DSResponsavelSepultura
      TabOrder = 1
    end
    object DBEdtCompl: TDBEdit
      Left = 12
      Top = 110
      Width = 300
      Height = 21
      DataField = 'Compl'
      DataSource = DSResponsavelSepultura
      TabOrder = 2
    end
    object DBEdtBairro: TDBEdit
      Left = 318
      Top = 110
      Width = 147
      Height = 21
      DataField = 'Bairro'
      DataSource = DSResponsavelSepultura
      TabOrder = 3
    end
    object DBEdtCidade: TDBEdit
      Left = 471
      Top = 110
      Width = 169
      Height = 21
      DataField = 'Cidade'
      DataSource = DSResponsavelSepultura
      TabOrder = 4
    end
    object DBEdtTelefone: TDBEdit
      Left = 12
      Top = 151
      Width = 150
      Height = 21
      DataField = 'Telefone'
      DataSource = DSResponsavelSepultura
      TabOrder = 6
    end
    object DBEdtCelular: TDBEdit
      Left = 168
      Top = 151
      Width = 144
      Height = 21
      DataField = 'Celular'
      DataSource = DSResponsavelSepultura
      TabOrder = 7
    end
    object DBEdtEmail: TDBEdit
      Left = 318
      Top = 151
      Width = 406
      Height = 21
      DataField = 'Email'
      DataSource = DSResponsavelSepultura
      TabOrder = 8
    end
    object Panel4: TPanel
      Left = 12
      Top = 6
      Width = 712
      Height = 45
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 9
      object Label3: TLabel
        Left = 161
        Top = 13
        Width = 66
        Height = 21
        Caption = 'Membro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RdGrpMembroCongregacao: TRadioGroup
        Left = 8
        Top = 0
        Width = 142
        Height = 41
        Caption = 'Membro da Congrega'#231#227'o?'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'SIM'
          'N'#195'O')
        TabOrder = 0
        OnClick = RdGrpMembroCongregacaoClick
      end
      object DBLkpCmbBxMembros: TDBLookupComboBox
        Left = 233
        Top = 9
        Width = 349
        Height = 29
        DataField = 'CodMembro'
        DataSource = DSResponsavelSepultura
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'codmembro'
        ListField = 'nomeMembro'
        ListSource = DSLkpMembros
        ParentFont = False
        TabOrder = 1
      end
      object BtBtnCarregar: TBitBtn
        Left = 588
        Top = 5
        Width = 117
        Height = 37
        Caption = 'Carregar informa'#231#245'es'
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00307935C92B7130C4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D8B
          44D1559E5CFF509856FF2C7432CFFFFFFF00FFFFFF00FFFFFF00A97151A9C38E
          68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB07D5AFF599954FF63AC
          6BFF88C990FF82C68AFF529A58FF407537FFA47150ABFFFFFF00C8926CFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84C58BFF57AB61FF6AB4
          73FF90CE97FF8ACB91FF6AB070FF3B8442FF52773DFFFFFFFF00CA946EFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFF54AB
          5EFF96D29FFF91CF99FF539F5BFFD4E6D6FFAA7353FFFFFFFF00CC976FFFFFFF
          FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFF5BB4
          65FF9DD6A6FF99D3A2FF4B9E53FFFFFFFFFFAC7554FFFFFFFF00D19C73FFFFFF
          FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FF60BC
          6CFF5CB667FF57B061FF52A85CFFFFFFFFFFB07A58FFFFFFFF00D49E75FFFFFF
          FFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9
          F5FFFBF8F4FFFBF7F2FFFBF5F2FFFFFFFFFFB27C5AFFFFFFFF00D5A076FFFFFF
          FFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7
          F3FFFBF5F2FFFAF3EFFFF8F2ECFFFFFFFFFFB57E5CFFFFFFFF00D8A279FFFFFF
          FFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4
          EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFFFFFFFF00D9A379FFFFFF
          FFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EF
          EAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FFFFFFFF00DBA47AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFFF00DCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
          7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
          92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
          8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
          72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphBottom
        TabOrder = 2
        OnClick = BtBtnCarregarClick
      end
    end
    object DBEdtCep: TDBEdit
      Left = 646
      Top = 110
      Width = 78
      Height = 21
      DataField = 'cep'
      DataSource = DSResponsavelSepultura
      TabOrder = 5
    end
  end
  object QryResponsavelSepultura: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO responsavelsepultura'
      
        '  (CodResponsavelSepultura, NomeResponsavelSepultura, Endereco, ' +
        'Compl, Bairro, Cidade, Telefone, Celular, Email, CodMembro, cep)'
      'VALUES'
      
        '  (:CodResponsavelSepultura, :NomeResponsavelSepultura, :Enderec' +
        'o, :Compl, :Bairro, :Cidade, :Telefone, :Celular, :Email, :CodMe' +
        'mbro, :cep)')
    SQLDelete.Strings = (
      'DELETE FROM responsavelsepultura'
      'WHERE'
      '  CodResponsavelSepultura = :Old_CodResponsavelSepultura')
    SQLUpdate.Strings = (
      'UPDATE responsavelsepultura'
      'SET'
      
        '  CodResponsavelSepultura = :CodResponsavelSepultura, NomeRespon' +
        'savelSepultura = :NomeResponsavelSepultura, Endereco = :Endereco' +
        ', Compl = :Compl, Bairro = :Bairro, Cidade = :Cidade, Telefone =' +
        ' :Telefone, Celular = :Celular, Email = :Email, CodMembro = :Cod' +
        'Membro, cep = :cep'
      'WHERE'
      '  CodResponsavelSepultura = :Old_CodResponsavelSepultura')
    SQLRefresh.Strings = (
      
        'SELECT CodResponsavelSepultura, NomeResponsavelSepultura, Endere' +
        'co, Compl, Bairro, Cidade, Telefone, Celular, Email, CodMembro, ' +
        'cep FROM responsavelsepultura'
      'WHERE'
      '  CodResponsavelSepultura = :CodResponsavelSepultura')
    SQLLock.Strings = (
      'SELECT * FROM responsavelsepultura'
      'WHERE'
      '  CodResponsavelSepultura = :Old_CodResponsavelSepultura'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT * FROM responsavelsepultura')
    Left = 504
    Top = 8
    object QryResponsavelSepulturaCodResponsavelSepultura: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodResponsavelSepultura'
      Origin = 'responsavelsepultura.CodResponsavelSepultura'
    end
    object QryResponsavelSepulturaNomeResponsavelSepultura: TStringField
      FieldName = 'NomeResponsavelSepultura'
      Origin = 'responsavelsepultura.NomeResponsavelSepultura'
      Size = 250
    end
    object QryResponsavelSepulturaEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'responsavelsepultura.Endereco'
      Size = 250
    end
    object QryResponsavelSepulturaCompl: TStringField
      FieldName = 'Compl'
      Origin = 'responsavelsepultura.Compl'
      Size = 200
    end
    object QryResponsavelSepulturaBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'responsavelsepultura.Bairro'
      Size = 200
    end
    object QryResponsavelSepulturaCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'responsavelsepultura.Cidade'
      Size = 250
    end
    object QryResponsavelSepulturaTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'responsavelsepultura.Telefone'
      Size = 45
    end
    object QryResponsavelSepulturaCelular: TStringField
      FieldName = 'Celular'
      Origin = 'responsavelsepultura.Celular'
      Size = 45
    end
    object QryResponsavelSepulturaEmail: TStringField
      FieldName = 'Email'
      Origin = 'responsavelsepultura.Email'
      Size = 250
    end
    object QryResponsavelSepulturaCodMembro: TLargeintField
      FieldName = 'CodMembro'
      Origin = 'responsavelsepultura.CodMembro'
    end
    object QryResponsavelSepulturacep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 10
    end
  end
  object DSResponsavelSepultura: TDataSource
    DataSet = QryResponsavelSepultura
    Left = 608
    Top = 8
  end
  object MyQryLkpMembros: TMyQuery
    SQLRefresh.Strings = (
      
        'SELECT NomeMembro, Email, Celular, Endereco, Compl, Cidade, Bair' +
        'ro, Telefone FROM membros'
      'WHERE'
      '  CodMembro = :CodMembro')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT codmembro,'
      '       nomeMembro,'
      '       Endereco,'
      '       Compl,'
      '       Bairro,'
      '       Cidade,'
      '       CEP,'
      '       Telefone,'
      '       Celular,'
      '       Email'
      'FROM membros'
      'Order by nomeMembro')
    Left = 16
    Top = 4
    object MyQryLkpMembrosnomeMembro: TStringField
      FieldName = 'nomeMembro'
      Origin = 'membros.NomeMembro'
      Size = 255
    end
    object MyQryLkpMembrosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'membros.Endereco'
      Size = 250
    end
    object MyQryLkpMembrosCompl: TStringField
      FieldName = 'Compl'
      Origin = 'membros.Compl'
      Size = 150
    end
    object MyQryLkpMembrosBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'membros.Bairro'
      Size = 150
    end
    object MyQryLkpMembrosCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'membros.Cidade'
      Size = 150
    end
    object MyQryLkpMembrosTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'membros.Telefone'
      FixedChar = True
    end
    object MyQryLkpMembrosCelular: TStringField
      FieldName = 'Celular'
      Origin = 'membros.Celular'
    end
    object MyQryLkpMembrosEmail: TStringField
      FieldName = 'Email'
      Origin = 'membros.Email'
      Size = 255
    end
    object MyQryLkpMembroscodmembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'codmembro'
      Origin = 'membros.CodMembro'
    end
    object MyQryLkpMembrosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 12
    end
  end
  object DSLkpMembros: TDataSource
    DataSet = MyQryLkpMembros
    Left = 120
    Top = 4
  end
end
