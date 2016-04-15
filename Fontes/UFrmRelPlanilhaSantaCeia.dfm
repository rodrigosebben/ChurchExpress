object FormRelPlanilhaSantaCeia: TFormRelPlanilhaSantaCeia
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PLANILIA DE SANTA CEIA'
  ClientHeight = 186
  ClientWidth = 474
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
    Width = 474
    Height = 41
    Align = alTop
    Caption = 'PLANILHA DE SANTA CEIA'
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
    Top = 137
    Width = 474
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 166
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
      Left = 247
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
    Width = 474
    Height = 96
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 116
      Top = 14
      Width = 63
      Height = 13
      Caption = 'M'#234's Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 124
      Top = 41
      Width = 55
      Height = 13
      Caption = 'M'#234's Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 154
      Top = 68
      Width = 25
      Height = 13
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CBXMesInicial: TComboBox
      Left = 185
      Top = 11
      Width = 172
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'JANEIRO'
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object CbxMesFinal: TComboBox
      Left = 185
      Top = 38
      Width = 172
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'JANEIRO'
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object EdtAno: TEdit
      Left = 185
      Top = 65
      Width = 56
      Height = 21
      TabOrder = 2
    end
  end
  object QryTemp: TMyQuery
    Connection = DMPrincipal.Conn
    Left = 20
    Top = 44
  end
  object QryRel: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      
        'select concat(f.Sobrenome collate latin1_german1_ci,'#39' - '#39',m.codf' +
        'amilia) as FamiliaCampo, m.CodMembro, M.NomeMembro, M.CodFamilia' +
        ', F.Sobrenome, m.codmembroantigo'
      
        'From Membros M left join Familia F on m.codFamilia = f.codfamili' +
        'a'
      'where not isnull(M.DataConfirmacao)'
      'and isnull(m.codmotivosaida)'
      'Order by FamiliaCampo, m.codmembroantigo')
    Left = 392
    Top = 4
    object QryRelCodMembro: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CodMembro'
      Origin = 'M.CodMembro'
    end
    object QryRelNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Origin = 'M.NomeMembro'
      Size = 255
    end
    object QryRelCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
      Origin = 'M.CodFamilia'
    end
    object QryRelSobrenome: TStringField
      FieldName = 'Sobrenome'
      Origin = 'F.Sobrenome'
      Size = 255
    end
    object QryRelcodmembroantigo: TLargeintField
      FieldName = 'codmembroantigo'
      Origin = 'M.CodMembroAntigo'
    end
    object QryRelFamiliaCampo: TStringField
      FieldName = 'FamiliaCampo'
      Origin = 'FamiliaCampo'
      Size = 269
    end
  end
  object DSRel: TDataSource
    DataSet = QryRel
    Left = 392
    Top = 52
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
    Left = 76
    Top = 8
    Datasets = <
      item
        DataSet = frxDBSantaCeia
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Geral'
        Value = Null
      end
      item
        Name = 'Ano'
        Value = Null
      end
      item
        Name = 'MesInicial'
        Value = Null
      end
      item
        Name = 'MesFinal'
        Value = Null
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
        Height = 71.811070000000000000
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
          Top = 11.338590000000000000
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
            'Planilha de Santa Ceia - [Ano]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 60.472480000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."FamiliaCampo"'
        KeepTogether = True
        object frxDBDataset1CodFamilia: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBSantaCeia
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."FamiliaCampo"]')
          ParentFont = False
        end
        object MesInicial: TfrxMemoView
          Left = 370.393940000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[MesInicial]')
          ParentFont = False
        end
        object MesFinal: TfrxMemoView
          Left = 536.693260000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[MesFinal]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSantaCeia
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CodMembro: TfrxMemoView
          Left = 30.236240000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBSantaCeia
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CodMembroantigo"] - [frxDBDataset1."NomeMembro"]')
        end
        object Shape1: TfrxShapeView
          Left = 370.393940000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape2: TfrxShapeView
          Left = 396.850650000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Left = 423.307360000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape4: TfrxShapeView
          Left = 449.764070000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape5: TfrxShapeView
          Left = 476.220780000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 536.693260000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape7: TfrxShapeView
          Left = 563.149970000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape8: TfrxShapeView
          Left = 589.606680000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape9: TfrxShapeView
          Left = 616.063390000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape10: TfrxShapeView
          Left = 642.520100000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
      end
    end
  end
  object frxDBSantaCeia: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSRel
    BCDToCurrency = False
    Left = 76
    Top = 56
  end
end
