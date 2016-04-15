object FormRelatorioMembros: TFormRelatorioMembros
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Membros'
  ClientHeight = 772
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 41
    Align = alTop
    Caption = 'RELAT'#211'RIO DE MEMBROS'
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
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 325
    Height = 731
    Align = alLeft
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 41
      Align = alTop
      Caption = 'CRIAR FILTRO PARA IMPRESS'#195'O'
      Color = 10930928
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 1
      Top = 265
      Width = 323
      Height = 465
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 1
      object ToolBar2: TToolBar
        Left = 1
        Top = 1
        Width = 321
        Height = 40
        ButtonHeight = 41
        Caption = 'ToolBar1'
        TabOrder = 0
        object BitBtn5: TBitBtn
          Left = 0
          Top = 0
          Width = 85
          Height = 41
          Caption = 'Incluir Filtro'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0041924E233D8F497D3A8C44DB368940F332873CF32F84
            37DB2C81337D287F3023FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0049995853459653E6419950FF7DC28FFF96D0A6FF96CFA6FF78BE
            89FF368D42FF2C8134E6297F3053FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00519F61534D9C5DF464B478FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
            98FFA5D9B4FF58AA6BFF2C8134F4297F3053FFFFFF00FFFFFF00FFFFFF0059A6
            6B2256A366E56AB97DFFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
            6FFF5BB774FFA5D9B3FF5AAA6CFF2C8234E5297F3022FFFFFF00FFFFFF005DA9
            707E53AB68FFAADDB4FF64C179FF5FBE71FF60BC77FFFFFFFFFFFFFFFFFF59B8
            70FF58B56EFF5CB774FFA6DAB4FF388F43FF2C82347EFFFFFF00FFFFFF0061AC
            75DB8ACC98FF89D396FF6BC67AFF63C170FF55AB65FFFFFFFFFFFFFFFFFF59B8
            70FF59B870FF5BB972FF85CC97FF7BBE8DFF308539DBFFFFFF00FFFFFF0065AF
            7AF6A9DDB3FF7DCF8AFF75CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59B870FF67BE7DFF9CD4ABFF34883DF6FFFFFF00FFFFFF0069B2
            7EF6B6E2BEFF8BD597FF7AC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59B870FF69C17EFF9DD4AAFF388B42F6FFFFFF00FFFFFF006DB5
            83DBACDDB6FFA6DFAFFF81CB8CFF7CC986FF6EBD79FFFFFFFFFFFFFFFFFF5BAC
            6AFF60BC77FF5CBA73FF8BD199FF80C592FF3C8E47DBFFFFFF00FFFFFF0070B8
            877E85C797FFD2EED7FF95D9A0FF8AD394FF7FC889FFFFFFFFFFFFFFFFFF79CD
            85FF6BC37CFF6FC77EFFACDFB5FF459E57FF40914C7EFFFFFF00FFFFFF0073BA
            8A2270B887E5AADAB7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD4
            95FF83D28EFFAFE0B7FF6BB97DFF489856E544945122FFFFFF00FFFFFF00FFFF
            FF0073BB8B5370B887F4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DF
            AFFFC0E8C5FF79C28AFF509E5FF44C9B5B53FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0073BB8B5371B887E694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDD
            B8FF6DB97FFF58A569E654A16553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0074BB8B2371B9887D6EB684DB6AB380F367B17CF363AE
            77DB60AB737D5CA86E23FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 85
          Top = 0
          Width = 76
          Height = 41
          Caption = 'Deletar Filtro'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF003F54C3233A50C27D3853BEDB3551BDF3304BBCF32E4E
            B8DB2B4CB77D2748B523FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF004658C8534255C6E63C52CCFF757AE8FF8F92EEFF8F92EEFF7178
            E4FF334DC1FF2B4AB7E6294BB553FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF004D5ACD534959CBF45C65E0FFA1A6F5FF7E86EFFF5B63E9FF595DE7FF7D84
            EEFF9EA0F4FF515DD7FF2B4AB7F4294BB553FFFFFF00FFFFFF00FFFFFF00545F
            D2225361CFE5616BE3FFA1ACF5FF545FECFF505CEAFF4D59E9FF4E59E6FF4C56
            E6FF5056E6FF9EA2F4FF5460D6FF2A4AB8E5294BB522FFFFFF00FFFFFF005860
            D47E4B56DBFFA2ABF6FF5664F0FF5266EEFF4D59E9FF4D59E9FF4D59E9FF4D59
            E9FF4C58E6FF525AE6FF9FA3F5FF3450C4FF2A4AB87EFFFFFF00FFFFFF005C62
            D7DB818CEEFF7E91F7FF5D73F3FF4D59E9FF4D59E9FF4D59E9FF4D59E9FF4D59
            E9FF4D59E9FF4F5BE9FF7B83F0FF757BE2FF2E4BBADBFFFFFF00FFFFFF005F63
            DAF6A1ABF7FF7086F8FF6882F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D59E9FF5C66EAFF969CF1FF3250BCF6FFFFFF00FFFFFF006469
            DBF6AFB9F9FF7F93FAFF7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D59E9FF5E6AEEFF969DF1FF364FBEF6FFFFFF00FFFFFF00676A
            DEDBA5AFF5FF9DABFAFF778CF0FF545FECFF545FECFF545FECFF545FECFF545F
            ECFF545FECFF6377F2FF818EF4FF787FE9FF3A53C0DBFFFFFF00FFFFFF006A69
            E07E7D83EAFFCDD4FCFF8B9DFAFF7E93F7FF758AEEFF6C84F6FF6C84F6FF6C84
            F6FF6C84F6FF6379F3FFA4AFF8FF3E4FD0FF3E54C27EFFFFFF00FFFFFF006C6C
            E1226A69E0E5A3A7F3FFD4DBFDFF879AFAFF7F91F0FF7A8EF1FF7F94F8FF7E92
            F9FF768CF8FFA8B6F8FF636EE3FF4557C7E54156C522FFFFFF00FFFFFF00FFFF
            FF006D6CE3536A69E0F4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9
            FBFFBAC7FCFF707BE9FF4C5BCCF44858CA53FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF006D6CE3536A6ADFE68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4
            F4FF6670E2FF535ED1E6505DCE53FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF006D6DE2236B6AE17D686ADDDB6364DCF36164DAF35D63
            D9DB5B63D67D5862D423FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          TabOrder = 1
          OnClick = BitBtn6Click
        end
        object BitBtn8: TBitBtn
          Left = 161
          Top = 0
          Width = 75
          Height = 41
          Caption = 'Limpar tudo'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF001D57C4780345B9DF0442BCFE0345B9E30345B87AFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001A57
            C3802564C9FB2177E6FF0579EAFF0164DDFF044DBDFC0345B87AA97151A9C38E
            68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C5AFFB17B58FF164B
            AEFF639DF4FF187FFFFF0076F8FF0076EEFF0368E1FF0345B9E4C8926CFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0543
            BCFFAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF0442BCFECA946EFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFEFCFFFEFEFCFF245D
            C2FF8DB5F6FF4D92FFFF1177FFFF2186FFFF408AEBFF0344B9DECC976FFFFFFF
            FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFF95B0
            E1FF3D76D2FF8DB5F7FFB8D6FEFF72A8F5FF2E6BCAFF0443BA6DD19C73FFFFFF
            FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FFFBFB
            F9FF93AEDFFF2A61C6FF0543BCFF205AC1FF5F6186FFFFFFFF00D49E75FFFFFF
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
          Layout = blGlyphTop
          TabOrder = 3
          OnClick = BitBtn8Click
        end
        object BitBtn7: TBitBtn
          Left = 236
          Top = 0
          Width = 83
          Height = 41
          Caption = 'Executar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF001C811F231B7E1F7D1B7A1FDB1A731EF31A701EF31B71
            1FDB1B711F7D1B6C1F23FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF001C8A21531B831FE642A052FF87CA9AFF9BD3ABFF9BD2ABFF83C7
            96FF3D974CFF1A6E1EE61B701F53FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF001C912B531B8A20F46DBE83FFA8DBB5FF87CC98FF66BC7DFF64BA7CFF86CB
            98FFA5D9B4FF66B77DFF1A6C1DF41B711F53FFFFFF00FFFFFF00FFFFFF001D9B
            36221C962FE572C287FFA8DBB2FF60BC77FF5CBA73FF59B870FF59B56FFF58B5
            6FFF5BB774FFA5D9B3FF69B87FFF1A711EE51B711F22FFFFFF00FFFFFF001EA4
            3D7E4CB064FFAADDB4FF64C179FF5FBE71FF75C585FFD4ECD9FF8ACD99FF56B6
            6CFF58B56EFF5CB774FFA6DAB4FF419B4EFF1B771F7EFFFFFF00FFFFFF001FA9
            42DB91D29FFF8DD49AFF64C374FF79C987FFF2FAF4FFFFFFFFFFFDFEFDFF86CB
            96FF57B76DFF5BB972FF85CC97FF87C79AFF1B781FDBFFFFFF00FFFFFF001FAD
            42F6A6DCAFFF70CA7FFF73CA80FFF0F9F1FFFFFFFFFFEBF7EDFFFFFFFFFFFBFD
            FCFF88CD96FF5BB971FF67BE7DFFA0D7AFFF1B7A1EF6FFFFFF00FFFFFF0026B4
            4BF6A7DDB1FF72CC80FF66C773FFB0E1B7FFD2EED6FF63C170FFB8E3BFFFFFFF
            FFFFFBFDFCFF8CD099FF69C17EFFA1D7AEFF1B7F1EF6FFFFFF00FFFFFF002DBB
            54DB95D7A1FF91D79BFF69C976FF64C66FFF61C46EFF61C36FFF61C26FFFB9E4
            C0FFFFFFFFFFE3F4E6FF8BD199FF8BCE9DFF1C8820DBFFFFFF00FFFFFF0034BE
            597E57BF70FFAFE1B7FF6DCC7AFF68C872FF65C770FF63C56EFF62C46EFF63C4
            71FFB6E3BEFF6FC77EFFACDFB5FF48A95EFF1C8F267EFFFFFF00FFFFFF0039C2
            5C2234BE55E57FCE90FFAEE1B5FF6DCC7AFF6ACA76FF68C872FF68C874FF68C8
            75FF6BC979FFACDFB4FF76C489FF1C962DE51C942D22FFFFFF00FFFFFF00FFFF
            FF003BC55E5334C055F47FCE90FFAFE1B7FF92D89DFF77CE83FF77CE83FF92D8
            9DFFAEE1B5FF78C88BFF1D9D32F41D9D3653FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF003DC7605336C259E659C274FF96D7A3FFA5DCAEFFA5DCAEFF95D6
            A1FF50B96AFF1FAB42E61FA94253FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0040C962233BC55E7D39C25BDB31BD54F32DBB52F32BB9
            52DB2BB7527D28B44E23FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Layout = blGlyphTop
          TabOrder = 2
          OnClick = BitBtn7Click
        end
      end
      object LstBxFiltros: TListBox
        Left = 1
        Top = 41
        Width = 321
        Height = 423
        Align = alClient
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 42
      Width = 323
      Height = 223
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 6
        Top = 48
        Width = 80
        Height = 13
        Caption = 'Nome do campo:'
      end
      object Label2: TLabel
        Left = 6
        Top = 94
        Width = 64
        Height = 13
        Caption = 'Tipo de filtro:'
      end
      object Label3: TLabel
        Left = 7
        Top = 137
        Width = 28
        Height = 13
        Caption = 'Filtro:'
      end
      object Label4: TLabel
        Left = 7
        Top = 177
        Width = 6
        Height = 13
        Caption = 'E'
        Visible = False
      end
      object CbxNomeCampo: TComboBox
        Left = 7
        Top = 67
        Width = 311
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnSelect = CbxNomeCampoSelect
        Items.Strings = (
          'Nome'
          'Sexo'
          'Tipo de Sangue'
          'Data de Nascimento'
          'Naturalidade'
          'Estado Civil'
          'Profiss'#227'o'
          'Renda'
          'Data de Admiss'#227'o na Comunidade'
          'Forma de Admiss'#227'o'
          'Proced'#234'ncia'
          'Envelope'
          'Data de Saida'
          'Motivo de Sa'#237'da'
          'Escolaridade'
          'Destino de Sa'#237'da'
          'Data de Cadastro'
          'Data de Batismo'
          'Data de Confirma'#231#227'o')
      end
      object cBXFiltro: TComboBox
        Left = 7
        Top = 113
        Width = 311
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        OnSelect = cBXFiltroSelect
        Items.Strings = (
          'IGUAL'
          'DIFERENTE'
          'CONTENDO'
          'N'#195'O CONTENDO'
          'QUE INICIE COM'
          'QUE N'#195'O INICIE COM'
          'QUE TERMINE COM'
          'QUE N'#195'O TERMINE COM'
          'ENTRE O INTERVALO'
          'N'#195'O EST'#193' ENTRE O INTERVALO'
          'VAZIO'
          'N'#195'O '#201' VAZIO')
      end
      object EdtValor1: TEdit
        Left = 6
        Top = 156
        Width = 311
        Height = 21
        TabOrder = 2
      end
      object EdtValor2: TEdit
        Left = 7
        Top = 192
        Width = 311
        Height = 21
        TabOrder = 3
        Visible = False
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 321
        Height = 46
        Align = alTop
        Caption = 'Ordenar relat'#243'rio por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object CbxOrdenação: TComboBox
          Left = 6
          Top = 18
          Width = 191
          Height = 21
          Style = csDropDownList
          DropDownCount = 0
          ItemIndex = 0
          TabOrder = 0
          Text = 'Nome'
          Items.Strings = (
            'Nome'
            'Sexo'
            'Tipo de Sangue'
            'Data de Nascimento'
            'Naturalidade'
            'Estado Civil'
            'Profiss'#227'o'
            'Renda'
            'Data de Admiss'#227'o na Comunidade'
            'Forma de Admiss'#227'o'
            'Proced'#234'ncia'
            'Envelope'
            'Data de Saida'
            'Motivo de Sa'#237'da')
        end
        object CbxOrdem: TComboBox
          Left = 203
          Top = 18
          Width = 110
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'ASC'
          Items.Strings = (
            'ASC'
            'DESC')
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 325
    Top = 41
    Width = 959
    Height = 731
    Align = alClient
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 36
      Width = 957
      Height = 46
      ButtonHeight = 46
      Caption = 'ToolBar1'
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 0
        Top = 0
        Width = 144
        Height = 46
        Caption = 'Imprimir consulta'
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
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn4: TBitBtn
        Left = 144
        Top = 0
        Width = 75
        Height = 46
        Caption = 'Sair'
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
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 82
      Width = 957
      Height = 606
      Align = alClient
      DataSource = DSRelMembros1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeMembro'
          Title.Caption = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataCadastro'
          Title.Caption = 'Data de Cadastro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoSangue'
          Title.Caption = 'Tipo de Sangue'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Compl'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataNasc'
          Title.Caption = 'Data Nasc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Naturalidade'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EstadoCivil'
          Title.Caption = 'Estado Civil'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Profissao'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Empresa'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Renda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataConfirmacao'
          Title.Caption = 'Data Confirmacao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataBatismo'
          Title.Caption = 'Data Batismo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataAtivo'
          Title.Caption = 'Data Ativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Envelope'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataAdmisComunidade'
          Title.Caption = 'Data Admiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcedenciaAdmissao'
          Title.Caption = 'Procedencia'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataSaida'
          Title.Caption = 'Data Saida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MotivoSaida'
          Title.Caption = 'Motivo Saida'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DestinoSaida'
          Title.Caption = 'Destino Saida'
          Width = 200
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 688
      Width = 957
      Height = 42
      Panels = <
        item
          Width = 100
        end>
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 957
      Height = 35
      Align = alTop
      TabOrder = 3
      object Label5: TLabel
        Left = 4
        Top = 9
        Width = 198
        Height = 16
        Caption = 'Escolha o Modelo de Relat'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CbxModeloRelatorio: TComboBox
        Left = 208
        Top = 5
        Width = 329
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Rela'#231#227'o de Membros - Sint'#233'tico'
        Items.Strings = (
          'Rela'#231#227'o de Membros - Sint'#233'tico'
          'Rela'#231#227'o de Membros - Anal'#237'tico'
          'Etiquetas - Endere'#231'o')
      end
    end
  end
  object MyQryRelMembros1: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT CodMembro, codfamilia, codmembroantigo,'
      '       NomeMembro,'
      '       Sexo,'
      '       RG,'
      '       CPF,'
      '       DataCadastro,'
      '       Email,'
      '       TipoSangue,'
      '       Endereco,'
      '       Compl,'
      '       Cidade,'
      '       Bairro,'
      '       CEP,'
      '       UF,'
      '       Celular,'
      '       Telefone,'
      '       DataNasc,'
      '       Naturalidade,'
      '       EC.NomeEstadoCivil as EstadoCivil,'
      '       P.NomeProfissao as Profissao,'
      '       Empresa,'
      '       Renda,'
      '       DataConfirmacao,'
      '       DataBatismo,'
      '       DataAtivo,'
      '       Envelope,'
      '       FA.NomeFormaAdmissao,'
      '       DataAdmisComunidade,'
      '       ProcedenciaAdmissao,'
      '       DataSaida,'
      '       MS.NomeMotivoSaida as MotivoSaida,'
      '       DestinoSaida,'
      '       ES.NomeEscolaridade,'
      '       DataCadastro,'
      '       DataBatismo,'
      '       DataConfirmacao,'
      
        '       DATE_FORMAT(NOW( ),'#39'%Y'#39') - DATE_FORMAT(m.datanasc, '#39'%Y'#39') ' +
        '- (DATE_FORMAT(NOW( ),'#39'00-%m-%d'#39') < DATE_FORMAT(m.datanasc,'#39'00-%' +
        'm-%d'#39')) AS Idade'
      
        '  FROM membros m left join EstadoCivil EC on m.codEstadoCivil = ' +
        'EC.CodEstadoCivil'
      
        '                 left join Profissao P on m.codprofissao = p.cod' +
        'Profissao'
      
        '                 left join MotivoSaida MS on m.codmotivosaida=MS' +
        '.codmotivosaida'
      
        '                 left join FormaAdmissao FA on m.codFormaAdmissa' +
        'o=FA.codformaadmissao'
      
        '                 left join Escolaridade ES on m.CodEscolaridade=' +
        ' ES.CodEscolaridade')
    Active = True
    Left = 12
    Top = 4
    object MyQryRelMembros1NomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'm.NomeMembro'
      Size = 255
    end
    object MyQryRelMembros1Sexo: TStringField
      FieldName = 'Sexo'
      Origin = 'm.Sexo'
      FixedChar = True
      Size = 1
    end
    object MyQryRelMembros1RG: TStringField
      FieldName = 'RG'
      Origin = 'm.RG'
    end
    object MyQryRelMembros1CPF: TStringField
      FieldName = 'CPF'
      Origin = 'm.CPF'
      Size = 40
    end
    object MyQryRelMembros1DataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
      Origin = 'm.DataCadastro'
    end
    object MyQryRelMembros1Email: TStringField
      FieldName = 'Email'
      Origin = 'm.Email'
      Size = 255
    end
    object MyQryRelMembros1TipoSangue: TStringField
      FieldName = 'TipoSangue'
      Origin = 'm.TipoSangue'
      Size = 45
    end
    object MyQryRelMembros1Endereco: TStringField
      FieldName = 'Endereco'
      Origin = 'm.Endereco'
      Size = 250
    end
    object MyQryRelMembros1Compl: TStringField
      FieldName = 'Compl'
      Origin = 'm.Compl'
      Size = 150
    end
    object MyQryRelMembros1Cidade: TStringField
      FieldName = 'Cidade'
      Origin = 'm.Cidade'
      Size = 150
    end
    object MyQryRelMembros1Bairro: TStringField
      FieldName = 'Bairro'
      Origin = 'm.Bairro'
      Size = 150
    end
    object MyQryRelMembros1CEP: TStringField
      FieldName = 'CEP'
      Origin = 'm.CEP'
      FixedChar = True
      Size = 12
    end
    object MyQryRelMembros1UF: TStringField
      FieldName = 'UF'
      Origin = 'm.UF'
      FixedChar = True
      Size = 2
    end
    object MyQryRelMembros1Celular: TStringField
      FieldName = 'Celular'
      Origin = 'm.Celular'
    end
    object MyQryRelMembros1Telefone: TStringField
      FieldName = 'Telefone'
      Origin = 'm.Telefone'
      FixedChar = True
    end
    object MyQryRelMembros1DataNasc: TDateField
      FieldName = 'DataNasc'
      Origin = 'm.DataNasc'
    end
    object MyQryRelMembros1Naturalidade: TStringField
      FieldName = 'Naturalidade'
      Origin = 'm.Naturalidade'
      Size = 255
    end
    object MyQryRelMembros1EstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Origin = 'EC.NomeEstadoCivil'
      Size = 100
    end
    object MyQryRelMembros1Profissao: TStringField
      FieldName = 'Profissao'
      Origin = 'P.NomeProfissao'
      Size = 255
    end
    object MyQryRelMembros1Empresa: TStringField
      FieldName = 'Empresa'
      Origin = 'm.Empresa'
      Size = 255
    end
    object MyQryRelMembros1Renda: TFloatField
      FieldName = 'Renda'
      Origin = 'm.Renda'
    end
    object MyQryRelMembros1DataConfirmacao: TDateField
      FieldName = 'DataConfirmacao'
      Origin = 'm.DataConfirmacao'
    end
    object MyQryRelMembros1DataBatismo: TDateField
      FieldName = 'DataBatismo'
      Origin = 'm.DataBatismo'
    end
    object MyQryRelMembros1DataAtivo: TDateTimeField
      FieldName = 'DataAtivo'
      Origin = 'm.DataAtivo'
    end
    object MyQryRelMembros1Envelope: TLargeintField
      FieldName = 'Envelope'
      Origin = 'm.Envelope'
    end
    object MyQryRelMembros1DataAdmisComunidade: TDateTimeField
      FieldName = 'DataAdmisComunidade'
      Origin = 'm.DataAdmisComunidade'
    end
    object MyQryRelMembros1ProcedenciaAdmissao: TStringField
      FieldName = 'ProcedenciaAdmissao'
      Origin = 'm.ProcedenciaAdmissao'
      Size = 255
    end
    object MyQryRelMembros1DataSaida: TDateField
      FieldName = 'DataSaida'
      Origin = 'm.DataSaida'
    end
    object MyQryRelMembros1MotivoSaida: TStringField
      FieldName = 'MotivoSaida'
      Origin = 'MS.NomeMotivoSaida'
      Size = 150
    end
    object MyQryRelMembros1DestinoSaida: TStringField
      FieldName = 'DestinoSaida'
      Origin = 'm.DestinoSaida'
      Size = 255
    end
    object MyQryRelMembros1CodMembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodMembro'
      Origin = 'm.CodMembro'
    end
    object MyQryRelMembros1NomeFormaAdmissao: TStringField
      FieldName = 'NomeFormaAdmissao'
      Origin = 'FA.NomeFormaAdmissao'
      Size = 150
    end
    object MyQryRelMembros1Idade: TFloatField
      FieldName = 'Idade'
      Origin = 'Idade'
    end
    object MyQryRelMembros1NomeEscolaridade: TStringField
      FieldName = 'NomeEscolaridade'
      Origin = 'ES.NomeEscolaridade'
      Size = 100
    end
    object MyQryRelMembros1codfamilia: TLargeintField
      FieldName = 'codfamilia'
      Origin = 'm.CodFamilia'
    end
    object MyQryRelMembros1codmembroantigo: TLargeintField
      FieldName = 'codmembroantigo'
      Origin = 'm.CodMembroAntigo'
    end
  end
  object DSRelMembros1: TDataSource
    DataSet = MyQryRelMembros1
    Left = 104
    Top = 4
  end
  object frxRptRelMembrosCompleto: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41355.697795428200000000
    ReportOptions.LastChange = 41355.697795428200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
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
      object MasterData1: TfrxMasterData
        Height = 211.653680000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomeMembro: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15000804
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NomeMembro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1RG: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'RG: [frxDBDataset1."RG"]')
          ParentFont = False
        end
        object frxDBDataset1CPF: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 162.519680160000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CPF: [frxDBDataset1."CPF"]')
          ParentFont = False
        end
        object frxDBDataset1DataNasc: TfrxMemoView
          Left = 321.260050000000000000
          Top = 26.456710000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data de Nascimento: [frxDBDataset1."DataNasc"]')
          ParentFont = False
        end
        object frxDBDataset1Sexo: TfrxMemoView
          Left = 521.575140000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Sexo: [frxDBDataset1."Sexo"]')
          ParentFont = False
        end
        object frxDBDataset1TipoSangue: TfrxMemoView
          Left = 574.488560000000000000
          Top = 26.456710000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tipo de Sangue: [frxDBDataset1."TipoSangue"]')
          ParentFont = False
        end
        object frxDBDataset1Email: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'E-mail: [frxDBDataset1."Email"]')
          ParentFont = False
        end
        object frxDBDataset1DataCadastro: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data de Cadastro: [frxDBDataset1."DataCadastro"]')
          ParentFont = False
        end
        object frxDBDataset1Celular: TfrxMemoView
          Left = 347.716760000000000000
          Top = 45.354360000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Celular: [frxDBDataset1."Celular"]')
          ParentFont = False
        end
        object frxDBDataset1Telefone: TfrxMemoView
          Left = 188.976500000000000000
          Top = 45.354360000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telefone: [frxDBDataset1."Telefone"]')
          ParentFont = False
        end
        object frxDBDataset1Endereco: TfrxMemoView
          Left = 302.362400000000000000
          Top = 64.252010000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Endere'#231'o: [frxDBDataset1."Endereco"]')
          ParentFont = False
        end
        object frxDBDataset1EstadoCivil: TfrxMemoView
          Left = 506.457020000000000000
          Top = 45.354360000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Estado Civil: [frxDBDataset1."EstadoCivil"]')
          ParentFont = False
        end
        object frxDBDataset1Compl: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Compl: [frxDBDataset1."Compl"]')
          ParentFont = False
        end
        object frxDBDataset1Cidade: TfrxMemoView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cidade: [frxDBDataset1."Cidade"]')
          ParentFont = False
        end
        object frxDBDataset1Bairro: TfrxMemoView
          Left = 264.567100000000000000
          Top = 83.149660000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Bairro: [frxDBDataset1."Bairro"]')
          ParentFont = False
        end
        object frxDBDataset1CEP: TfrxMemoView
          Left = 49.133890000000000000
          Top = 102.047310000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CEP: [frxDBDataset1."CEP"]')
          ParentFont = False
        end
        object frxDBDataset1UF: TfrxMemoView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'UF: [frxDBDataset1."UF"]')
          ParentFont = False
        end
        object frxDBDataset1Naturalidade: TfrxMemoView
          Left = 166.299320000000000000
          Top = 102.047310000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Naturalidade: [frxDBDataset1."Naturalidade"]')
          ParentFont = False
        end
        object frxDBDataset1Profissao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Profiss'#227'o: [frxDBDataset1."Profissao"]')
          ParentFont = False
        end
        object frxDBDataset1Empresa: TfrxMemoView
          Left = 306.141930000000000000
          Top = 120.944960000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Empresa: [frxDBDataset1."Empresa"]')
          ParentFont = False
        end
        object frxDBDataset1Renda: TfrxMemoView
          Left = 612.283860000000000000
          Top = 120.944960000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Renda: [frxDBDataset1."Renda"]')
          ParentFont = False
        end
        object frxDBDataset1DataConfirmacao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data da Confirma'#231#227'o: [frxDBDataset1."DataConfirmacao"]')
          ParentFont = False
        end
        object frxDBDataset1DataBatismo: TfrxMemoView
          Left = 211.653680000000000000
          Top = 139.842610000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data de Batismo: [frxDBDataset1."DataBatismo"]')
          ParentFont = False
        end
        object frxDBDataset1Envelope: TfrxMemoView
          Left = 593.386210000000000000
          Top = 102.047310000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Envelope: [frxDBDataset1."Envelope"]')
          ParentFont = False
        end
        object frxDBDataset1DataAtivo: TfrxMemoView
          Left = 389.291590000000000000
          Top = 139.842610000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Ativo desde: [frxDBDataset1."DataAtivo"]')
          ParentFont = False
        end
        object frxDBDataset1DataAdmisComunidade: TfrxMemoView
          Left = 540.472790000000000000
          Top = 139.842610000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data Admiss'#227'o: [frxDBDataset1."DataAdmisComunidade"]')
          ParentFont = False
        end
        object frxDBDataset1ProcedenciaAdmissao: TfrxMemoView
          Left = 3.779530000000000000
          Top = 158.740260000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Proced'#234'ncia: [frxDBDataset1."ProcedenciaAdmissao"]')
          ParentFont = False
        end
        object frxDBDataset1DataSaida: TfrxMemoView
          Left = 291.023810000000000000
          Top = 158.740260000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Data Sa'#237'da: [frxDBDataset1."DataSaida"]')
          ParentFont = False
        end
        object frxDBDataset1MotivoSaida: TfrxMemoView
          Left = 3.779530000000000000
          Top = 177.637910000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Motivo da Sa'#237'da: [frxDBDataset1."MotivoSaida"]')
          ParentFont = False
        end
        object frxDBDataset1DestinoSaida: TfrxMemoView
          Left = 434.645950000000000000
          Top = 158.740260000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Destino: [frxDBDataset1."DestinoSaida"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Color = 13421772
        end
        object SysMemo1: TfrxSysMemoView
          Left = 597.165740000000000000
          Top = 34.015770000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data: [DATE]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MEMBROS - COMPLETO')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Pagina: [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSRelMembros1
    BCDToCurrency = False
    Left = 236
    Top = 4
  end
  object frxRptRelacaoMembrosSintetico: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41464.650060763900000000
    ReportOptions.LastChange = 41464.650060763900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Formulas'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomeMembro: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NomeMembro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NomeMembro"]')
          ParentFont = False
        end
        object frxDBDataset1DataNasc: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DataNasc'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DataNasc"]')
          ParentFont = False
        end
        object frxDBDataset1Celular: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatMaskText('#39'(99)99999999;0'#39',<frxDBDataset1."Celular">)]')
          ParentFont = False
        end
        object frxDBDataset1Telefone: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatMaskText('#39'(99)99999999;0'#39',<frxDBDataset1."Telefone">)]')
          ParentFont = False
        end
        object frxDBDataset1Idade: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Idade'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Idade"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Membro')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 332.598640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Idade')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Nasc.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 616.063390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Top = 20.456710000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Data: [DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 627.401980000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#]')
        end
        object Memo1: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ADMINISTRA'#199#195'O DE IGREJA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rela'#231#227'o de Membros - Sint'#233'tico')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Top = 3.000000000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rela'#231#227'o de Membros - Sint'#233'tico')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 0.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Top = 3.779530000000000000
          Width = 740.787880000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL DE MEMBROS: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxRPTEtiquetaFAI: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41464.789795115700000000
    ReportOptions.LastChange = 41464.789795115700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 260
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 4.800000000000000000
      RightMargin = 4.800000000000000000
      TopMargin = 12.900000000000000000
      BottomMargin = 12.500000000000000000
      object MasterData1: TfrxMasterData
        Height = 96.000000000000000000
        Top = 18.897650000000000000
        Width = 779.717039000000000000
        Columns = 3
        ColumnWidth = 252.094488188976000000
        ColumnGap = 11.716535433070900000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 249.448980000000000000
          Height = 94.488250000000000000
          ShowHint = False
        end
        object frxDBDataset1NomeMembro: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxDBDataset1."Envelope"]     [<frxDBDataset1."codfamilia"> - <' +
              'frxDBDataset1."codmembroantigo">]     [DecodeDate(DataNasc,day,m' +
              'onth)]')
          ParentFont = False
        end
        object frxDBDataset1Endereco: TfrxMemoView
          Left = 3.779530000000000000
          Top = 24.456710000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Endereco"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'CEP: [frxDBDataset1."CEP"] [<frxDBDataset1."Cidade">] -  [<frxDB' +
              'Dataset1."UF">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 238.110390000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Bairro"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 824
    Top = 168
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
    Left = 824
    Top = 276
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
    Left = 824
    Top = 256
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
    Left = 824
    Top = 208
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
    Left = 824
    Top = 188
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
    Left = 856
    Top = 232
  end
end
