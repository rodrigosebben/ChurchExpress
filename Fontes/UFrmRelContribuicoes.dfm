object FormRelContribuicoes: TFormRelContribuicoes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'RELAT'#211'RIO DE CONTRIBUI'#199#213'ES'
  ClientHeight = 362
  ClientWidth = 572
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
    Width = 572
    Height = 41
    Align = alTop
    Caption = 'RELAT'#211'RIO DE CONTRIBUI'#199#213'ES'
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
    Top = 313
    Width = 572
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 199
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
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 280
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 572
    Height = 272
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 64
      Top = 79
      Width = 135
      Height = 13
      Caption = 'TIPO DE CONTRIBUI'#199#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 117
      Top = 160
      Width = 82
      Height = 13
      Caption = 'ORDENAR POR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelde: TLabel
      Left = 209
      Top = 223
      Width = 13
      Height = 13
      Caption = 'DE'
      Visible = False
    end
    object LabelATE: TLabel
      Left = 354
      Top = 223
      Width = 23
      Height = 13
      Caption = 'AT'#201':'
      Visible = False
    end
    object Label5: TLabel
      Left = 138
      Top = 107
      Width = 61
      Height = 13
      Caption = 'SITUA'#199#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 161
      Top = 133
      Width = 38
      Height = 13
      Caption = 'ATIVO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpdBtnBuscaFamilia: TSpeedButton
      Left = 468
      Top = 11
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
      Visible = False
      OnClick = SpdBtnBuscaFamiliaClick
    end
    object SpdBtnBuscaMembro: TSpeedButton
      Left = 468
      Top = 41
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
      Visible = False
      OnClick = SpdBtnBuscaMembroClick
    end
    object CBXTipoContribuicao: TComboBox
      Left = 205
      Top = 75
      Width = 287
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'TODAS'
      Items.Strings = (
        'TODAS'
        'PAGO'
        'DEVEDOR')
    end
    object CbxOrdenarPor: TComboBox
      Left = 205
      Top = 157
      Width = 172
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'DATA'
      Items.Strings = (
        'DATA'
        'MEMBRO'
        'VALOR')
    end
    object RdGrpData: TRadioGroup
      Left = 206
      Top = 181
      Width = 286
      Height = 40
      Caption = 'Selecione o Periodo: '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'TODAS'
        'SELECIONAR DATA')
      ParentFont = False
      TabOrder = 7
      OnClick = RdGrpDataClick
    end
    object DtEdtDE: TcxDateEdit
      Left = 206
      Top = 239
      TabOrder = 8
      Visible = False
      Width = 136
    end
    object DtEdtATE: TcxDateEdit
      Left = 354
      Top = 239
      TabOrder = 9
      Visible = False
      Width = 138
    end
    object CbxOrdem: TComboBox
      Left = 383
      Top = 157
      Width = 109
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'CRESCENTE'
      Items.Strings = (
        'CRESCENTE'
        'DECRESCENTE')
    end
    object CbxSituacao: TComboBox
      Left = 205
      Top = 103
      Width = 287
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'TODAS'
      Items.Strings = (
        'TODAS'
        'MEMBROS'
        'N'#195'O MEMBROS')
    end
    object CbxAtivo: TComboBox
      Left = 205
      Top = 130
      Width = 287
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'TODOS'
      OnClick = CbxAtivoClick
      Items.Strings = (
        'TODOS'
        'SIM'
        'N'#195'O')
    end
    object EdtNomeFamilia: TEdit
      Left = 205
      Top = 10
      Width = 257
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Visible = False
    end
    object EdtNomeMembro: TEdit
      Left = 205
      Top = 41
      Width = 257
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Visible = False
    end
    object RdGrpSelecionaFamilia: TRadioGroup
      Left = 14
      Top = 6
      Width = 185
      Height = 32
      Caption = 'Fam'#237'lia'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'TODAS'
        'SELECIONAR')
      ParentFont = False
      TabOrder = 0
      OnClick = RdGrpSelecionaFamiliaClick
    end
    object RdGrpSelecionaMembro: TRadioGroup
      Left = 14
      Top = 37
      Width = 185
      Height = 32
      Caption = 'Membros:'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'TODOS'
        'SELECIONAR')
      ParentFont = False
      TabOrder = 1
      OnClick = RdGrpSelecionaMembroClick
    end
  end
  object QryTemp: TMyQuery
    Connection = DMPrincipal.Conn
    Left = 428
    Top = 4
  end
  object QryRel: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'SELECT c.*, F.Sobrenome, M.NomeMembro, TC.DescTPContrb, m.Envelo' +
        'pe as EnvelopeCorreto'
      
        'FROM contribuicao c left join Familia F on c.CodFamilia=F.CodFam' +
        'ilia'
      
        '                    left join TipoContribuicao TC on c.CodTpCont' +
        'rb = TC.CodTpContrb'
      
        '                    left join Membros M on c.CodMembro = m.codMe' +
        'mbro'
      'Order by c.CodFamilia, TC.DescTPContrb')
    Left = 20
    Top = 4
    object QryRelCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
      Origin = 'c.CodMembroAntigo'
    end
    object QryRelCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'c.CodFamilia'
    end
    object QryRelCodTpContrb: TLargeintField
      FieldName = 'CodTpContrb'
      Origin = 'c.CodTpContrb'
    end
    object QryRelValor: TFloatField
      FieldName = 'Valor'
      Origin = 'c.Valor'
    end
    object QryRelCodContribuicao: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodContribuicao'
      Origin = 'c.CodContribuicao'
    end
    object QryRelHora: TTimeField
      FieldName = 'Hora'
      Origin = 'c.Hora'
    end
    object QryRelCodMembro: TLargeintField
      FieldName = 'CodMembro'
      Origin = 'c.CodMembro'
    end
    object QryRelEnvelope: TLargeintField
      FieldName = 'Envelope'
      Origin = 'c.Envelope'
    end
    object QryRelSobrenome: TStringField
      FieldName = 'Sobrenome'
      Origin = 'F.Sobrenome'
      Size = 255
    end
    object QryRelNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'M.NomeMembro'
      Size = 255
    end
    object QryRelDescTPContrb: TStringField
      FieldName = 'DescTPContrb'
      Origin = 'TC.DescTPContrb'
      Size = 255
    end
    object QryRelDataContribuicao: TDateField
      FieldName = 'DataContribuicao'
      Origin = 'c.DataContribuicao'
    end
    object QryRelEnvelopeCorreto: TLargeintField
      FieldName = 'EnvelopeCorreto'
      Origin = 'M.Envelope'
    end
  end
  object DSRel: TDataSource
    DataSet = QryRel
    Left = 20
    Top = 48
  end
  object frxRpt: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41526.672388125000000000
    ReportOptions.LastChange = 41526.672388125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 12
    Top = 320
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Geral'
        Value = Null
      end
      item
        Name = 'TotalMembros'
        Value = ''
      end
      item
        Name = 'TotalFamilias'
        Value = ''
      end
      item
        Name = 'TipoContribuicao'
        Value = ''
      end
      item
        Name = 'Situacao'
        Value = ''
      end
      item
        Name = 'PeriodoInicial'
        Value = ''
      end
      item
        Name = 'PeriodoFinal'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 593.386210000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Data: [DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 593.386210000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#]')
        end
        object Memo8: TfrxMemoView
          Top = 9.338590000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ADMINISTRA'#199#195'O DE IGREJA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Contribui'#231#245'es')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object TipoContribuicao: TfrxMemoView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Tipo de Contribui'#231#227'o: [TipoContribuicao]    Situa'#231#227'o:[Situacao] ' +
              '  Periodo: [PeriodoInicial] at'#233' [PeriodoFinal]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomeMembro: TfrxMemoView
          Left = 128.504020000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  [frxDBDataset1."NomeMembro"]')
          ParentFont = False
        end
        object frxDBDataset1Data: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DataContribuicao"]')
          ParentFont = False
        end
        object frxDBDataset1Valor: TfrxMemoView
          Left = 631.181510000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' [frxDBDataset1."Valor"]')
          ParentFont = False
        end
        object frxDBDataset1Envelope: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."EnvelopeCorreto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DescTPContrb2: TfrxMemoView
          Left = 389.291590000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DescTPContrb'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DescTPContrb"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."CodFamilia"'
        KeepTogether = True
        object frxDBDataset1DescTPContrb: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              'Fam'#237'lia: [frxDBDataset1."CodFamilia"] - [frxDBDataset1."Sobrenom' +
              'e"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Top = 22.677180000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' Membro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 631.181510000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 22.677180000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Envelope')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 389.291590000000000000
          Top = 22.677180000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' Oferta')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO GRUPO: [SUM(<frxDBDataset1."Valor">,MasterData1)]    ')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 98.267780000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 34.015770000000000000
          Top = 30.236240000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Valor acumulado: [SUM(<frxDBDataset1."Valor">,MasterData1,2)]   ' +
              ' ')
          ParentFont = False
        end
        object TotalMembros: TfrxMemoView
          Left = 34.015770000000000000
          Top = 52.913420000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Membros: [TotalMembros]')
          ParentFont = False
        end
        object TotalFamilias: TfrxMemoView
          Left = 34.015770000000000000
          Top = 75.590600000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Fam'#237'lias: [TotalFamilias]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   TOTAIS:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSRel
    BCDToCurrency = False
    Left = 68
    Top = 320
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
    Left = 24
    Top = 204
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
    Left = 24
    Top = 220
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
    Left = 24
    Top = 236
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 24
    Top = 260
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
    Left = 24
    Top = 248
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
    Left = 24
    Top = 272
  end
  object QryRelInativos: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'Select concat(f.Sobrenome,'#39' - '#39',m.codfamilia) as FamiliaCampo, m' +
        '.CodFamilia, m.CodMembro, m.NomeMembro, m.Envelope, m.Telefone, ' +
        'm.Celular , f.Sobrenome'
      
        'from Membros m left join Familia F on m.codfamilia = f.codfamili' +
        'a'
      'Where isnull(m.CodMotivoSaida) and not isnull(m.envelope)'
      'Order By FamiliaCampo, m.codFamilia, m.codmembroantigo')
    Left = 20
    Top = 96
    object QryRelInativosCodMembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodMembro'
      Origin = 'm.CodMembro'
    end
    object QryRelInativosNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'm.NomeMembro'
      Size = 255
    end
    object QryRelInativosEnvelope: TLargeintField
      FieldName = 'Envelope'
      Origin = 'm.Envelope'
    end
    object QryRelInativosTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'm.Telefone'
      FixedChar = True
    end
    object QryRelInativosCelular: TStringField
      FieldName = 'Celular'
      Origin = 'm.Celular'
    end
    object QryRelInativosCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'm.CodFamilia'
    end
    object QryRelInativosSobrenome: TStringField
      FieldName = 'Sobrenome'
      Origin = 'F.Sobrenome'
      Size = 255
    end
    object QryRelInativosFamiliaCampo: TStringField
      FieldName = 'FamiliaCampo'
      Origin = 'FamiliaCampo'
      Size = 269
    end
  end
  object DSRelInativos: TDataSource
    DataSet = QryRelInativos
    Left = 20
    Top = 144
  end
  object frxRptInativos: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41526.672388125000000000
    ReportOptions.LastChange = 41526.672388125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 320
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
        Name = 'DataInicio'
        Value = Null
      end
      item
        Name = 'DataFim'
        Value = Null
      end
      item
        Name = 'TotalFamilias'
        Value = ''
      end
      item
        Name = 'TotalMembros'
        Value = ''
      end
      item
        Name = 'TipoContribuicao'
        Value = ''
      end
      item
        Name = 'Situacao'
        Value = ''
      end
      item
        Name = 'PeriodoInicial'
        Value = ''
      end
      item
        Name = 'PeriodoFinal'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Data: [DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 604.724800000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#]')
        end
        object Memo8: TfrxMemoView
          Top = 9.338590000000000000
          Width = 718.110333860000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ADMINISTRA'#199#195'O DE IGREJA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 423.307360000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Contribui'#231#245'es - Ativo/inativos por periodo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 60.472480000000000000
          Width = 718.110236220472000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object TipoContribuicao: TfrxMemoView
          Top = 68.031540000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Tipo de Contribui'#231#227'o: [TipoContribuicao]    Situa'#231#227'o:[Situacao] ' +
              '  Periodo: [PeriodoInicial] at'#233' [PeriodoFinal]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CodMembro: TfrxMemoView
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CodMembro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."CodMembro"]')
          ParentFont = False
        end
        object frxDBDataset1NomeMembro: TfrxMemoView
          Left = 56.692950000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   [frxDBDataset1."NomeMembro"]')
          ParentFont = False
        end
        object frxDBDataset1Envelope: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   [frxDBDataset1."Envelope"]')
          ParentFont = False
        end
        object frxDBDataset1Telefone: TfrxMemoView
          Left = 393.071120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Telefone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Telefone"]')
          ParentFont = False
        end
        object frxDBDataset1Celular: TfrxMemoView
          Left = 506.457020000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Celular'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Celular"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 56.692950000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   Nome')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   Envelope')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 393.071120000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Telefone')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 506.457020000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  Celular')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 79.370130000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '   TOTAIS:')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalFamilias: TfrxMemoView
          Left = 26.456710000000000000
          Top = 34.015770000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Fam'#237'lias: [TotalFamilias]')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalMembros: TfrxMemoView
          Left = 26.456710000000000000
          Top = 56.692950000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Membros: [TotalMembros]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."FamiliaCampo"'
        KeepTogether = True
        object frxDBDataset1Sobrenome: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FAMILIA: [frxDBDataset1."FamiliaCampo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSRelInativos
    BCDToCurrency = False
    Left = 220
    Top = 320
  end
  object QryTotaisFamilia: TMyQuery
    Connection = DMPrincipal.Conn
    Left = 372
  end
  object QryTotaisMembros: TMyQuery
    Connection = DMPrincipal.Conn
    Left = 268
  end
end
