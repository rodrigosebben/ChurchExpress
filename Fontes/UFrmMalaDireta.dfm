object FormMalaDireta: TFormMalaDireta
  Left = 0
  Top = 0
  Caption = 'Mala Direta'
  ClientHeight = 616
  ClientWidth = 1083
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1083
    Height = 41
    Align = alTop
    Caption = 'MALA DIRETA'
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
    Width = 1083
    Height = 220
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 497
      Top = 1
      Width = 108
      Height = 218
      Align = alLeft
      TabOrder = 0
      object cxButton2: TcxButton
        Left = 1
        Top = 1
        Width = 106
        Height = 72
        Align = alTop
        Caption = 'Adicionar'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00216324B81D5E2006FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF002A702F38256929F7216324D9FFFFFF00FFFFFF00FFFFFF00FFFFFF0061BE
          6DFF5DB868FF58B162FF53A95CFF4DA156FF47994FFF419149FF3B8842FF3580
          3BFF3F8845FF59A15EFF448B49FF216324CFFFFFFF00FFFFFF00FFFFFF0065C3
          71FFA0D7A9FF9CD5A5FF98D3A1FF94D09DFF90CE98FF8BCB93FF87C98EFF82C6
          89FF7EC384FF7AC180FF76BE7CFF458C4AFF216324C4FFFFFF00FFFFFF0068C7
          74FFA5DAAEFFA2D8ABFF9ED6A7FF9AD4A3FF96D29FFF93CF9AFF8ECC95FF89CA
          90FF85C78BFF81C587FF7DC282FF4A9150FF256929C9FFFFFF00FFFFFF0068C7
          74FF68C774FF65C371FF61BE6DFF5DB868FF58B162FF53A95CFF4DA156FF4799
          4FFF419149FF5AA362FF559D5CFF2F7835D1FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00419149F73B8842DBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0047994FBB41914906FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OptionsImage.Layout = blGlyphTop
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 1
        Top = 73
        Width = 106
        Height = 72
        Align = alTop
        Caption = 'Retirar'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF004DA1560647994FB8FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0053A95CD94DA156F747994F38FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF005DB868CF71BE7BFF7AC183FF5BAA64FF47994FFF419149FF3B8842FF3580
          3BFF2F7835FF2A702FFF256929FF216324FF1D5E20FFFFFFFF00FFFFFF0065C3
          71C47BC886FF9CD5A5FF98D3A1FF94D09DFF90CE98FF8BCB93FF87C98EFF82C6
          89FF7EC384FF7AC180FF76BE7CFF72BD78FF216324FFFFFFFF00FFFFFF0068C7
          74C97FCC8AFFA2D8ABFF9ED6A7FF9AD4A3FF96D29FFF93CF9AFF8ECC95FF89CA
          90FF85C78BFF81C587FF7DC282FF78C07EFF256929FFFFFFFF00FFFFFF00FFFF
          FF0068C774D180CD8BFF7CC987FF5DB868FF58B162FF53A95CFF4DA156FF4799
          4FFF419149FF3B8842FF35803BFF2F7835FF2A702FFFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0068C774DB65C371F7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0068C7740668C774BBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OptionsImage.Layout = blGlyphTop
        TabOrder = 1
        OnClick = cxButton3Click
      end
      object cxButton5: TcxButton
        Left = 1
        Top = 145
        Width = 106
        Height = 72
        Align = alTop
        Caption = 'Limpar lista'
        OptionsImage.Glyph.Data = {
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
        OptionsImage.Layout = blGlyphTop
        TabOrder = 2
        OnClick = cxButton5Click
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 496
      Height = 218
      Align = alLeft
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 494
        Height = 41
        Align = alTop
        Caption = 'MEMBROS'
        Color = 10930928
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 42
        Width = 494
        Height = 175
        Align = alClient
        DataSource = DSMembro
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = cxButton2Click
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeMembro'
            Title.Caption = 'Nome'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Caption = 'E-mail'
            Width = 250
            Visible = True
          end>
      end
    end
    object Panel7: TPanel
      Left = 605
      Top = 1
      Width = 477
      Height = 218
      Align = alClient
      TabOrder = 2
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 475
        Height = 41
        Align = alTop
        Caption = 'EMAILS PARA MALA DIRETA'
        Color = 10930928
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 42
        Width = 475
        Height = 175
        Align = alClient
        DataSource = DSMalaDireta
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = cxButton3Click
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 261
    Width = 1083
    Height = 355
    Align = alClient
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 1081
      Height = 41
      ButtonHeight = 25
      ButtonWidth = 93
      Caption = 'ToolBar1'
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object cxButton1: TcxButton
        Left = 93
        Top = 0
        Width = 85
        Height = 25
        Caption = 'Enviar'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton4: TcxButton
        Left = 178
        Top = 0
        Width = 85
        Height = 25
        Caption = 'Sair'
        TabOrder = 1
        OnClick = cxButton4Click
      end
      object LbStatus: TLabel
        Left = 263
        Top = 0
        Width = 6
        Height = 25
        Align = alClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 42
      Width = 1081
      Height = 79
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 5
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Assunto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 59
        Width = 36
        Height = 13
        Caption = 'Texto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtAssunto: TEdit
        Left = 5
        Top = 27
        Width = 1069
        Height = 21
        TabOrder = 0
      end
    end
    object Panel10: TPanel
      Left = 1
      Top = 121
      Width = 1081
      Height = 233
      Align = alClient
      TabOrder = 2
      object cxRichEdit1: TcxRichEdit
        Left = 1
        Top = 1
        Align = alClient
        Lines.Strings = (
          'DIGITE O TEXTO DA MALA DIRETA AQUI!')
        TabOrder = 0
        Height = 231
        Width = 1079
      end
    end
  end
  object MyQryMembro: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'select NomeMembro, Email'
      'from membros'
      'where email <> '#39#39
      'and isnull(codmotivosaida)'
      'and Not isnull(dataConfirmacao)'
      'Order by NomeMembro')
    Left = 652
    Top = 8
    object MyQryMembroNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'membros.NomeMembro'
      Size = 255
    end
    object MyQryMembroEmail: TStringField
      FieldName = 'Email'
      Origin = 'membros.Email'
      Size = 255
    end
  end
  object DSMembro: TDataSource
    DataSet = MyQryMembro
    Left = 652
    Top = 56
  end
  object CdsMalaDireta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 844
    Top = 4
    Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D00044E6F6D
      65020049000000010005574944544802000200FF0005456D61696C0200490000
      00010005574944544802000200FF000000}
    object CdsMalaDiretaNome: TStringField
      FieldName = 'Nome'
      Size = 255
    end
    object CdsMalaDiretaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
  end
  object DSMalaDireta: TDataSource
    DataSet = CdsMalaDireta
    Left = 844
    Top = 52
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 88
    Top = 80
  end
end
