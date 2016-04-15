object FormRodaQuery: TFormRodaQuery
  Left = 0
  Top = 0
  Caption = '...::: Executa Consulta :::...'
  ClientHeight = 363
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 635
    Height = 45
    ButtonHeight = 45
    Caption = 'ToolBar1'
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 45
      Caption = 'Limpar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 75
      Top = 0
      Width = 75
      Height = 45
      Caption = 'Executar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 150
      Top = 0
      Width = 75
      Height = 45
      Caption = 'Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object RadioGroup2: TRadioGroup
      Left = 225
      Top = 0
      Width = 185
      Height = 45
      Caption = 'TIPO DE SQL'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'CONSULTA'
        'COMANDO')
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 410
      Top = 0
      Width = 132
      Height = 45
      Caption = 'SELECIONE O BANCO'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'ADO'
        'MYSQL')
      TabOrder = 3
    end
  end
  object DBGridResultado: TDBGrid
    Left = 0
    Top = 157
    Width = 635
    Height = 206
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 45
    Width = 635
    Height = 112
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object MyQuery: TMyQuery
    Connection = DM.Conn
    Left = 584
    Top = 28
  end
  object ADOQuery: TADOQuery
    Connection = DM.ADOConn
    Parameters = <>
    Left = 524
    Top = 28
  end
  object ADO: TDataSource
    DataSet = ADOQuery
    Left = 524
    Top = 72
  end
  object MySql: TDataSource
    DataSet = MyQuery
    Left = 584
    Top = 72
  end
end
