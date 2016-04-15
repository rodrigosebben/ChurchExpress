object FormIndicaMembroVotante: TFormIndicaMembroVotante
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormIndicaMembroVotante'
  ClientHeight = 183
  ClientWidth = 503
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
    Width = 503
    Height = 49
    Align = alTop
    Caption = 'INDICA'#199#195'O DE MEMBRO VOTANTE'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 4
    ExplicitWidth = 635
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 503
    Height = 85
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 48
    ExplicitWidth = 635
    ExplicitHeight = 202
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 322
      Height = 16
      Caption = 'Selecione o membro a ser indicado como votante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 399
      Top = 32
      Width = 75
      Height = 29
      Caption = 'Indicar'
      Layout = blGlyphTop
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DBLkpCbxVotante: TDBLookupComboBox
      Left = 24
      Top = 36
      Width = 369
      Height = 21
      KeyField = 'CodMembro'
      ListField = 'NomeMembro'
      ListSource = DSVotante
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 134
    Width = 503
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 255
    ExplicitWidth = 635
    object BtnCancelar: TBitBtn
      Left = 219
      Top = 6
      Width = 75
      Height = 41
      Caption = '&Sair'
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
      TabOrder = 0
      OnClick = BtnCancelarClick
    end
  end
  object QryVotante: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select CodMembro, NomeMembro, Votante'
      'from Membros'
      'Where isnull(votante)'
      'and isnull(codmotivosaida)'
      'order by nomemembro')
    Left = 24
    Top = 112
    object QryVotanteCodMembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodMembro'
      Origin = 'membros.CodMembro'
    end
    object QryVotanteNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'membros.NomeMembro'
      Size = 255
    end
    object QryVotanteVotante: TDateTimeField
      FieldName = 'Votante'
      Origin = 'membros.Votante'
    end
  end
  object CMDAtualizaMembros: TMyCommand
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'update membros'
      'set votante = now()'
      'where codmembro = :pCodMembro')
    Left = 128
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodMembro'
      end>
  end
  object DSVotante: TDataSource
    DataSet = QryVotante
    Left = 352
    Top = 128
  end
end
