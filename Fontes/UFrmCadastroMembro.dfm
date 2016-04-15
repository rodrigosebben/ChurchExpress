object FormCadastroMembro: TFormCadastroMembro
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroMembro'
  ClientHeight = 507
  ClientWidth = 767
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
    Width = 767
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE MEMBRO'
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
    Top = 457
    Width = 767
    Height = 50
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object Label9: TLabel
      Left = 41
      Top = 6
      Width = 138
      Height = 16
      Caption = 'Campo Desatualizado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 41
      Top = 29
      Width = 81
      Height = 16
      Caption = 'Campo vazio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnSalvar: TBitBtn
      Left = 591
      Top = 5
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
      Left = 678
      Top = 5
      Width = 76
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
    object Panel5: TPanel
      Left = 14
      Top = 4
      Width = 21
      Height = 21
      Color = clYellow
      ParentBackground = False
      TabOrder = 2
    end
    object Panel6: TPanel
      Left = 14
      Top = 27
      Width = 21
      Height = 21
      Color = clRed
      ParentBackground = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 767
    Height = 408
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 765
      Height = 406
      ActivePage = TbsPessoal
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TbsPessoal: TTabSheet
        Caption = 'Dados Pessoais'
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 757
          Height = 378
          Align = alClient
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Label47: TLabel
            Left = 454
            Top = 253
            Width = 17
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'UF:'
            FocusControl = DBEdtUF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 361
            Top = 253
            Width = 23
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 204
            Top = 253
            Width = 37
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Bairro:'
            FocusControl = DBEdtBairro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 8
            Top = 253
            Width = 41
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Cidade:'
            FocusControl = DBEdtCidade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 558
            Top = 214
            Width = 82
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Complemento:'
            FocusControl = DBEdtComplemento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 245
            Top = 214
            Width = 55
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Endereco:'
            FocusControl = DBEdtEndereco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 127
            Top = 214
            Width = 42
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Celular:'
            FocusControl = DBEdtCelular
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 8
            Top = 214
            Width = 52
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Telefone:'
            FocusControl = DBEdtTelefone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 380
            Top = 173
            Width = 27
            Height = 13
            Caption = 'Mae:'
            FocusControl = DBEdtMae
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 173
            Width = 20
            Height = 13
            Caption = 'Pai:'
            FocusControl = DBEdtPai
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 638
            Top = 132
            Width = 23
            Height = 13
            Caption = 'CPF:'
            FocusControl = DBEdtCPF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 514
            Top = 132
            Width = 19
            Height = 13
            Caption = 'RG:'
            FocusControl = DBEdtRG
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 283
            Top = 132
            Width = 38
            Height = 13
            Caption = 'E-mail:'
            FocusControl = DBEdtEmail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 173
            Top = 132
            Width = 75
            Height = 13
            Caption = 'Naturalidade:'
            FocusControl = DBEdtNaturalidade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 513
            Top = 92
            Width = 55
            Height = 13
            Caption = 'Profiss'#227'o:'
            FocusControl = DBEdtEmail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 364
            Top = 92
            Width = 67
            Height = 13
            Caption = 'Estado Civil:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 173
            Top = 92
            Width = 74
            Height = 13
            Caption = 'Escolaridade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 667
            Top = 48
            Width = 45
            Height = 13
            Caption = 'Sangue:'
            FocusControl = DBEdtSangue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 557
            Top = 48
            Width = 102
            Height = 13
            Caption = 'Dt de Nascimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 516
            Top = 48
            Width = 31
            Height = 13
            Caption = 'Sexo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 173
            Top = 50
            Width = 116
            Height = 13
            Caption = 'Nome de Solteiro(a):'
            FocusControl = DBEdtNomeSolteiro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 397
            Top = 5
            Width = 35
            Height = 13
            Caption = 'Nome:'
            FocusControl = DBEdtNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 173
            Top = 5
            Width = 43
            Height = 13
            Caption = 'Fam'#237'lia:'
            FocusControl = DBEdtNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 397
            Top = 50
            Width = 92
            Height = 13
            Caption = 'Tipo de membro'
            FocusControl = DBEdtNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpdBtnBuscaMembro: TSpeedButton
            Left = 368
            Top = 21
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
          object DBLkpEscolaridade: TDBLookupComboBox
            Left = 173
            Top = 108
            Width = 184
            Height = 21
            Hint = 'ESCOLARIDADE DO MEMBRO (PRECIONE F2 PARA CADASTRAR NOVAS)'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'CodEscolaridade'
            DataSource = DSMembros
            KeyField = 'CodEscolaridade'
            ListField = 'NomeEscolaridade'
            ListSource = DSLkpEscolaridade
            TabOrder = 6
          end
          object DBEdtUF: TDBEdit
            Left = 454
            Top = 268
            Width = 29
            Height = 21
            Hint = 'UF DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = DSMembros
            TabOrder = 24
          end
          object DBEdtBairro: TDBEdit
            Left = 204
            Top = 268
            Width = 153
            Height = 21
            Hint = 'BAIRRO DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Bairro'
            DataSource = DSMembros
            TabOrder = 22
          end
          object DBEdtCidade: TDBEdit
            Left = 8
            Top = 268
            Width = 191
            Height = 21
            Hint = 'CIDADE DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Cidade'
            DataSource = DSMembros
            TabOrder = 21
          end
          object DBEdtComplemento: TDBEdit
            Left = 558
            Top = 229
            Width = 191
            Height = 21
            Hint = 'COMPLEMENTE DE ENDERE'#199'O ( EX: AP, BLOCO, CASA, TRAVESSA, ETC)'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Compl'
            DataSource = DSMembros
            TabOrder = 20
          end
          object DBEdtEndereco: TDBEdit
            Left = 245
            Top = 229
            Width = 308
            Height = 21
            Hint = 'ENDERE'#199'O DO MEMBRO (INFORME O ENDERE'#199'O E O N'#218'MERO)'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Endereco'
            DataSource = DSMembros
            PopupMenu = PpMnEndereco
            TabOrder = 19
            OnExit = DBEdtEnderecoExit
          end
          object DBEdtCelular: TDBEdit
            Left = 127
            Top = 229
            Width = 114
            Height = 21
            Hint = 'TELEFONE CELULAR DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Celular'
            DataSource = DSMembros
            PopupMenu = PpMnCelular
            TabOrder = 18
            OnExit = DBEdtCelularExit
          end
          object DBEdtTelefone: TDBEdit
            Left = 8
            Top = 229
            Width = 114
            Height = 21
            Hint = 'TELEFONE RESIDENCIAL DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'Telefone'
            DataSource = DSMembros
            PopupMenu = PpMnFone
            TabOrder = 17
            OnExit = DBEdtTelefoneExit
          end
          object DBCbxMaeLuterana: TDBCheckBox
            Left = 680
            Top = 190
            Width = 68
            Height = 17
            Hint = 'INFORMA SE A M'#195'E DO MEMBRO '#201' LUTERANA'
            Caption = 'Luterana'
            DataField = 'MaeCELC'
            DataSource = DSMembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdtMae: TDBEdit
            Left = 381
            Top = 188
            Width = 293
            Height = 21
            Hint = 'M'#195'E DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'Mae'
            DataSource = DSMembros
            TabOrder = 15
          end
          object DBCbxPaiLuterano: TDBCheckBox
            Left = 306
            Top = 191
            Width = 74
            Height = 17
            Hint = 'INFORMA SE O PAI DO MEMBRO '#201' LUTERANO'
            Caption = 'Luterano'
            DataField = 'PaiCELC'
            DataSource = DSMembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdtPai: TDBEdit
            Left = 5
            Top = 188
            Width = 295
            Height = 21
            Hint = 'NOME DO PAI DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'Pai'
            DataSource = DSMembros
            TabOrder = 13
          end
          object DBEdtCPF: TDBEdit
            Left = 638
            Top = 148
            Width = 110
            Height = 21
            Hint = 'CPF DO MEMBRO (CADASTRAR APENAS N'#218'MEROS)'
            CharCase = ecUpperCase
            DataField = 'CPF'
            DataSource = DSMembros
            TabOrder = 12
          end
          object DBEdtRG: TDBEdit
            Left = 514
            Top = 148
            Width = 117
            Height = 21
            Hint = 'DOCUMENTO DE IDENTIDADE DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'RG'
            DataSource = DSMembros
            TabOrder = 11
          end
          object DBEdtEmail: TDBEdit
            Left = 283
            Top = 148
            Width = 225
            Height = 21
            Hint = 'E-MAIL DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'Email'
            DataSource = DSMembros
            PopupMenu = PpMnEmail
            TabOrder = 10
            OnExit = DBEdtEmailExit
          end
          object DBEdtNaturalidade: TDBEdit
            Left = 173
            Top = 148
            Width = 102
            Height = 21
            Hint = 'NATURALIDADE O MEMBRO'
            CharCase = ecUpperCase
            DataField = 'Naturalidade'
            DataSource = DSMembros
            TabOrder = 9
          end
          object DBLkpProfissao: TDBLookupComboBox
            Left = 512
            Top = 108
            Width = 236
            Height = 21
            Hint = 'PROFISS'#195'O DO MEMBRO (PRECIONE F2 PARA CADASTRAR NOVAS)'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'CodProfissao'
            DataSource = DSMembros
            KeyField = 'CodProfissao'
            ListField = 'NomeProfissao'
            ListSource = DSLkpProfissao
            TabOrder = 8
          end
          object DBLkpEstadoCivil: TDBLookupComboBox
            Left = 363
            Top = 108
            Width = 145
            Height = 21
            Hint = 'ESTADO CIVIL DO MEMBRO (PRECIONE F2 PARA CADASTRAR NOVAS)'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'CodEstadoCivil'
            DataSource = DSMembros
            KeyField = 'CodEstadoCivil'
            ListField = 'NomeEstadoCivil'
            ListSource = DSLkpEstadoCivil
            TabOrder = 7
          end
          object DBEdtSangue: TDBEdit
            Left = 667
            Top = 65
            Width = 81
            Height = 21
            Hint = 'TIPO DE SANGUE DO MEMBRO'
            DataField = 'TipoSangue'
            DataSource = DSMembros
            TabOrder = 5
          end
          object DBDtEdtDataNasc: TDBDateEdit
            Left = 558
            Top = 65
            Width = 104
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataNasc'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 4
          end
          object DBCBxSexo: TDBComboBox
            Left = 516
            Top = 65
            Width = 34
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            DataField = 'Sexo'
            DataSource = DSMembros
            Items.Strings = (
              'M'
              'F')
            TabOrder = 3
          end
          object DBEdtNomeSolteiro: TDBEdit
            Left = 174
            Top = 65
            Width = 217
            Height = 21
            Hint = 'NOME DE SOLTEIRO DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'NomeSolteiro'
            DataSource = DSMembros
            TabOrder = 1
          end
          object DBEdtNome: TDBEdit
            Left = 399
            Top = 23
            Width = 349
            Height = 21
            Hint = 'NOME COMPLETO ATUAL DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'NomeMembro'
            DataSource = DSMembros
            TabOrder = 0
          end
          object GrpBxInformacoesConjuge: TGroupBox
            Left = 7
            Top = 294
            Width = 741
            Height = 72
            Caption = 'Informa'#231#245'es do Conjuge:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 26
            object Label21: TLabel
              Left = 9
              Top = 16
              Width = 35
              Height = 13
              Caption = 'Nome:'
              FocusControl = DBEdtNomeConjuge
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 346
              Top = 16
              Width = 116
              Height = 13
              Caption = 'Data de Nascimento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 476
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Religi'#227'o:'
              FocusControl = DBEdtReligiaoConjuge
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdtNomeConjuge: TDBEdit
              Left = 9
              Top = 32
              Width = 334
              Height = 21
              Hint = 'NOME DO CONJUGE DO MEMBRO'
              CharCase = ecUpperCase
              DataField = 'NomeConjuge'
              DataSource = DSMembros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdtReligiaoConjuge: TDBEdit
              Left = 476
              Top = 32
              Width = 187
              Height = 21
              Hint = 'RELIGI'#195'O DO CONJUGE DO MEMBRO'
              CharCase = ecUpperCase
              DataField = 'ReligiaoConjuge'
              DataSource = DSMembros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBCkBxConjugefiliado: TDBCheckBox
              Left = 668
              Top = 37
              Width = 75
              Height = 13
              Hint = 'INFORMA SE O CONJUGE '#201' FILIADO A CONGREGA'#199#195'O'
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'Filiado'
              DataField = 'ConjugeFiliado'
              DataSource = DSMembros
              TabOrder = 3
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBDtEdtDtNascConjuge: TDBDateEdit
              Left = 346
              Top = 32
              Width = 125
              Height = 21
              Margins.Left = 4
              Margins.Top = 1
              Margins.Right = 2
              Margins.Bottom = 2
              DataField = 'DataNascConj'
              DataSource = DSMembros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ButtonWidth = 16
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 1
            end
          end
          object DBChckBxChefeFamilia: TDBCheckBox
            Left = 496
            Top = 271
            Width = 125
            Height = 17
            Caption = 'Chefe de Fam'#237'lia'
            DataField = 'ChefeFamilia'
            DataSource = DSMembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 25
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdtCEP: TcxDBMaskEdit
            Left = 362
            Top = 268
            DataBinding.DataField = 'Cep'
            DataBinding.DataSource = DSMembros
            ParentFont = False
            Properties.EditMask = '00000\-000;1;_'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 23
            Width = 87
          end
          object DBLkpTipoMembro: TDBLookupComboBox
            Left = 397
            Top = 65
            Width = 113
            Height = 21
            DataField = 'CodTipoMembro'
            DataSource = DSMembros
            KeyField = 'CodTipoMembro'
            ListField = 'NomeTipoMembro'
            ListSource = DSLkpTipoMembro
            TabOrder = 2
          end
          object EdtNomeFamilia: TEdit
            Left = 173
            Top = 21
            Width = 196
            Height = 24
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 27
          end
        end
        object Panel4: TPanel
          Left = 9
          Top = 11
          Width = 160
          Height = 162
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '(Clique 2x para selecionar)'
          TabOrder = 0
          object ImgFotoMembro: TImage
            Left = 1
            Top = 1
            Width = 158
            Height = 160
            Hint = 'CLIQUE 2X SOBRE A IMAGEM PARA SELECIONAR A FOTO DO MEMBRO.'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            PopupMenu = PpMnFoto
            Stretch = True
            OnDblClick = ImgFotoMembroDblClick
            ExplicitTop = 0
          end
          object DBText1: TDBText
            Left = 1
            Top = 1
            Width = 65
            Height = 17
            DataField = 'CodMembro'
            DataSource = DSMembros
          end
        end
      end
      object TbsProfissional: TTabSheet
        Caption = 'Profissional'
        ImageIndex = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 757
          Height = 378
          Align = alClient
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Label12: TLabel
            Left = 11
            Top = 5
            Width = 49
            Height = 13
            Caption = 'Empresa'
            FocusControl = DBEdtEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 412
            Top = 3
            Width = 23
            Height = 13
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 515
            Top = 5
            Width = 41
            Height = 13
            Caption = 'Cidade:'
            FocusControl = DBEdtCidadeEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 720
            Top = 5
            Width = 17
            Height = 13
            Caption = 'UF:'
            FocusControl = DBEdtUFEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 11
            Top = 48
            Width = 52
            Height = 13
            Caption = 'Telefone:'
            FocusControl = DBEdtTelefoneEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 151
            Top = 48
            Width = 33
            Height = 13
            Caption = 'Email:'
            FocusControl = DBEdtEmailEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 412
            Top = 48
            Width = 36
            Height = 13
            Caption = 'Cargo:'
            FocusControl = DBEdtCargoEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 618
            Top = 48
            Width = 39
            Height = 13
            Caption = 'Renda:'
            FocusControl = DBEdtRendaEmpresa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdtEmpresa: TDBEdit
            Left = 11
            Top = 21
            Width = 395
            Height = 21
            Hint = 'EMPRESA DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'Empresa'
            DataSource = DSMembros
            TabOrder = 0
          end
          object DBEdtCidadeEmpresa: TDBEdit
            Left = 515
            Top = 21
            Width = 199
            Height = 21
            Hint = 'CIDADE DA EMPRESA DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'CidadeEmpresa'
            DataSource = DSMembros
            TabOrder = 2
          end
          object DBEdtUFEmpresa: TDBEdit
            Left = 720
            Top = 21
            Width = 23
            Height = 21
            Hint = 'UF DA EMPRESA DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'UFEmpresa'
            DataSource = DSMembros
            TabOrder = 3
          end
          object DBEdtTelefoneEmpresa: TDBEdit
            Left = 11
            Top = 64
            Width = 134
            Height = 21
            Hint = 'TELEFONE DA EMPRESA DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'FoneEmpresa'
            DataSource = DSMembros
            TabOrder = 4
          end
          object DBEdtEmailEmpresa: TDBEdit
            Left = 151
            Top = 64
            Width = 255
            Height = 21
            Hint = 'E-MAIL DA EMPRESA DO MEMBRO'
            CharCase = ecUpperCase
            DataField = 'EmailEmpresa'
            DataSource = DSMembros
            TabOrder = 5
          end
          object DBEdtCargoEmpresa: TDBEdit
            Left = 412
            Top = 64
            Width = 200
            Height = 21
            Hint = 'CARGO DO MEMBRO NA EMPRESA'
            CharCase = ecUpperCase
            DataField = 'Cargo'
            DataSource = DSMembros
            TabOrder = 6
          end
          object DBEdtRendaEmpresa: TDBEdit
            Left = 618
            Top = 64
            Width = 125
            Height = 21
            Hint = 'RENDA DO MEMBRO MENSAL NA EMPRESA'
            CharCase = ecUpperCase
            DataField = 'Renda'
            DataSource = DSMembros
            TabOrder = 7
          end
          object DBEdtCepEmpresa: TcxDBMaskEdit
            Left = 412
            Top = 21
            DataBinding.DataField = 'CEPEmpresa'
            DataBinding.DataSource = DSMembros
            ParentFont = False
            Properties.EditMask = '00000\-000;1;_'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 97
          end
        end
      end
      object TbsComunidade: TTabSheet
        Caption = 'Comunidade'
        ImageIndex = 2
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 757
          Height = 378
          Align = alClient
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Label29: TLabel
            Left = 8
            Top = 5
            Width = 88
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data Admiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 119
            Top = 5
            Width = 114
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Forma de Admiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 376
            Top = 7
            Width = 72
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Proced'#234'ncia:'
            FocusControl = DBEdtProcedencia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 8
            Top = 47
            Width = 81
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data de Saida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 119
            Top = 46
            Width = 93
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Motivo da Sa'#237'da:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 376
            Top = 47
            Width = 46
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Destino:'
            FocusControl = DBEdtDestino
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 8
            Top = 90
            Width = 101
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data de Cadastro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 119
            Top = 90
            Width = 121
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data de Confirmacao:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 253
            Top = 90
            Width = 96
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data de Batismo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 363
            Top = 90
            Width = 80
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Data de Ativo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 472
            Top = 90
            Width = 48
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Votante:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 587
            Top = 89
            Width = 67
            Height = 13
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Num. Vezes:'
            FocusControl = DBEdtNumVezes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 678
            Top = 89
            Width = 54
            Height = 13
            Caption = 'Envelope:'
            FocusControl = DBEdtEnvelope
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdtDtAdmissao: TDBDateEdit
            Left = 8
            Top = 22
            Width = 104
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataAdmisComunidade'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 0
          end
          object DBLkpFormaAdmissao: TDBLookupComboBox
            Left = 119
            Top = 22
            Width = 253
            Height = 21
            Hint = 'FORMA DE ADMISS'#195'O DO MEMBRO NA CONGREGA'#199#195'O'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'CodFormaAdmissao'
            DataSource = DSMembros
            KeyField = 'CodFormaAdmissao'
            ListField = 'NomeFormaAdmissao'
            ListSource = DSLkpFormaAdmissao
            TabOrder = 1
          end
          object DBEdtProcedencia: TDBEdit
            Left = 376
            Top = 22
            Width = 374
            Height = 21
            Hint = 'PROCED'#202'NCIA DO MEMBRO'
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'ProcedenciaAdmissao'
            DataSource = DSMembros
            TabOrder = 2
          end
          object DBEdtDtSaida: TDBDateEdit
            Left = 8
            Top = 63
            Width = 105
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataSaida'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 3
          end
          object DBLkpMotivoSaida: TDBLookupComboBox
            Left = 119
            Top = 62
            Width = 253
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'CodMotivoSaida'
            DataSource = DSMembros
            KeyField = 'CodMotivoSaida'
            ListField = 'NomeMotivoSaida'
            ListSource = DSLkpMotivoSaida
            TabOrder = 4
          end
          object DBEdtDestino: TDBEdit
            Left = 376
            Top = 62
            Width = 374
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            CharCase = ecUpperCase
            DataField = 'DestinoSaida'
            DataSource = DSMembros
            TabOrder = 5
          end
          object DBEdtDataCadastro: TDBDateEdit
            Left = 8
            Top = 106
            Width = 104
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataCadastro'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 6
          end
          object DBEdtDataConfirmacao: TDBDateEdit
            Left = 119
            Top = 106
            Width = 122
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataConfirmacao'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 7
          end
          object DBEdtDataBatismo: TDBDateEdit
            Left = 253
            Top = 106
            Width = 104
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataBatismo'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 8
          end
          object DBEdtDataAtivo: TDBDateEdit
            Left = 363
            Top = 106
            Width = 104
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'DataAtivo'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 9
          end
          object DBEdtDtVotante: TDBDateEdit
            Left = 473
            Top = 106
            Width = 112
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'Votante'
            DataSource = DSMembros
            ButtonWidth = 16
            NumGlyphs = 2
            TabOrder = 10
          end
          object DBEdtNumVezes: TDBEdit
            Left = 588
            Top = 106
            Width = 84
            Height = 21
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            DataField = 'NumVezes'
            DataSource = DSMembros
            TabOrder = 11
          end
          object DBEdtEnvelope: TDBEdit
            Left = 678
            Top = 106
            Width = 65
            Height = 21
            DataField = 'Envelope'
            DataSource = DSMembros
            TabOrder = 12
            OnKeyDown = DBEdtEnvelopeKeyDown
          end
          object DBCkBxVotante: TDBCheckBox
            Left = 8
            Top = 131
            Width = 74
            Height = 18
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'Filiado'
            DataField = 'Filiado'
            DataSource = DSMembros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object TbsDatasEspeciais: TTabSheet
        Caption = 'Datas Especiais / Filhos'
        Enabled = False
        ImageIndex = 3
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 757
          Height = 378
          Align = alClient
          Color = clInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Panel11: TPanel
            Left = 1
            Top = 193
            Width = 755
            Height = 184
            Align = alClient
            TabOrder = 0
            object Panel14: TPanel
              Left = 1
              Top = 1
              Width = 753
              Height = 28
              Align = alTop
              Caption = 'FILHOS'
              Color = clHotLight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object ToolBar2: TToolBar
              Left = 1
              Top = 29
              Width = 753
              Height = 28
              ButtonHeight = 25
              Caption = 'ToolBar1'
              Color = clBtnFace
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ParentColor = False
              TabOrder = 1
              object BtnAdicionaFilho: TBitBtn
                Left = 0
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 0
                OnClick = BtnAdicionaFilhoClick
              end
              object BtnEditaFilho: TBitBtn
                Left = 75
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 1
                OnClick = BtnEditaFilhoClick
              end
              object BtnExcluiFilho: TBitBtn
                Left = 150
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 2
                OnClick = BtnExcluiFilhoClick
              end
            end
            object DBGrid2: TDBGrid
              Left = 1
              Top = 57
              Width = 753
              Height = 126
              Align = alClient
              DataSource = DSFilhos
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = BtnEditaFilhoClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NomeFilho'
                  Title.Caption = 'Nome'
                  Width = 500
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DataNasc'
                  Title.Caption = 'Data de Nascimento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MembroComunidade'
                  Title.Caption = 'Membro da Comunidade'
                  Visible = True
                end>
            end
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 755
            Height = 192
            Align = alTop
            TabOrder = 1
            object Panel13: TPanel
              Left = 1
              Top = 1
              Width = 753
              Height = 28
              Align = alTop
              Caption = 'DATAS ESPECIAIS'
              Color = clHotLight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object ToolBar1: TToolBar
              Left = 1
              Top = 29
              Width = 753
              Height = 28
              ButtonHeight = 25
              Caption = 'ToolBar1'
              Color = clBtnFace
              EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
              ParentColor = False
              TabOrder = 1
              object BtnAdicionarDataEspecial: TBitBtn
                Left = 0
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 0
                OnClick = BtnAdicionarDataEspecialClick
              end
              object BtnEditarDataEspecial: TBitBtn
                Left = 75
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 1
                OnClick = BtnEditarDataEspecialClick
              end
              object BtnExcluirDataEspecial: TBitBtn
                Left = 150
                Top = 0
                Width = 75
                Height = 25
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
                TabOrder = 2
                OnClick = BtnExcluirDataEspecialClick
              end
            end
            object DBGrid1: TDBGrid
              Left = 1
              Top = 57
              Width = 753
              Height = 134
              Align = alClient
              DataSource = DSDataEspecial
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = BtnEditarDataEspecialClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DescDataEsp'
                  Title.Caption = 'Data Especial'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MunicipioDTEsp'
                  Title.Caption = 'Cidade'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UFDTEsp'
                  Title.Caption = 'UF'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Igreja'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Oficiante'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha1'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha2'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha3'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha4'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha5'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha6'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha7'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha8'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Testemunha9'
                  Width = 200
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 556
    Top = 4
  end
  object PpMnEmail: TPopupMenu
    Left = 24
    object Atualizado1: TMenuItem
      Caption = 'Atualizado'
      Checked = True
      OnClick = Atualizado1Click
    end
    object Desatualizado1: TMenuItem
      Caption = 'Desatualizado'
      OnClick = Desatualizado1Click
    end
  end
  object PpMnFone: TPopupMenu
    Left = 80
    object MenuItem1: TMenuItem
      Caption = 'Atualizado'
      Checked = True
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Desatualizado'
      OnClick = MenuItem2Click
    end
  end
  object PpMnCelular: TPopupMenu
    Left = 140
    object MenuItem3: TMenuItem
      Caption = 'Atualizado'
      Checked = True
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Desatualizado'
      OnClick = MenuItem4Click
    end
  end
  object PpMnEndereco: TPopupMenu
    Left = 208
    object MenuItem5: TMenuItem
      Caption = 'Atualizado'
      Checked = True
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Desatualizado'
      OnClick = MenuItem6Click
    end
  end
  object PpMnFoto: TPopupMenu
    Left = 496
    Top = 4
    object SelecionardoArquivo1: TMenuItem
      Caption = 'Selecionar do Arquivo...'
      OnClick = SelecionardoArquivo1Click
    end
    object CapturardaWebcam1: TMenuItem
      Caption = 'Capturar da Webcam'
      OnClick = CapturardaWebcam1Click
    end
  end
  object QryMembros: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO Membros'
      
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
        'Antigo, ChefeFamilia)'
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
        'ntigo, :ChefeFamilia)')
    SQLDelete.Strings = (
      'DELETE FROM Membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro')
    SQLUpdate.Strings = (
      'UPDATE Membros'
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
        'roAntigo, ChefeFamilia = :ChefeFamilia'
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
        'mbroAntigo, ChefeFamilia FROM Membros'
      'WHERE'
      '  CodMembro = :CodMembro')
    SQLLock.Strings = (
      'SELECT * FROM Membros'
      'WHERE'
      '  CodMembro = :Old_CodMembro'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select M.*,'
      '       P.NomeProfissao as profissao,'
      '       F.Sobrenome as Familia,'
      '       U.NomeUsuario as Usuario,'
      '       E.NomeEscolaridade as Escolaridade,'
      '       EC.NomeEstadoCivil as EstadoCivil,'
      '       FA.NomeFormaAdmissao as FormaAdmissao,'
      '       MS.NomeMotivoSaida as MotivoSaida'
      
        'from Membros M LEFT JOIN Profissao P ON M.CodProfissao = P.CodPr' +
        'ofissao'
      
        '               LEFT JOIN Familia F ON M.CodFamilia = F.CodFamili' +
        'a'
      
        '               LEFT JOIN Usuario U ON M.CodUsuario = U.CodUsuari' +
        'o'
      
        '               LEFT JOIN Escolaridade E ON M.codescolaridade = E' +
        '.CodEscolaridade'
      
        '               LEFT JOIN EstadoCivil EC ON M.codestadocivil = EC' +
        '.codestadocivil'
      
        '               LEFT JOIN FormaAdmissao FA ON M.CodFormaAdmissao ' +
        '= FA.CodFormaAdmissao'
      
        '               LEFT JOIN MotivoSaida MS ON M.CodMotivoSaida = MS' +
        '.CodMotivoSaida'
      'where isnull(M.codMotivoSaida)')
    Left = 640
    Top = 4
    object QryMembrosCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryMembrosCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryMembrosCodTipoMembro: TLargeintField
      FieldName = 'CodTipoMembro'
    end
    object QryMembrosNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Size = 255
    end
    object QryMembrosNomeSolteiro: TStringField
      FieldName = 'NomeSolteiro'
      Size = 255
    end
    object QryMembrosSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryMembrosEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryMembrosTipoSangue: TStringField
      FieldName = 'TipoSangue'
      Size = 45
    end
    object QryMembrosCelular: TStringField
      FieldName = 'Celular'
    end
    object QryMembrosCodEscolaridade: TLargeintField
      FieldName = 'CodEscolaridade'
    end
    object QryMembrosPai: TStringField
      FieldName = 'Pai'
      Size = 255
    end
    object QryMembrosPaiCELC: TStringField
      FieldName = 'PaiCELC'
      FixedChar = True
      Size = 10
    end
    object QryMembrosMae: TStringField
      FieldName = 'Mae'
      Size = 255
    end
    object QryMembrosMaeCELC: TStringField
      FieldName = 'MaeCELC'
      FixedChar = True
      Size = 10
    end
    object QryMembrosDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryMembrosNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 255
    end
    object QryMembrosCodEstadoCivil: TLargeintField
      FieldName = 'CodEstadoCivil'
    end
    object QryMembrosNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Size = 255
    end
    object QryMembrosDataNascConj: TDateField
      FieldName = 'DataNascConj'
    end
    object QryMembrosConjugeFiliado: TStringField
      FieldName = 'ConjugeFiliado'
      FixedChar = True
      Size = 10
    end
    object QryMembrosReligiaoConjuge: TStringField
      FieldName = 'ReligiaoConjuge'
      Size = 255
    end
    object QryMembrosCodProfissao: TLargeintField
      FieldName = 'CodProfissao'
    end
    object QryMembrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 255
    end
    object QryMembrosCEPEmpresa: TStringField
      FieldName = 'CEPEmpresa'
      EditMask = '99999-999;0;'
      Size = 15
    end
    object QryMembrosUFEmpresa: TStringField
      FieldName = 'UFEmpresa'
      FixedChar = True
      Size = 2
    end
    object QryMembrosDDDEmpresa: TStringField
      FieldName = 'DDDEmpresa'
      FixedChar = True
      Size = 10
    end
    object QryMembrosFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      FixedChar = True
    end
    object QryMembrosEmailEmpresa: TStringField
      FieldName = 'EmailEmpresa'
      Size = 255
    end
    object QryMembrosCargo: TStringField
      FieldName = 'Cargo'
      Size = 150
    end
    object QryMembrosRenda: TFloatField
      FieldName = 'Renda'
    end
    object QryMembrosDataAdmisComunidade: TDateTimeField
      FieldName = 'DataAdmisComunidade'
    end
    object QryMembrosCodFormaAdmissao: TLargeintField
      FieldName = 'CodFormaAdmissao'
    end
    object QryMembrosProcedenciaAdmissao: TStringField
      FieldName = 'ProcedenciaAdmissao'
      Size = 255
    end
    object QryMembrosEnvelope: TLargeintField
      FieldName = 'Envelope'
    end
    object QryMembrosDataSaida: TDateField
      FieldName = 'DataSaida'
    end
    object QryMembrosCodMotivoSaida: TLargeintField
      FieldName = 'CodMotivoSaida'
    end
    object QryMembrosDestinoSaida: TStringField
      FieldName = 'DestinoSaida'
      Size = 255
    end
    object QryMembrosFotoCaminho: TStringField
      FieldName = 'FotoCaminho'
      Size = 255
    end
    object QryMembrosRG: TStringField
      FieldName = 'RG'
    end
    object QryMembrosCPF: TStringField
      FieldName = 'CPF'
      Size = 40
    end
    object QryMembrosCodUsuario: TLargeintField
      FieldName = 'CodUsuario'
    end
    object QryMembrosDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object QryMembrosDataConfirmacao: TDateField
      FieldName = 'DataConfirmacao'
    end
    object QryMembrosDataBatismo: TDateField
      FieldName = 'DataBatismo'
    end
    object QryMembrosFiliado: TStringField
      FieldName = 'Filiado'
      FixedChar = True
      Size = 10
    end
    object QryMembrosDataAtivo: TDateTimeField
      FieldName = 'DataAtivo'
    end
    object QryMembrosNumVezes: TLargeintField
      FieldName = 'NumVezes'
    end
    object QryMembrosVotante: TDateTimeField
      FieldName = 'Votante'
    end
    object QryMembrosCidadeEmpresa: TStringField
      FieldName = 'CidadeEmpresa'
      Size = 200
    end
    object QryMembrosEnderecoEmpresa: TStringField
      FieldName = 'EnderecoEmpresa'
      Size = 250
    end
    object QryMembrosComplEmpresa: TStringField
      FieldName = 'ComplEmpresa'
      Size = 45
    end
    object QryMembrosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 250
    end
    object QryMembrosCompl: TStringField
      FieldName = 'Compl'
      Size = 150
    end
    object QryMembrosCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryMembrosBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryMembrosCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;0;'
      FixedChar = True
      Size = 12
    end
    object QryMembrosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryMembrosTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
    end
    object QryMembrosEnderecoDesatualizado: TBooleanField
      FieldName = 'EnderecoDesatualizado'
    end
    object QryMembrosTelefoneDesatualizado: TBooleanField
      FieldName = 'TelefoneDesatualizado'
    end
    object QryMembrosCelularDesatualizado: TBooleanField
      FieldName = 'CelularDesatualizado'
    end
    object QryMembrosEmailDesatualizado: TBooleanField
      FieldName = 'EmailDesatualizado'
    end
    object QryMembrosCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
    object QryMembrosprofissao: TStringField
      FieldName = 'profissao'
      Size = 255
    end
    object QryMembrosFamilia: TStringField
      FieldName = 'Familia'
      Size = 255
    end
    object QryMembrosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 45
    end
    object QryMembrosEscolaridade: TStringField
      FieldName = 'Escolaridade'
      Size = 100
    end
    object QryMembrosEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 100
    end
    object QryMembrosFormaAdmissao: TStringField
      FieldName = 'FormaAdmissao'
      Size = 150
    end
    object QryMembrosMotivoSaida: TStringField
      FieldName = 'MotivoSaida'
      Size = 150
    end
    object QryMembrosChefeFamilia: TBooleanField
      FieldName = 'ChefeFamilia'
    end
  end
  object DSMembros: TDataSource
    DataSet = QryMembros
    Left = 716
    Top = 4
  end
  object QryLkpEscolaridade: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from Escolaridade'
      'Order by NomeEscolaridade')
    Left = 36
    Top = 448
    object QryLkpEscolaridadeCodEscolaridade: TLargeintField
      FieldName = 'CodEscolaridade'
    end
    object QryLkpEscolaridadeNomeEscolaridade: TStringField
      FieldName = 'NomeEscolaridade'
      Size = 100
    end
  end
  object DSLkpEscolaridade: TDataSource
    DataSet = QryLkpEscolaridade
    Left = 36
    Top = 460
  end
  object QryLkpEstadoCivil: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from EstadoCivil'
      'Order by NomeEstadoCivil')
    Left = 132
    Top = 444
    object QryLkpEstadoCivilCodEstadoCivil: TLargeintField
      FieldName = 'CodEstadoCivil'
    end
    object QryLkpEstadoCivilNomeEstadoCivil: TStringField
      FieldName = 'NomeEstadoCivil'
      Size = 100
    end
  end
  object DSLkpEstadoCivil: TDataSource
    DataSet = QryLkpEstadoCivil
    Left = 132
    Top = 460
  end
  object DSLkpFamilia: TDataSource
    DataSet = QryLkpFamilia
    Left = 312
    Top = 460
  end
  object QryLkpFamilia: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'Select concat(Sobrenome,'#39' - '#39',CodFamilia) as FamiliaCodigo, CodF' +
        'amilia, Sobrenome, Endereco, cep, compl, bairro, cidade, uf, tel' +
        'efone, celular, Email'
      'From Familia'
      'Order by FamiliaCodigo')
    Left = 312
    Top = 444
    object QryLkpFamiliaCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryLkpFamiliaSobrenome: TStringField
      FieldName = 'Sobrenome'
      Size = 255
    end
    object QryLkpFamiliaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object QryLkpFamiliacep: TStringField
      FieldName = 'cep'
      FixedChar = True
      Size = 8
    end
    object QryLkpFamiliacompl: TStringField
      FieldName = 'compl'
      Size = 255
    end
    object QryLkpFamiliabairro: TStringField
      FieldName = 'bairro'
      Size = 150
    end
    object QryLkpFamiliacidade: TStringField
      FieldName = 'cidade'
      Size = 150
    end
    object QryLkpFamiliauf: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object QryLkpFamiliatelefone: TStringField
      FieldName = 'telefone'
      Size = 45
    end
    object QryLkpFamiliacelular: TStringField
      FieldName = 'celular'
      FixedChar = True
      Size = 45
    end
    object QryLkpFamiliaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryLkpFamiliaFamiliaCodigo: TStringField
      FieldName = 'FamiliaCodigo'
      Size = 269
    end
  end
  object DSLkpProfissao: TDataSource
    DataSet = QryLkpProfissao
    Left = 224
    Top = 460
  end
  object QryLkpProfissao: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from Profissao'
      'order by NomeProfissao')
    Left = 224
    Top = 444
    object QryLkpProfissaoCodProfissao: TLargeintField
      FieldName = 'CodProfissao'
    end
    object QryLkpProfissaoNomeProfissao: TStringField
      FieldName = 'NomeProfissao'
      Size = 255
    end
  end
  object QryLkpFormaAdmissao: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from FormaAdmissao'
      'Order by NomeFormaAdmissao')
    Left = 404
    Top = 444
    object QryLkpFormaAdmissaoCodFormaAdmissao: TLargeintField
      FieldName = 'CodFormaAdmissao'
      Origin = 'formaadmissao.CodFormaAdmissao'
    end
    object QryLkpFormaAdmissaoNomeFormaAdmissao: TStringField
      FieldName = 'NomeFormaAdmissao'
      Origin = 'formaadmissao.NomeFormaAdmissao'
      Size = 150
    end
  end
  object QryLkpMotivoSaida: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from motivosaida'
      'order by nomemotivosaida')
    Left = 508
    Top = 444
    object QryLkpMotivoSaidaCodMotivoSaida: TLargeintField
      FieldName = 'CodMotivoSaida'
    end
    object QryLkpMotivoSaidaNomeMotivoSaida: TStringField
      FieldName = 'NomeMotivoSaida'
      Size = 150
    end
  end
  object DSLkpFormaAdmissao: TDataSource
    DataSet = QryLkpFormaAdmissao
    Left = 404
    Top = 460
  end
  object DSLkpMotivoSaida: TDataSource
    DataSet = QryLkpMotivoSaida
    Left = 508
    Top = 460
  end
  object QryDataEspecial: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO membrodataespec'
      
        '  (CodAcontec, CodMembroAntigo, CodFamilia, Data, UFDTEsp, Munic' +
        'ipioDTEsp, Igreja, Oficiante, Testemunha1, Testemunha2, Testemun' +
        'ha3, Testemunha4, Testemunha5, Testemunha6, Testemunha7, Testemu' +
        'nha8, Testemunha9, CodMembro)'
      'VALUES'
      
        '  (:CodAcontec, :CodMembroAntigo, :CodFamilia, :Data, :UFDTEsp, ' +
        ':MunicipioDTEsp, :Igreja, :Oficiante, :Testemunha1, :Testemunha2' +
        ', :Testemunha3, :Testemunha4, :Testemunha5, :Testemunha6, :Teste' +
        'munha7, :Testemunha8, :Testemunha9, :CodMembro)')
    SQLDelete.Strings = (
      'DELETE FROM membrodataespec'
      'WHERE'
      
        '  CodAcontec = :Old_CodAcontec AND CodMembroAntigo = :Old_CodMem' +
        'broAntigo AND CodFamilia = :Old_CodFamilia AND CodMembro = :Old_' +
        'CodMembro')
    SQLUpdate.Strings = (
      'UPDATE membrodataespec'
      'SET'
      
        '  CodAcontec = :CodAcontec, CodMembroAntigo = :CodMembroAntigo, ' +
        'CodFamilia = :CodFamilia, Data = :Data, UFDTEsp = :UFDTEsp, Muni' +
        'cipioDTEsp = :MunicipioDTEsp, Igreja = :Igreja, Oficiante = :Ofi' +
        'ciante, Testemunha1 = :Testemunha1, Testemunha2 = :Testemunha2, ' +
        'Testemunha3 = :Testemunha3, Testemunha4 = :Testemunha4, Testemun' +
        'ha5 = :Testemunha5, Testemunha6 = :Testemunha6, Testemunha7 = :T' +
        'estemunha7, Testemunha8 = :Testemunha8, Testemunha9 = :Testemunh' +
        'a9, CodMembro = :CodMembro'
      'WHERE'
      
        '  CodAcontec = :Old_CodAcontec AND CodMembroAntigo = :Old_CodMem' +
        'broAntigo AND CodFamilia = :Old_CodFamilia AND CodMembro = :Old_' +
        'CodMembro')
    SQLRefresh.Strings = (
      
        'SELECT CodAcontec, CodMembroAntigo, CodFamilia, Data, UFDTEsp, M' +
        'unicipioDTEsp, Igreja, Oficiante, Testemunha1, Testemunha2, Test' +
        'emunha3, Testemunha4, Testemunha5, Testemunha6, Testemunha7, Tes' +
        'temunha8, Testemunha9, CodMembro FROM membrodataespec'
      'WHERE'
      
        '  CodAcontec = :CodAcontec AND CodMembroAntigo = :CodMembroAntig' +
        'o AND CodFamilia = :CodFamilia AND CodMembro = :CodMembro')
    SQLLock.Strings = (
      'SELECT * FROM membrodataespec'
      'WHERE'
      
        '  CodAcontec = :Old_CodAcontec AND CodMembroAntigo = :Old_CodMem' +
        'broAntigo AND CodFamilia = :Old_CodFamilia AND CodMembro = :Old_' +
        'CodMembro'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT mde.*, DE.DescDataEsp'
      
        'FROM membrodataespec MDE left join DataEspecial DE on MDE.CodAco' +
        'ntec=DE.CodDataEsp'
      'where CodMembro = :pCodMembro')
    Left = 520
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodMembro'
      end>
    object QryDataEspecialDescDataEsp: TStringField
      FieldName = 'DescDataEsp'
      Origin = 'DE.DescDataEsp'
      Size = 255
    end
    object QryDataEspecialData: TDateField
      FieldName = 'Data'
      Origin = 'MDE.Data'
    end
    object QryDataEspecialUFDTEsp: TStringField
      FieldName = 'UFDTEsp'
      Origin = 'MDE.UFDTEsp'
      FixedChar = True
      Size = 2
    end
    object QryDataEspecialMunicipioDTEsp: TStringField
      FieldName = 'MunicipioDTEsp'
      Origin = 'MDE.MunicipioDTEsp'
      Size = 255
    end
    object QryDataEspecialIgreja: TStringField
      FieldName = 'Igreja'
      Origin = 'MDE.Igreja'
      Size = 255
    end
    object QryDataEspecialOficiante: TStringField
      FieldName = 'Oficiante'
      Origin = 'MDE.Oficiante'
      Size = 255
    end
    object QryDataEspecialTestemunha1: TStringField
      FieldName = 'Testemunha1'
      Origin = 'MDE.Testemunha1'
      Size = 255
    end
    object QryDataEspecialTestemunha2: TStringField
      FieldName = 'Testemunha2'
      Origin = 'MDE.Testemunha2'
      Size = 255
    end
    object QryDataEspecialTestemunha3: TStringField
      FieldName = 'Testemunha3'
      Origin = 'MDE.Testemunha3'
      Size = 255
    end
    object QryDataEspecialTestemunha4: TStringField
      FieldName = 'Testemunha4'
      Origin = 'MDE.Testemunha4'
      Size = 255
    end
    object QryDataEspecialTestemunha5: TStringField
      FieldName = 'Testemunha5'
      Origin = 'MDE.Testemunha5'
      Size = 255
    end
    object QryDataEspecialTestemunha6: TStringField
      FieldName = 'Testemunha6'
      Origin = 'MDE.Testemunha6'
      Size = 255
    end
    object QryDataEspecialTestemunha7: TStringField
      FieldName = 'Testemunha7'
      Origin = 'MDE.Testemunha7'
      Size = 255
    end
    object QryDataEspecialTestemunha8: TStringField
      FieldName = 'Testemunha8'
      Origin = 'MDE.Testemunha8'
      Size = 255
    end
    object QryDataEspecialTestemunha9: TStringField
      FieldName = 'Testemunha9'
      Origin = 'MDE.Testemunha9'
      Size = 255
    end
    object QryDataEspecialCodAcontec: TLargeintField
      FieldName = 'CodAcontec'
      Origin = 'MDE.CodAcontec'
    end
    object QryDataEspecialCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
      Origin = 'MDE.CodMembroAntigo'
    end
    object QryDataEspecialCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'MDE.CodFamilia'
    end
    object QryDataEspecialCodMembro: TLargeintField
      FieldName = 'CodMembro'
      Origin = 'MDE.CodMembro'
    end
  end
  object QryFilhos: TMyQuery
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
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'SELECT *, (case indcomunidade when 0 then '#39'N'#195'O'#39' when 1 then '#39'SIM' +
        #39' end) AS MembroComunidade'
      'FROM filho'
      'where CodMembro = :pCodmembro')
    Left = 708
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCodmembro'
      end>
    object QryFilhosCodFilho: TLargeintField
      FieldName = 'CodFilho'
    end
    object QryFilhosCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
    object QryFilhosCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryFilhosNomeFilho: TStringField
      FieldName = 'NomeFilho'
      Size = 255
    end
    object QryFilhosDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryFilhosIndComunidade: TLargeintField
      FieldName = 'IndComunidade'
    end
    object QryFilhosCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryFilhosMembroComunidade: TStringField
      FieldName = 'MembroComunidade'
      Size = 3
    end
  end
  object DSDataEspecial: TDataSource
    DataSet = QryDataEspecial
    Left = 520
    Top = 92
  end
  object DSFilhos: TDataSource
    DataSet = QryFilhos
    Left = 708
    Top = 324
  end
  object QryRetornaCodMembro: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select max(codMembroAntigo) as MembroAntigo'
      'from Membros'
      'where codfamilia = :pCodFamilia')
    Left = 408
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodFamilia'
      end>
    object QryRetornaCodMembroMembroAntigo: TLargeintField
      FieldName = 'MembroAntigo'
    end
  end
  object QryLkpTipoMembro: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT * FROM tipomembro t;')
    Left = 652
    Top = 348
    object QryLkpTipoMembroCodTipoMembro: TLargeintField
      FieldName = 'CodTipoMembro'
      Origin = 't.CodTipoMembro'
    end
    object QryLkpTipoMembroNomeTipoMembro: TStringField
      FieldName = 'NomeTipoMembro'
      Origin = 't.NomeTipoMembro'
      Size = 150
    end
  end
  object DSLkpTipoMembro: TDataSource
    DataSet = QryLkpTipoMembro
    Left = 652
    Top = 392
  end
end
