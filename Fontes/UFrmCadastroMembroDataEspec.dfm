object FormCadastroMembroDataEspec: TFormCadastroMembroDataEspec
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'DATA ESPECIAL'
  ClientHeight = 396
  ClientWidth = 548
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
    Width = 548
    Height = 49
    Align = alTop
    Caption = 'DATA ESPECIAL'
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
    Top = 347
    Width = 548
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 380
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
      Left = 461
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
    Width = 548
    Height = 298
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 91
      Height = 16
      Caption = 'Data Especial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 507
      Top = 5
      Width = 17
      Height = 13
      Caption = 'UF:'
      FocusControl = DBEdtUF
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 334
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdtCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Igreja'
      FocusControl = DBEdtIgreja
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 279
      Top = 48
      Width = 50
      Height = 13
      Caption = 'Oficiante'
      FocusControl = DBEdtOficiante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 207
      Top = 6
      Width = 106
      Height = 16
      Caption = 'Data do evento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 88
      Width = 78
      Height = 13
      Caption = 'Testemunha1'
      FocusControl = DBEdtTestemunha1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 278
      Top = 88
      Width = 78
      Height = 13
      Caption = 'Testemunha2'
      FocusControl = DBedtTestemunha2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 128
      Width = 78
      Height = 13
      Caption = 'Testemunha3'
      FocusControl = DBEdtTestemunha3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 279
      Top = 127
      Width = 78
      Height = 13
      Caption = 'Testemunha4'
      FocusControl = DBEdtTestemunha4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 12
      Top = 166
      Width = 78
      Height = 13
      Caption = 'Testemunha5'
      FocusControl = DBEdtTestemunha5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 279
      Top = 165
      Width = 78
      Height = 13
      Caption = 'Testemunha6'
      FocusControl = DBEdtTestemunha6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 12
      Top = 204
      Width = 78
      Height = 13
      Caption = 'Testemunha7'
      FocusControl = DBEdtTestemunha7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 279
      Top = 204
      Width = 78
      Height = 13
      Caption = 'Testemunha8'
      FocusControl = DBEdtTestemunha8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 12
      Top = 244
      Width = 78
      Height = 13
      Caption = 'Testemunha9'
      FocusControl = DBEdtTestemunha9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLkpCbxDataEspecial: TDBLookupComboBox
      Left = 12
      Top = 24
      Width = 189
      Height = 21
      DataField = 'CodAcontec'
      DataSource = FormCadastroMembro.DSDataEspecial
      KeyField = 'CodDataEsp'
      ListField = 'DescDataEsp'
      ListSource = DSLkpDataEspec
      TabOrder = 0
    end
    object DBEdtUF: TcxDBTextEdit
      Left = 507
      Top = 24
      DataBinding.DataField = 'UFDTEsp'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 3
      Width = 29
    end
    object DBEdtCidade: TcxDBTextEdit
      Left = 334
      Top = 24
      DataBinding.DataField = 'MunicipioDTEsp'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 2
      Width = 167
    end
    object DBEdtIgreja: TcxDBTextEdit
      Left = 12
      Top = 64
      DataBinding.DataField = 'Igreja'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 4
      Width = 261
    end
    object DBEdtOficiante: TcxDBTextEdit
      Left = 278
      Top = 64
      DataBinding.DataField = 'Oficiante'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 5
      Width = 258
    end
    object DBEdtTestemunha1: TcxDBTextEdit
      Left = 12
      Top = 104
      DataBinding.DataField = 'Testemunha1'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 6
      Width = 261
    end
    object DBedtTestemunha2: TcxDBTextEdit
      Left = 279
      Top = 104
      DataBinding.DataField = 'Testemunha2'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 7
      Width = 258
    end
    object DBEdtTestemunha3: TcxDBTextEdit
      Left = 12
      Top = 143
      DataBinding.DataField = 'Testemunha3'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 8
      Width = 261
    end
    object DBEdtTestemunha4: TcxDBTextEdit
      Left = 279
      Top = 143
      DataBinding.DataField = 'Testemunha4'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 9
      Width = 257
    end
    object DBEdtTestemunha5: TcxDBTextEdit
      Left = 12
      Top = 181
      DataBinding.DataField = 'Testemunha5'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 10
      Width = 261
    end
    object DBEdtTestemunha6: TcxDBTextEdit
      Left = 279
      Top = 181
      DataBinding.DataField = 'Testemunha6'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 11
      Width = 257
    end
    object DBEdtTestemunha7: TcxDBTextEdit
      Left = 12
      Top = 220
      DataBinding.DataField = 'Testemunha7'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 12
      Width = 261
    end
    object DBEdtTestemunha8: TcxDBTextEdit
      Left = 279
      Top = 220
      DataBinding.DataField = 'Testemunha8'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 13
      Width = 257
    end
    object DBEdtTestemunha9: TcxDBTextEdit
      Left = 12
      Top = 263
      DataBinding.DataField = 'Testemunha9'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 14
      Width = 261
    end
    object DBDtEdtData: TcxDBDateEdit
      Left = 207
      Top = 24
      DataBinding.DataField = 'Data'
      DataBinding.DataSource = FormCadastroMembro.DSDataEspecial
      TabOrder = 1
      Width = 121
    end
  end
  object QryLkpDataEspec: TMyQuery
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
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from dataespecial'
      'order by descdataEsp')
    Left = 404
    Top = 4
    object QryLkpDataEspecCodDataEsp: TLargeintField
      FieldName = 'CodDataEsp'
    end
    object QryLkpDataEspecDescDataEsp: TStringField
      FieldName = 'DescDataEsp'
      Size = 255
    end
  end
  object DSLkpDataEspec: TDataSource
    DataSet = QryLkpDataEspec
    Left = 488
    Top = 4
  end
end
