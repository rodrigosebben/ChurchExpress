object FormLogon: TFormLogon
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = '...::: LOGIN DE USU'#193'RIO :::...'
  ClientHeight = 190
  ClientWidth = 349
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
    Width = 349
    Height = 41
    Align = alTop
    BorderWidth = 1
    Caption = 'LOGIN DE USU'#193'RIO'
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
    Width = 349
    Height = 149
    Align = alClient
    BorderWidth = 1
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 29
      Width = 55
      Height = 13
      Caption = 'USU'#193'RIO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 56
      Width = 39
      Height = 13
      Caption = 'SENHA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 83
      Width = 54
      Height = 13
      Caption = 'CONEX'#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblConectado: TLabel
      Left = 0
      Top = 6
      Width = 349
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Conectando...'
      Visible = False
    end
    object EdtUsuario: TEdit
      Left = 73
      Top = 25
      Width = 244
      Height = 21
      TabOrder = 0
      OnKeyDown = EdtUsuarioKeyDown
    end
    object EdtSenha: TEdit
      Left = 73
      Top = 52
      Width = 244
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = EdtUsuarioKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 73
      Top = 115
      Width = 75
      Height = 25
      Caption = '&Entrar'
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
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BtnSair: TBitBtn
      Left = 242
      Top = 115
      Width = 75
      Height = 25
      Caption = 'Sai&r'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF2F6CCDBE8A5C1D680A7
        C56394B8165E931D63979999997171715454545151514F4F4F4C4C4C4A4A4A47
        474745454525679D3274A83D7CAF4784B54E8ABA3E7EAD206598FFFFFFFFFFFF
        585858A2A2A2A2A2A2A3A3A3A4A4A4A4A4A4A5A5A52F6FA578ABD278ABD373A7
        D169A0CD407FAE23679AFFFFFFFFFFFF5C5C5CA1A1A1A1A1A1A2A2A2A3A3A3A3
        A3A3A4A4A43674AA7DAFD45B9AC95495C75896C84180AE26699DFFFFFFFFFFFF
        606060A0A0A0A0A0A0A1A1A1A2A2A2A2A2A2A3A3A33D79B082B3D7629FCC5A9A
        C95E9BCA4381AF2C6DA0FFFFFFFFFFFF6464649F9F9F9F9F9FA0A0A0A1A1A1A1
        A1A1A2A2A2457EB488B7D967A3CF619ECC639FCC4583B13171A4FFFFFFFFFFFF
        6868689E9E9E9F9F9F9F9F9FA0A0A0A0A0A0A1A1A14C84BA8DBBDB6EA8D166A6
        D15FB4DF4785B13775A9FFFFFFFFFFFF6C6C6C9D9D9D9E9E9E9E9E9E9F9F9F9F
        9F9FA0A0A05489BF94BFDD75ADD463B8E14BD4FF428BB83D7AADFFFFFFFFFFFF
        7070709C9C9C9D9D9D9D9D9D9E9E9E9F9F9F9F9F9F5A8EC498C3E07CB3D774AF
        D65EC4ED4B88B3457FB2FFFFFFFFFFFF7373739B9B9B9C9C9C9C9C9C9D9D9D9E
        9E9E9E9E9E6092C99EC7E283B8DA7DB4D77EB3D74F89B44B84B7FFFFFFFFFFFF
        7777779A9A9A9B9B9B9B9B9B9C9C9C9D9D9D9D9D9D6696CCA2CBE389BDDC83B9
        DA84B9DA518BB55289BCFFFFFFFFFFFF7A7A7A9999999A9A9A9A9A9A9B9B9B9C
        9C9C9C9C9C6C9AD0A7CEE58FC1DF89BDDC8BBDDC538DB65A8EC2FFFFFFFFFFFF
        7D7D7D9999999999999A9A9A9A9A9A9B9B9B9B9B9B6F9DD3AAD1E7ABD1E798C7
        E191C2DE568FB76093C6FFFFFFFFFFFF8080807E7E7E7C7C7C7A7A7A77777775
        7575727272719ED46F9ED687B2DCABD3E8A9D0E65890B86797CBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84ACDC6D9C
        D485B1DA5A91B96D9CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1CAE86C9CD3709ED2}
      TabOrder = 5
      OnClick = BtnSairClick
    end
    object BitBtn2: TBitBtn
      Left = 154
      Top = 115
      Width = 82
      Height = 25
      Caption = '&Cancelar'
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
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object CbxLocalBanco: TComboBox
      Left = 73
      Top = 79
      Width = 244
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 2
      Text = 'REDE CELC'
      OnChange = CbxLocalBancoChange
      OnKeyDown = EdtUsuarioKeyDown
      Items.Strings = (
        'REDE CELC'
        'INTERNET'
        'TESTE'
        'OUTRA...')
    end
  end
  object IdIcmpClient1: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 0
    IPVersion = Id_IPv4
    PacketSize = 1024
    Left = 16
    Top = 140
  end
end
