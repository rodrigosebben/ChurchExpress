object FormCadastroContribuicao: TFormCadastroContribuicao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroContribuicao'
  ClientHeight = 216
  ClientWidth = 563
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
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 563
    Height = 118
    Align = alClient
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 9
      Top = 6
      Width = 36
      Height = 16
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 115
      Top = 4
      Width = 63
      Height = 16
      Caption = 'Envelope:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 215
      Top = 6
      Width = 57
      Height = 16
      Caption = 'Membro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 54
      Width = 136
      Height = 16
      Caption = 'Tipo de Contribui'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 440
      Top = 54
      Width = 39
      Height = 16
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpdBtnBuscaMembro: TSpeedButton
      Left = 520
      Top = 24
      Width = 25
      Height = 24
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00145D9503105A921AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0022669E061B629AAD22679DFF115B9387FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003272
        AA062B6DA5AD558DBCFF89B5DDFF185F97FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00447FB7063C79
        B1AD6497C5FF9DC1E4FF6699C7FF1F659DEBFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DDB28F02D9AE8A97D6A985E3D3A57FFDD0A07BFDCD9C76E4A2938ADE75A2
        CCFFABCBE8FF76A4CEFF3070A8EB286BA327FFFFFF00FFFFFF00FFFFFF00E4BD
        9B02E1B896C0E8C9AEFFF5E1CDFFF7E5D3FFF7E5D1FFF3DDC8FFDFBA9CFF3D7F
        3EFF2C7331FF2A6E3AFD3977AF27FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8C3
        A297EDD0B7FFF8E8D9FFF5DEC8FFF3D8BDFFF3D6BBFFF4DBC2FFF7E4D2FF3986
        40FF54A970FF2E7533FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECC8
        A8E3F7E7D7FFF6E1CCFFF4DBC2FFF4DAC0FFF3D8BDFF61A862FF489A50FF51A0
        62FF60B27EFF449353FF2F7835FF2A702FF7FFFFFF00FFFFFF00FFFFFF00F0CE
        AEFDF9ECDFFFF5DFC8FFF5DDC6FFF4DCC3FFF4DAC1FF56AD5FFF79C49CFF73BF
        94FF6CBA8CFF65B684FF5EB07BFF317B37FFFFFFFF00FFFFFF00FFFFFF00F4D3
        B4FDF9EDE1FFF6E1CCFFF5DFC9FFF5DEC7FFF4DCC4FF69BB6EFF58B061FF64B5
        78FF78C39AFF58A769FF3F8E46FF398640EEFFFFFF00FFFFFF00FFFFFF00F7D7
        B9E3F9EBDEFFF7E7D6FFF6E1CCFFF5E0CAFFF5DEC8FFF5DDC5FFF6E1CBFF59B3
        63FF82CAA7FF4EA256FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FADB
        BD97F8E2CCFFFAEEE3FFF7E7D6FFF6E2CEFFF6E1CBFFF6E3D0FFF9EADDFF69BD
        70FF5BB565FF56AD5FF7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCDE
        C002FADBBEC0F9E2CDFFFAECDEFFF9EEE2FFF9EDE2FFF8E9DAFFF0D5BDFFE7C0
        9FC0E3BC9A02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FCDEC102FADCBF97F9D9BBE3F6D6B8FDF4D3B4FDF1CFAFE3EECBAB97EBC6
        A602FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = SpdBtnBuscaMembroClick
    end
    object DBEdtData: TDBDateEdit
      Left = 9
      Top = 24
      Width = 100
      Height = 24
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'DataContribuicao'
      DataSource = DSContribuicoes
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdtValor: TDBEdit
      Left = 440
      Top = 72
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Valor'
      DataSource = DSContribuicoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdtEnvelope: TDBEdit
      Left = 115
      Top = 24
      Width = 94
      Height = 24
      DataField = 'Envelope'
      DataSource = DSContribuicoes
      TabOrder = 1
      OnKeyPress = DBEdtEnvelopeKeyPress
    end
    object DBLkpTipoContribuicao: TDBLookupComboBox
      Left = 9
      Top = 72
      Width = 425
      Height = 24
      DataField = 'CodTpContrb'
      DataSource = DSContribuicoes
      KeyField = 'CodTpContrb'
      ListField = 'DescTPContrb'
      ListSource = DSLkpTipoContribuicao
      TabOrder = 3
    end
    object EdtNomeMembro: TEdit
      Left = 215
      Top = 24
      Width = 299
      Height = 24
      Enabled = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE CONTRIBUI'#199#213'ES'
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
    Top = 167
    Width = 563
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 398
      Top = 5
      Width = 75
      Height = 41
      Caption = '&Salvar'
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
      Left = 479
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
  object QryContribuicoes: TMyQuery
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
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT C.* ,'
      '       F.Sobrenome,'
      '       M.NomeMembro,'
      '       TC.DescTpContrb'
      
        'FROM contribuicao C left join Familia F on C.CodFamilia = F.CodF' +
        'amilia'
      
        '                    left join Membros M on C.CodMembro = M.CodMe' +
        'mbro'
      
        '                    left Join TipoContribuicao TC ON C.CodTpCont' +
        'rb = TC.CodTpContrb'
      'where isnull(m.codmotivosaida)')
    Left = 508
    Top = 8
    object QryContribuicoesCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
      Origin = 'C.CodMembroAntigo'
    end
    object QryContribuicoesCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'C.CodFamilia'
    end
    object QryContribuicoesCodTpContrb: TLargeintField
      FieldName = 'CodTpContrb'
      Origin = 'C.CodTpContrb'
    end
    object QryContribuicoesValor: TFloatField
      FieldName = 'Valor'
      Origin = 'C.Valor'
      currency = True
    end
    object QryContribuicoesCodContribuicao: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodContribuicao'
      Origin = 'C.CodContribuicao'
    end
    object QryContribuicoesHora: TTimeField
      FieldName = 'Hora'
      Origin = 'C.Hora'
    end
    object QryContribuicoesCodMembro: TLargeintField
      FieldName = 'CodMembro'
      Origin = 'C.CodMembro'
    end
    object QryContribuicoesEnvelope: TLargeintField
      FieldName = 'Envelope'
      Origin = 'C.Envelope'
    end
    object QryContribuicoesSobrenome: TStringField
      FieldName = 'Sobrenome'
      Origin = 'F.Sobrenome'
      Size = 255
    end
    object QryContribuicoesNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'M.NomeMembro'
      Size = 255
    end
    object QryContribuicoesDescTpContrb: TStringField
      FieldName = 'DescTpContrb'
      Origin = 'TC.DescTPContrb'
      Size = 255
    end
    object QryContribuicoesDataContribuicao: TDateField
      FieldName = 'DataContribuicao'
    end
  end
  object DSContribuicoes: TDataSource
    DataSet = QryContribuicoes
    Left = 420
    Top = 8
  end
  object MyQryLkpMembro: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select CodMembro, NomeMembro, CodFamilia, Envelope'
      'From Membros'
      'Order by NomeMembro')
    Left = 228
    Top = 120
    object MyQryLkpMembroCodMembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodMembro'
      Origin = 'membros.CodMembro'
    end
    object MyQryLkpMembroNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'membros.NomeMembro'
      Size = 255
    end
    object MyQryLkpMembroCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'membros.CodFamilia'
    end
    object MyQryLkpMembroEnvelope: TLargeintField
      FieldName = 'Envelope'
      Origin = 'membros.Envelope'
    end
  end
  object MyQryLkpTipoContribuicao: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from TipoContribuicao'
      'Order by DescTpContrb')
    Left = 348
    Top = 120
    object MyQryLkpTipoContribuicaoCodTpContrb: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodTpContrb'
      Origin = 'tipocontribuicao.CodTpContrb'
    end
    object MyQryLkpTipoContribuicaoDescTPContrb: TStringField
      FieldName = 'DescTPContrb'
      Origin = 'tipocontribuicao.DescTPContrb'
      Size = 255
    end
    object MyQryLkpTipoContribuicaoColetiva: TBooleanField
      FieldName = 'Coletiva'
      Origin = 'tipocontribuicao.Coletiva'
    end
  end
  object DSLkpMembro: TDataSource
    DataSet = MyQryLkpMembro
    Left = 228
    Top = 168
  end
  object DSLkpTipoContribuicao: TDataSource
    DataSet = MyQryLkpTipoContribuicao
    Left = 348
    Top = 168
  end
  object QryTemp: TMyQuery
    Connection = DMPrincipal.Conn
    Left = 20
    Top = 4
  end
end
