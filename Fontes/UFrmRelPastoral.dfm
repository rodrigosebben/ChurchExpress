object FormRelPastoral: TFormRelPastoral
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'RELAT'#211'RIO DE PAGAMENTOS - CEMIT'#201'RIO'
  ClientHeight = 204
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 41
    Align = alTop
    Caption = 'RELAT'#211'RIO PASTORAL'
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
    Top = 155
    Width = 459
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnImprimir: TBitBtn
      Left = 193
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Imprimir'
      Default = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00C89561FDCA9865FFCA9765FFCA9765FFCA9765FFCA9764FFC997
        64FFC99764FFCA9865FFC89461FDFFFFFF00FFFFFF00FFFFFF00636363995D5D
        5DD2585858FFC79561FFF9F7F6FFF9F1ECFFF9F1EBFFF8F0E9FFF7EDE6FFF4EA
        E1FFF2E8DEFFFAF8F6FFC79461FF242424FF232323D12323237A6A6A6AFDA7A7
        A7FFB5B5B5FF818181FFAFACAAFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0
        BDFFC5C0BDFFADAAA8FF2C2C2CFFB5B5B5FF9B9B9BFF232323FF707070FFB5B5
        B5FFB5B5B5FF959595FF818181FF818181FF797979FF6E6E6EFF616161FF5252
        52FF434343FF424242FF6E6E6EFFB5B5B5FFB5B5B5FF252525FF757575FFBBBB
        BBFFBBBBBBFF8D8D8DFFD4D4D4FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
        B9FFB9B9B9FFD3D3D3FF838383FFBBBBBBFFBBBBBBFF2A2A2AFF7A7A7AFFD7D7
        D7FFD7D7D7FF979797FFD8D8D8FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
        BFFFBFBFBFFFD7D7D7FF8E8E8EFFD7D7D7FFD7D7D7FF3F3F3FFF7E7E7EFFF9F9
        F9FFF9F9F9FFABABABFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
        CBFFCBCBCBFFDFDFDFFFA3A3A3FFF9F9F9FFF9F9F9FF616161FF818181F9FCFC
        FCFFFCFCFCFFCBCBCBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFF2F2F2FFC6C6C6FFFCFCFCFFFCFCFCFF707070FE818181D2D2D2
        D2FFE8E8E8FF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
        7DFF7D7D7DFF7D7D7DFF7D7D7DFFE8E8E8FFC4C4C4FF565656DC818181459A9A
        9AFFCCCCCCFFC78B4EFFF9F4EDFFFEE8D8FFFEE8D7FFFDE5D3FFFCE4D1FFFAE0
        C7FFF9DDC3FFFAF4EDFFC7854AFFC3C3C3FF747474FF47474745FFFFFF008181
        8163818181F3C5894CFFF9F4EFFFFEE7D7FFFDE7D5FFFCE6D2FFFBE1CCFFF8DC
        C2FFF6DABDFFFAF4EFFFC48348FF595959F353535363FFFFFF00FFFFFF00FFFF
        FF0081818109C5894BF9F9F4F0FFFCE6D3FFFDE7D3FFFBE3CDFFFAE0C8FFF5D6
        BBFFF3D4B5FFF8F4F0FFC38246F960606009FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C6894BF7F9F5F1FFFCE3CFFFFCE4CFFFFAE1CAFFF9DDC4FFF4E9
        DFFFF7F2ECFFF5EFE9FFC27E45FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C6894CF6F9F5F1FFFCE3CDFFFBE3CDFFF9E0C8FFF8DCC2FFFDFB
        F8FFFCE6CDFFE2B684FFBF7942A6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C48649FAF7F2ECFFF8F4EEFFF8F3EDFFF8F3EDFFF8F2ECFFF2E6
        D7FFE2B27DFFDA9163F6B46B3E07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C17D4460C88B4DBBC88C4FFEC88C4FFFC88D4FF7C98C4FF7C589
        4CFEC4763B94FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Layout = blGlyphTop
      TabOrder = 0
      OnClick = BtnImprimirClick
    end
    object BtnCancelar: TBitBtn
      Left = 274
      Top = 6
      Width = 75
      Height = 41
      Caption = 'Sai&r'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D63
        9B1619609839145D9562105A92880D5890A4135C92FC0C578FED999999FF7171
        71FF545454FF515151FF4F4F4FFF4C4C4CFF4A4A4AFF474747FF454545FF2567
        9DFF3274A8FF3D7CAFFF4784B5FF4E8ABAFF3E7EADFF0C578FEAFFFFFF00FFFF
        FF00585858FFA2A2A2FFA2A2A2FFA3A3A3FFA4A4A4FFA4A4A4FFA5A5A5FF2F6F
        A5FF78ABD2FF78ABD3FF73A7D1FF69A0CDFF407FAEFF0F5991EAFFFFFF00FFFF
        FF005C5C5CFFA1A1A1FF3C7340FFA0A1A1FFA3A3A3FFA3A3A3FFA4A4A4FF3674
        AAFF7DAFD4FF5B9AC9FF5495C7FF5896C8FF4180AEFF135C94EAFFFFFF00FFFF
        FF00606060FFA0A0A0FF3D7641FF367139FFA2A2A2FFA2A2A2FFA3A3A3FF3D79
        B0FF82B3D7FF629FCCFF5A9AC9FF5E9BCAFF4381AFFF196098EA37823EFF347E
        3BFF317937FF2E7534FF499150FF468F4CFF39733DFFA1A1A1FFA2A2A2FF457E
        B4FF88B7D9FF67A3CFFF619ECCFF639FCCFF4583B1FF1F649CEA3B8742FF89CB
        92FF84C88DFF80C688FF7BC383FF77C17FFF478F4DFF3B743FFFA1A1A1FF4C84
        BAFF8DBBDBFF6EA8D1FF66A6D1FF5FB4DFFF4785B1FF2569A1EA3E8B46FF8FCE
        99FF7DC687FF78C381FF73C07CFF74C07CFF79C281FF49904FFF547F57FF5489
        BFFF94BFDDFF75ADD4FF63B8E1FF4BD4FFFF428BB8FF2C6EA6EA41904AFF94D2
        9FFF91D09AFF8DCD96FF89CB92FF84C88DFF519858FF417C46FF9F9F9FFF5A8E
        C4FF98C3E0FF7CB3D7FF74AFD6FF5EC4EDFF4B88B3FF3473ABEA44944DFF4291
        4BFF3F8D48FF3D8945FF5DA465FF5AA061FF45834BFF9E9E9EFF9E9E9EFF6092
        C9FF9EC7E2FF83B8DAFF7DB4D7FF7EB3D7FF4F89B4FF3B79B1EAFFFFFF00FFFF
        FF00777777FF9A9A9AFF3D8A45FF498A4FFF9C9C9CFF9D9D9DFF9D9D9DFF6696
        CCFFA2CBE3FF89BDDCFF83B9DAFF84B9DAFF518BB5FF437EB6EAFFFFFF00FFFF
        FF007A7A7AFF999999FF529159FF999A99FF9B9B9BFF9C9C9CFF9C9C9CFF6C9A
        D0FFA7CEE5FF8FC1DFFF89BDDCFF8BBDDCFF538DB6FF4B84BCEAFFFFFF00FFFF
        FF007D7D7DFF999999FF999999FF9A9A9AFF9A9A9AFF9B9B9BFF9B9B9BFF6F9D
        D3FFAAD1E7FFABD1E7FF98C7E1FF91C2DEFF568FB7FF5289C1EAFFFFFF00FFFF
        FF00808080FF7E7E7EFF7C7C7CFF7A7A7AFF777777FF757575FF727272FF719E
        D4FF6F9ED6FF87B2DCFFABD3E8FFA9D0E6FF5890B8FF598EC6EAFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00709ED6DB6D9CD4FF85B1DAFF5A91B9FF6093CBEAFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF006D9CD4896A9AD2FB6697CFEE}
      Layout = blGlyphTop
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
    object BtnGerarPDF: TBitBtn
      Left = 112
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Gera PDF'
      Default = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFDFDF7
        ABABC26A6AAB6968AA6868AD67679F67679967679A67679A67679A67679A6767
        9A9696A8EFEFE7FFFFFFFFFFFE7B7BC10000B80201C90201CE0000B600009700
        009600009600009700009700009701019800008C5A5A8FF1F1E9CBCCE60606C6
        0707D70505D20000B9090A9E090AA2090AA2090AA2090AA2090AA2090AA20A0A
        A20707A60000939999AD9D9DE90202D30303D36566E18180CC0302A00C0AA40B
        0AA40908A30807A30A09A30B0BA40A09A40B09A400009E6D6DA79E9EEE0203D7
        0000D88182E7FFFFFF6766C600009B0303A20202A30A09A60303A200009F0303
        A20B0AA20000B26F6FBE9E9EF00000D90D0EDB0606D96666E8DADAF48E90D453
        53BC2627AE0000A43031B4A1A1DE6565C30000B00403DB7172C39E9EF20101DD
        0F0FDF100FDF0000DA8181ED9191F27777ED9999EBC8C9EAE4E5F3EDEDF87E7E
        DE0102DA0505E07475C59FA0F30102E10E0FE20E0FE20304E14444E78888EC00
        00DB8585F19899DB1817AE1A1ABE0708DF0E0FE30304E17777C9A3A2F50403E4
        100FE50F0EE50B0AE51C1BE69999F18A8AF39192D60000A50606BB0A0AE40F0E
        E6100FE40504E57B7ACBA6A5F70405E81011E90E0FE91112E90000E7B2B2F7AC
        ACDF0000A80F0EC01010EA0F10EB0F0FE81011E90606E97E7ECEA8A8F80707EB
        1212EC1111EC0C0CEC1C1CECE1E2FB393ABC0102BF1312ED1010ED1010EB1010
        EC1111EB0707EB8182D0A9A9F90807EF1312F01514F00100EF6F70F3F4F4F838
        39D20706EC1312F11110EF1110F01110F01210EF0A08F08485D3B0B0FB0A08F2
        1614F31513F30907F34B4BF49494F31515F2110FF31210F21210F21210F21210
        F21513F20B09F38D8CD5E8E8FD2524F30503F31412F31412F30B09F30503F312
        10F31311F31311F31311F31311F31412F30806F61E1CEBCACADEFFFFFFBBBCFA
        2F2DF41311F31311F31412F31514F31211F31211F31210F31210F31210F31311
        F32A2AF0A8A8E4FFFFF9FEFEFFFFFFFFECECFDC3C3FBC0C0FBC0C0FBC0C0FBC0
        C0FBC0C0FBC0C0FCC0C0FCC0C0FCC1C1FAE5E5F5FFFFFBFEFEFF}
      Layout = blGlyphTop
      TabOrder = 2
      OnClick = BtnGerarPDFClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 459
    Height = 114
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 28
      Top = 6
      Width = 26
      Height = 13
      Caption = 'ANO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 219
      Top = 6
      Width = 99
      Height = 13
      Caption = 'TIPO DE MEMBRO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpdBtnBuscaFamilia: TSpeedButton
      Left = 397
      Top = 56
      Width = 25
      Height = 24
      Enabled = False
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
      OnClick = SpdBtnBuscaFamiliaClick
    end
    object Label1: TLabel
      Left = 28
      Top = 44
      Width = 55
      Height = 13
      Caption = 'FAM'#205'LIAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CbxAno: TComboBox
      Left = 28
      Top = 21
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'TODOS'
      Items.Strings = (
        'TODOS')
    end
    object CbxTipoMembro: TComboBox
      Left = 219
      Top = 21
      Width = 203
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'ATIVOS'
      Items.Strings = (
        'TODOS'
        'ATIVOS'
        'N'#195'O ATIVOS')
    end
    object EdtNomeFamilia: TEdit
      Left = 219
      Top = 56
      Width = 178
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 162
      Width = 777
      Height = 180
      DataSource = DMRelPastoral.DSRelPastoral
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodFamilia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodMembroAntigo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodMembro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Familia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Membro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodMotivoSaida'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Area'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grupo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataUltVisita'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JaneiroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JaneiroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FevereiroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FevereiroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MarcoContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MarcoCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AbrilContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AbrilCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MaioContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MaioCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JunhoContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JunhoCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JulhoContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JulhoCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AgostoContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AgostoCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SetembroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SetembroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutubroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OutubroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NovembroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NovembroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DezembroContrib'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DezembroCeia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeTipoMembro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataNasc'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Envelope'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TelefoneMembro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ano'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FamiliaCodigo'
          Width = 100
          Visible = True
        end>
    end
    object ProgressBar1: TProgressBar
      Left = 0
      Top = 86
      Width = 459
      Height = 28
      TabOrder = 5
    end
    object CbxFamilia: TComboBox
      Left = 28
      Top = 59
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'TODAS'
      OnChange = CbxFamiliaChange
      Items.Strings = (
        'TODAS'
        'SELECIONAR')
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 20
    Top = 8
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 84
    Top = 4
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 84
    Top = 4
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 64
    Top = 4
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 76
    Top = 4
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 68
    Top = 8
  end
  object RelPastoral: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41954.648515717600000000
    ReportOptions.LastChange = 41954.648515717600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 324
    Top = 124
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Geral'
        Value = Null
      end
      item
        Name = 'TotalFamilia'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ColumnHeader1: TfrxColumnHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROLE DE MEMBROS')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'COMUNIDADE EVANG'#201'LICA LUTERANA CRISTO')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 921.205320000000000000
          Top = 3.779530000000001000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA: [DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 907.087200000000000000
          Top = 22.677180000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PAGINA: [PAGE#] DE [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'RELAT'#211'RIO PASTORAL')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 94.488250000000000000
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."CodFamilia"'
        KeepTogether = True
        object frxDBDataset1Familia: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559059999999988000
          Width = 1028.032160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[frxDBDataset1."codfamilia"] - [frxDBDataset1."Familia"]        ' +
              '  ')
          ParentFont = False
        end
        object frxDBDataset1Endereco: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000010000
          Width = 1028.032160000000000000
          Height = 34.015770000000010000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Endere'#231'o: [frxDBDataset1."Endereco"]   Bairro: [frxDBDataset1."B' +
              'airro"]   Cidade: [frxDBDataset1."Cidade"]   UF: [frxDBDataset1.' +
              '"UF"]  CEP: [FormatMaskText('#39'00000-000;0;_'#39',<frxDBDataset1."CEP"' +
              '>)]   Telefone: [frxDBDataset1."Telefone"]   '
            
              'Email: [frxDBDataset1."Email"]   Area: [frxDBDataset1."Area"]   ' +
              'Grupo: [frxDBDataset1."Grupo"]   Ultima Visita: [frxDBDataset1."' +
              'DataUltVisita"]   Visitante: [frxDBDataset1."Visitante"]'
            '')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 15.118120000000000000
          Top = 71.811070000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Membro')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 320.039580000000000000
          Top = 71.811070000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 428.645950000000000000
          Top = 71.811070000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt Nasc')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 492.897960000000000000
          Top = 71.811070000000000000
          Width = 86.929189999999990000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 627.401980000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 661.417750000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FEV')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 695.433520000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MAR')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 729.449290000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'ABR')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 763.465060000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MAI')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 797.480830000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JUN')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 831.496600000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'JUL')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 865.512370000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'AGO')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 899.528140000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SET')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 933.543910000000000000
          Top = 71.811070000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OUT')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 967.559680000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NOV')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'DEZ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 1035.591220000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 582.047620000000000000
          Top = 71.811070000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ANO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CodMembroAntigo: TfrxMemoView
          Left = 15.118120000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CodMembroAntigo"] - [frxDBDataset1."Membro"]')
          ParentFont = False
        end
        object frxDBDataset1NomeTipoMembro: TfrxMemoView
          Left = 320.039580000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NomeTipoMembro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NomeTipoMembro"]')
          ParentFont = False
        end
        object frxDBDataset1Envelope: TfrxMemoView
          Left = 428.645950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DataNasc"]')
          ParentFont = False
        end
        object frxDBDataset1TelefoneMembro: TfrxMemoView
          Left = 492.897960000000000000
          Width = 86.929189999999990000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TelefoneMembro"]')
          ParentFont = False
        end
        object frxDBDataset1JaneiroContrib: TfrxMemoView
          Left = 627.401980000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."JaneiroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBD' +
              'ataset1."JaneiroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 661.417750000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."FevereiroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxD' +
              'BDataset1."FevereiroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 695.433520000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."MarcoContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBDat' +
              'aset1."MarcoCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 729.449290000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."AbrilContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBDat' +
              'aset1."AbrilCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 763.465060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."MaioContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBData' +
              'set1."MaioCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 797.480830000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."JunhoContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBDat' +
              'aset1."JunhoCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 831.496600000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."JulhoContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBDat' +
              'aset1."JulhoCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 865.512370000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."AgostoContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBDa' +
              'taset1."AgostoCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 899.528140000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."SetembroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDB' +
              'Dataset1."SetembroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 933.543910000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."OutubroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDBD' +
              'ataset1."OutubroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 967.559680000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."NovembroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDB' +
              'Dataset1."NovembroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 1001.575450000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."DezembroContrib"><>0,'#39'$'#39',NULL)] [IIF(<frxDB' +
              'Dataset1."DezembroCeia"><>0,'#39'O'#39',NULL)]')
          ParentFont = False
        end
        object frxDBDataset1Ano: TfrxMemoView
          Left = 584.047620000000000000
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'Ano'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Ano"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        object TotalFamilia: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'TOTAL DE FAM'#205'LIAS: [TotalFamilia]     /      TOTAL DE MEMBROS: [' +
              'COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DMRelPastoral.CDSRelPastoral
    BCDToCurrency = False
    Left = 384
    Top = 124
  end
end
