object FormCadastroSepultura: TFormCadastroSepultura
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroSepultura'
  ClientHeight = 486
  ClientWidth = 632
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
    Width = 632
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE SEPULTURA'
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
    Top = 437
    Width = 632
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 457
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
      Left = 538
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
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 632
    Height = 388
    ActivePage = TbSCadastro
    Align = alClient
    Style = tsButtons
    TabOrder = 2
    OnChange = PageControl1Change
    object TbSCadastro: TTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 624
        Height = 357
        Align = alClient
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 6
          Width = 20
          Height = 13
          Caption = 'Fila:'
          FocusControl = DBEdtFila
        end
        object Label2: TLabel
          Left = 61
          Top = 6
          Width = 27
          Height = 13
          Caption = 'Lado:'
          FocusControl = DBEdtLado
        end
        object Label3: TLabel
          Left = 176
          Top = 6
          Width = 41
          Height = 13
          Caption = 'Numero:'
          FocusControl = DBEdtNumero
        end
        object Label4: TLabel
          Left = 12
          Top = 192
          Width = 50
          Height = 13
          Caption = 'Sepultura:'
        end
        object Label5: TLabel
          Left = 164
          Top = 192
          Width = 91
          Height = 13
          Caption = 'Desapropriada em:'
        end
        object Label6: TLabel
          Left = 291
          Top = 192
          Width = 98
          Height = 13
          Caption = 'Documento Numero:'
          FocusControl = DBEdtNumeroDocumento
        end
        object Label7: TLabel
          Left = 12
          Top = 236
          Width = 37
          Height = 13
          Caption = 'Motivos'
          FocusControl = DBMmMotivos
        end
        object Label8: TLabel
          Left = 359
          Top = 6
          Width = 88
          Height = 13
          Caption = 'Tipo de Sepultura:'
          FocusControl = DBEdtNumero
        end
        object Label9: TLabel
          Left = 12
          Top = 50
          Width = 110
          Height = 13
          Caption = 'Nome do Respons'#225'vel:'
          FocusControl = DBEdtNumero
        end
        object DBText1: TDBText
          Left = 12
          Top = 112
          Width = 341
          Height = 17
          Color = clBtnHighlight
          DataField = 'Endereco'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object Label10: TLabel
          Left = 359
          Top = 50
          Width = 66
          Height = 13
          Caption = 'Tipo de Taxa:'
          FocusControl = DBEdtNumero
        end
        object DBText2: TDBText
          Left = 359
          Top = 112
          Width = 254
          Height = 17
          Color = clBtnHighlight
          DataField = 'Compl'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object Label11: TLabel
          Left = 12
          Top = 95
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 359
          Top = 95
          Width = 82
          Height = 13
          Caption = 'Complemento:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 12
          Top = 135
          Width = 37
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 203
          Top = 135
          Width = 41
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 392
          Top = 135
          Width = 23
          Height = 13
          Caption = 'CEP:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 476
          Top = 135
          Width = 52
          Height = 13
          Caption = 'Telefone:'
          FocusControl = DBEdtNumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 12
          Top = 154
          Width = 181
          Height = 17
          Color = clBtnHighlight
          DataField = 'Bairro'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object DBText4: TDBText
          Left = 203
          Top = 154
          Width = 178
          Height = 17
          Color = clBtnHighlight
          DataField = 'Cidade'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object DBText5: TDBText
          Left = 392
          Top = 154
          Width = 78
          Height = 17
          Color = clBtnHighlight
          DataField = 'cep'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object DBText6: TDBText
          Left = 476
          Top = 154
          Width = 129
          Height = 17
          Color = clBtnHighlight
          DataField = 'Telefone'
          DataSource = DSLkpResponsavelSepultura
          ParentColor = False
        end
        object DBEdtFila: TDBEdit
          Left = 12
          Top = 23
          Width = 43
          Height = 21
          DataField = 'Fila'
          DataSource = DSSepulturas
          TabOrder = 0
        end
        object DBEdtLado: TDBEdit
          Left = 61
          Top = 23
          Width = 109
          Height = 21
          DataField = 'Lado'
          DataSource = DSSepulturas
          TabOrder = 1
        end
        object DBEdtNumero: TDBEdit
          Left = 176
          Top = 23
          Width = 177
          Height = 21
          DataField = 'Numero'
          DataSource = DSSepulturas
          TabOrder = 2
        end
        object DBEdtNumeroDocumento: TDBEdit
          Left = 291
          Top = 209
          Width = 322
          Height = 21
          DataField = 'NumeroDocumento'
          DataSource = DSSepulturas
          TabOrder = 8
        end
        object DBMmMotivos: TDBMemo
          Left = 12
          Top = 255
          Width = 601
          Height = 90
          DataField = 'Motivos'
          DataSource = DSSepulturas
          TabOrder = 9
        end
        object DBLkpCbxTipoSepultura: TDBLookupComboBox
          Left = 359
          Top = 23
          Width = 254
          Height = 21
          Hint = 'PRECIONE F2 PARA CADASTRAR UM NOVO TIPO DE SEPULTURA'
          DataField = 'CodTipoSepultura'
          DataSource = DSSepulturas
          KeyField = 'CodTipoSepultura'
          ListField = 'NomeTipoSepultura'
          ListSource = DSLkpTipoSepultura
          TabOrder = 3
          OnKeyDown = DBLkpCbxTipoSepulturaKeyDown
        end
        object DBLkpCbxNomeResponsavel: TDBLookupComboBox
          Left = 12
          Top = 68
          Width = 341
          Height = 21
          Hint = 'PRECIONE F2 PARA CADASTRAR UM NOVO RESPONS'#193'VEL PELA SEPULTURA'
          DataField = 'CodResponsavelSepultura'
          DataSource = DSSepulturas
          KeyField = 'CodResponsavelSepultura'
          ListField = 'NomeResponsavelSepultura'
          ListSource = DSLkpResponsavelSepultura
          TabOrder = 4
          OnKeyDown = DBLkpCbxNomeResponsavelKeyDown
        end
        object DBCbxSepultura: TDBComboBox
          Left = 12
          Top = 209
          Width = 145
          Height = 21
          Style = csDropDownList
          DataField = 'Sepultura'
          DataSource = DSSepulturas
          Items.Strings = (
            'Adulto'
            'Crian'#231'a')
          TabOrder = 6
        end
        object DBDtEdtDesapropriado: TDBDateEdit
          Left = 164
          Top = 209
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 1
          DataField = 'DataDesapropriacao'
          DataSource = DSSepulturas
          NumGlyphs = 2
          TabOrder = 7
        end
        object DBLkpCbxTipoTaxa: TDBLookupComboBox
          Left = 359
          Top = 68
          Width = 254
          Height = 21
          Hint = 'PRECIONE F2 PARA CADASTRAR UM NOVO TIPO DE TAXA'
          DataField = 'CodTipoTaxaSepultura'
          DataSource = DSSepulturas
          KeyField = 'CodTipoTaxaSepultura'
          ListField = 'NomeTipoTaxaSepultura'
          ListSource = DSLkpTipoTaxaSepultura
          TabOrder = 5
          OnKeyDown = DBLkpCbxTipoTaxaKeyDown
        end
      end
    end
    object TbSPagamentos: TTabSheet
      Caption = 'Falecidos'
      Enabled = False
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 624
        Height = 357
        Align = alClient
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object ToolBar1: TToolBar
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 616
          Height = 48
          ButtonHeight = 45
          Caption = 'ToolBar1'
          Color = clInactiveCaption
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          ParentColor = False
          TabOrder = 0
          object BtnAdicionar: TBitBtn
            Left = 0
            Top = 0
            Width = 75
            Height = 45
            Caption = '&Adicionar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDBD6
              DBDBD6DBDBD6DBDBD6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF6BAE946BAE946BAE946BAE946BAE94FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94B2
              F0E0A7EEDCB2F0E06BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF6BAE9495EAD48AE8D095EAD46BAE94FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDBD6DBDBD6DBDBD6DBDB6BAE9482
              E6CD79E5C982E6CD6BAE94D6DBDBD6DBDBD6DBDBD6DBDBFFFFFFFFFFFFFFFFFF
              6BAE946BAE946BAE946BAE9477C5AC77E4C872E3C677E4C877C5AC6BAE946BAE
              946BAE946BAE94FFFFFFFFFFFFFFFFFF6BAE94B2F0E095EAD482E6CD77E4C86F
              E3C56CE2C46FE3C577E4C882E6CD95EAD4B2F0E06BAE94FFFFFFFFFFFFFFFFFF
              6BAE94A7EEDC8AE8D079E5C972E3C66CE2C46BE2C36CE2C472E3C679E5C98AE8
              D0A7EEDC6BAE94FFFFFFFFFFFFFFFFFF6BAE94DDF3EED1EFE7C9ECE3C4EAE1C0
              E9DFBFE9DEC0E9DFC4EAE1C9ECE3D1EFE7DDF3EE6BAE94FFFFFFFFFFFFFFFFFF
              6BAE946BAE946BAE946BAE9497C9B7D1EEE7D0EDE6D1EEE797C9B76BAE946BAE
              946BAE946BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94E2
              F4EFE0F4EEE2F4EF6BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF6BAE94F0F9F7EFF9F7F0F9F76BAE94FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BAE94FA
              FDFCFAFDFCFAFDFC6BAE94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF6BAE946BAE946BAE946BAE946BAE94FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            TabOrder = 0
            OnClick = BtnAdicionarClick
          end
          object BtnEditar: TBitBtn
            Left = 75
            Top = 0
            Width = 75
            Height = 45
            Caption = '&Editar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF333333004A71004A71FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004A71
              93D4E993D4E9004A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF004A7193D4E91A81AF1A81AF004A71FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              004A712F96C01A81AF1A81AF004A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004A712F96C01A81AF1A81AF00
              4A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF004A712F96C01A81AF1A81AF004A71FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004A712F96C01A
              81AF1A81AF004A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF004A712F96C01A81AF1A81AF004A71FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              4A712F96C01A81AF1A81AF004A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004A712F96C01A81AF1A81AF004A
              71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF004A712F96C01A81AF00009B00009BFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF004A7100009B0260
              FA0048EC00009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00009B0260FA0260FA00009BFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
              9B00009BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            TabOrder = 1
            OnClick = BtnEditarClick
          end
          object BtnExcluir: TBitBtn
            Left = 150
            Top = 0
            Width = 75
            Height = 45
            Caption = 'E&xcluir'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDBFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFD6DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFD6DBDB4646C1D6DBDBFFFFFFFFFFFFFFFFFFD6DBDB4646C1D6DB
              DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDB4646C17C7CDB4646C1D6
              DBDBFFFFFFD6DBDB4646C17C7CDB4646C1D6DBDBFFFFFFFFFFFFFFFFFFFFFFFF
              D6DBDB4646C17272DB9D9DFF6A6ADB4646C1D6DBDB4646C16A6ADB9D9DFF7272
              DB4646C1D6DBDBFFFFFFFFFFFFFFFFFF4646C17C7CDB9D9DFF8484FF7D7DFF5E
              5EDB4646C15E5EDB7D7DFF8484FF9D9DFF7C7CDB4646C1FFFFFFFFFFFFFFFFFF
              FFFFFF4646C16A6ADB7D7DFF6C6CFF6868FF6A6AFF6868FF6C6CFF7D7DFF6A6A
              DB4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C15E5EDB6868FF5E
              5EFF5C5CFF5E5EFF6868FF5E5EDB4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFD6DBDB4646C16A6AFF5C5CFF5858FF5C5CFF6A6AFF4646C1D6DB
              DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6DBDB4646C17777DBB1B1FFAB
              ABFFAAAAFFABABFFB1B1FF7777DB4646C1D6DBDBFFFFFFFFFFFFFFFFFFFFFFFF
              D6DBDB4646C18282DBC9C9FFC2C2FFC1C1FFC1C1FFC1C1FFC2C2FFC9C9FF8282
              DB4646C1D6DBDBFFFFFFFFFFFFFFFFFF4646C18C8CDBE2E2FFDBDBFFD9D9FF83
              83DB4646C18383DBD9D9FFDBDBFFE2E2FF8C8CDB4646C1FFFFFFFFFFFFFFFFFF
              FFFFFF4646C18C8CDBEEEEFF8B8BDB4646C1FFFFFF4646C18B8BDBEEEEFF8C8C
              DB4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C19191DB4646C1FF
              FFFFFFFFFFFFFFFF4646C19191DB4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF4646C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646C1FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            TabOrder = 2
            OnClick = BtnExcluirClick
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 55
          Width = 622
          Height = 301
          Align = alClient
          DataSource = FormCadastroSepulturaPagamento.DSFalecidos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = BtnEditarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NomeFalecido'
              Title.Caption = 'Falecido'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataPagamento'
              Title.Caption = 'Data de Pagamento'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataVencimento'
              Title.Caption = 'Data de Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumeroRecibo'
              Title.Caption = 'Numero do Recibo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'idade'
              Title.Caption = 'Idade'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataFalecimento'
              Title.Caption = 'Data Falecimento'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CertidaoObito'
              Title.Caption = 'Certid'#227'o de '#211'bito'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  object QrySepulturas: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO sepulturas'
      
        '  (CodSepultura, CodResponsavelSepultura, Fila, Lado, Numero, Co' +
        'dTipoSepultura, Sepultura, CodTipoTaxaSepultura, DataDesapropria' +
        'cao, NumeroDocumento, Motivos)'
      'VALUES'
      
        '  (:CodSepultura, :CodResponsavelSepultura, :Fila, :Lado, :Numer' +
        'o, :CodTipoSepultura, :Sepultura, :CodTipoTaxaSepultura, :DataDe' +
        'sapropriacao, :NumeroDocumento, :Motivos)')
    SQLDelete.Strings = (
      'DELETE FROM sepulturas'
      'WHERE'
      '  CodSepultura = :Old_CodSepultura')
    SQLUpdate.Strings = (
      'UPDATE sepulturas'
      'SET'
      
        '  CodSepultura = :CodSepultura, CodResponsavelSepultura = :CodRe' +
        'sponsavelSepultura, Fila = :Fila, Lado = :Lado, Numero = :Numero' +
        ', CodTipoSepultura = :CodTipoSepultura, Sepultura = :Sepultura, ' +
        'CodTipoTaxaSepultura = :CodTipoTaxaSepultura, DataDesapropriacao' +
        ' = :DataDesapropriacao, NumeroDocumento = :NumeroDocumento, Moti' +
        'vos = :Motivos'
      'WHERE'
      '  CodSepultura = :Old_CodSepultura')
    SQLRefresh.Strings = (
      
        'SELECT CodSepultura, CodResponsavelSepultura, Fila, Lado, Numero' +
        ', CodTipoSepultura, Sepultura, CodTipoTaxaSepultura, DataDesapro' +
        'priacao, NumeroDocumento, Motivos FROM sepulturas'
      'WHERE'
      '  CodSepultura = :CodSepultura')
    SQLLock.Strings = (
      'SELECT * FROM sepulturas'
      'WHERE'
      '  CodSepultura = :Old_CodSepultura'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT S.*,'
      '       RS.NomeResponsavelSepultura,'
      '       TS.NomeTipoSepultura,'
      '       TTS.NomeTipoTaxaSepultura'
      
        'FROM sepulturas S Left Join ResponsavelSepultura RS on S.CodResp' +
        'onsavelSepultura = RS.CodResponsavelSepultura'
      
        '                  Left Join TipoSepultura TS on S.CodTipoSepultu' +
        'ra = TS.CodTipoSepultura'
      
        '                  Left Join TipoTaxaSepultura TTS on S.CodTipoTa' +
        'xaSepultura = TTS.CodTipoTaxaSepultura')
    Left = 576
    object QrySepulturasCodSepultura: TLargeintField
      FieldName = 'CodSepultura'
    end
    object QrySepulturasCodResponsavelSepultura: TLargeintField
      FieldName = 'CodResponsavelSepultura'
    end
    object QrySepulturasFila: TStringField
      FieldName = 'Fila'
      Size = 45
    end
    object QrySepulturasLado: TStringField
      FieldName = 'Lado'
      Size = 45
    end
    object QrySepulturasNumero: TStringField
      FieldName = 'Numero'
      Size = 45
    end
    object QrySepulturasCodTipoSepultura: TLargeintField
      FieldName = 'CodTipoSepultura'
    end
    object QrySepulturasSepultura: TStringField
      FieldName = 'Sepultura'
      Size = 45
    end
    object QrySepulturasCodTipoTaxaSepultura: TLargeintField
      FieldName = 'CodTipoTaxaSepultura'
    end
    object QrySepulturasDataDesapropriacao: TDateTimeField
      FieldName = 'DataDesapropriacao'
    end
    object QrySepulturasNumeroDocumento: TStringField
      FieldName = 'NumeroDocumento'
      Size = 50
    end
    object QrySepulturasMotivos: TMemoField
      FieldName = 'Motivos'
      BlobType = ftMemo
    end
    object QrySepulturasNomeResponsavelSepultura: TStringField
      FieldName = 'NomeResponsavelSepultura'
      Size = 250
    end
    object QrySepulturasNomeTipoSepultura: TStringField
      FieldName = 'NomeTipoSepultura'
      Size = 200
    end
    object QrySepulturasNomeTipoTaxaSepultura: TStringField
      FieldName = 'NomeTipoTaxaSepultura'
      Size = 200
    end
  end
  object DSSepulturas: TDataSource
    DataSet = QrySepulturas
    Left = 504
  end
  object QryLkpTipoSepultura: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from tiposepultura'
      'order by nometiposepultura')
    Left = 40
    Top = 408
    object QryLkpTipoSepulturaCodTipoSepultura: TLargeintField
      FieldName = 'CodTipoSepultura'
    end
    object QryLkpTipoSepulturaNomeTipoSepultura: TStringField
      FieldName = 'NomeTipoSepultura'
      Size = 200
    end
  end
  object QryLkpResponsavelSepultura: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select * from ResponsavelSepultura'
      'order by NomeResponsavelSepultura')
    Left = 168
    Top = 408
    object QryLkpResponsavelSepulturaCodResponsavelSepultura: TLargeintField
      FieldName = 'CodResponsavelSepultura'
    end
    object QryLkpResponsavelSepulturaNomeResponsavelSepultura: TStringField
      FieldName = 'NomeResponsavelSepultura'
      Size = 250
    end
    object QryLkpResponsavelSepulturaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 250
    end
    object QryLkpResponsavelSepulturaCompl: TStringField
      FieldName = 'Compl'
      Size = 200
    end
    object QryLkpResponsavelSepulturaBairro: TStringField
      FieldName = 'Bairro'
      Size = 200
    end
    object QryLkpResponsavelSepulturaCidade: TStringField
      FieldName = 'Cidade'
      Size = 250
    end
    object QryLkpResponsavelSepulturaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
    object QryLkpResponsavelSepulturaCelular: TStringField
      FieldName = 'Celular'
      Size = 45
    end
    object QryLkpResponsavelSepulturaEmail: TStringField
      FieldName = 'Email'
      Size = 250
    end
    object QryLkpResponsavelSepulturaCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryLkpResponsavelSepulturacep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 10
    end
  end
  object QryLkpTipoTaxaSepultura: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select * from tipoTaxaSepultura'
      'order by NomeTipoTaxaSepultura')
    Left = 316
    Top = 408
    object QryLkpTipoTaxaSepulturaCodTipoTaxaSepultura: TLargeintField
      FieldName = 'CodTipoTaxaSepultura'
    end
    object QryLkpTipoTaxaSepulturaNomeTipoTaxaSepultura: TStringField
      FieldName = 'NomeTipoTaxaSepultura'
      Size = 200
    end
    object QryLkpTipoTaxaSepulturaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object DSLkpTipoSepultura: TDataSource
    DataSet = QryLkpTipoSepultura
    Left = 32
    Top = 4
  end
  object DSLkpResponsavelSepultura: TDataSource
    DataSet = QryLkpResponsavelSepultura
    Left = 152
    Top = 4
  end
  object DSLkpTipoTaxaSepultura: TDataSource
    DataSet = QryLkpTipoTaxaSepultura
    Left = 288
    Top = 4
  end
end
