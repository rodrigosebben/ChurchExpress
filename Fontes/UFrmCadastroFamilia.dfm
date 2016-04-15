object FormCadastroFamilia: TFormCadastroFamilia
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormCadastroFamilia'
  ClientHeight = 541
  ClientWidth = 787
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
    Width = 787
    Height = 49
    Align = alTop
    Caption = 'CADASTRO DE FAM'#205'LIA'
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
    Top = 492
    Width = 787
    Height = 49
    Align = alBottom
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TBitBtn
      Left = 622
      Top = 5
      Width = 75
      Height = 41
      Caption = '&Salvar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TBitBtn
      Left = 703
      Top = 5
      Width = 75
      Height = 41
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 787
    Height = 443
    Align = alClient
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 73
      Height = 16
      Caption = 'Sobrenome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 317
      Top = 14
      Width = 32
      Height = 16
      Caption = 'Area'
      FocusControl = DBEdtArea
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 370
      Top = 15
      Width = 38
      Height = 16
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 430
      Top = 15
      Width = 60
      Height = 16
      Caption = 'Endereco'
      FocusControl = DBEdtEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 66
      Width = 38
      Height = 16
      Caption = 'Compl'
      FocusControl = DBEdtCompl
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 205
      Top = 66
      Width = 39
      Height = 16
      Caption = 'Bairro'
      FocusControl = DBEdtBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 361
      Top = 66
      Width = 43
      Height = 16
      Caption = 'Cidade'
      FocusControl = DBEdtCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 547
      Top = 66
      Width = 14
      Height = 16
      Caption = 'UF'
      FocusControl = DBEdtUF
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 583
      Top = 66
      Width = 24
      Height = 16
      Caption = 'Cep'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 669
      Top = 66
      Width = 55
      Height = 16
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 114
      Width = 44
      Height = 16
      Caption = 'Celular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 122
      Top = 114
      Width = 21
      Height = 16
      Caption = 'Fax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 228
      Top = 114
      Width = 32
      Height = 16
      Caption = 'Email'
      FocusControl = DBEdtEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 174
      Width = 79
      Height = 16
      Caption = 'Ultima Visita'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 143
      Top = 174
      Width = 58
      Height = 16
      Caption = 'Visitante'
      FocusControl = DBEdtVisitante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 226
      Width = 125
      Height = 16
      Caption = 'Membros da Familia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdtFamilia: TDBEdit
      Left = 16
      Top = 37
      Width = 295
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Sobrenome'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdtArea: TDBEdit
      Left = 317
      Top = 37
      Width = 47
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Area'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdtEndereco: TDBEdit
      Left = 430
      Top = 37
      Width = 339
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Endereco'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdtCompl: TDBEdit
      Left = 16
      Top = 88
      Width = 183
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Compl'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdtBairro: TDBEdit
      Left = 205
      Top = 88
      Width = 150
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Bairro'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdtCidade: TDBEdit
      Left = 361
      Top = 88
      Width = 180
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Cidade'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdtUF: TDBEdit
      Left = 547
      Top = 88
      Width = 30
      Height = 24
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdtCEP: TcxDBMaskEdit
      Left = 583
      Top = 88
      DataBinding.DataField = 'Cep'
      DataBinding.DataSource = DSFamilia
      ParentFont = False
      Properties.EditMask = '00000\-000;1;_'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 80
    end
    object DBEdtTelefone: TcxDBMaskEdit
      Left = 669
      Top = 88
      DataBinding.DataField = 'Telefone'
      DataBinding.DataSource = DSFamilia
      ParentFont = False
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 100
    end
    object DBEdtCelular: TcxDBMaskEdit
      Left = 16
      Top = 136
      DataBinding.DataField = 'Celular'
      DataBinding.DataSource = DSFamilia
      ParentFont = False
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 100
    end
    object DBEdtFax: TcxDBMaskEdit
      Left = 122
      Top = 136
      DataBinding.DataField = 'Fax'
      DataBinding.DataSource = DSFamilia
      ParentFont = False
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 100
    end
    object DBEdtEmail: TDBEdit
      Left = 228
      Top = 136
      Width = 541
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Email'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdtUltimaVisita: TcxDBDateEdit
      Left = 16
      Top = 196
      DataBinding.DataField = 'DataUltVisita'
      DataBinding.DataSource = DSFamilia
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 121
    end
    object DBEdtVisitante: TDBEdit
      Left = 143
      Top = 196
      Width = 626
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Visitante'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 248
      Width = 753
      Height = 161
      DataSource = DSLkpMembros
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CodMembro'
          Title.Caption = 'C'#243'digo'
          Width = 60
          Visible = True
        end
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
          FieldName = 'Email'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoSangue'
          Title.Caption = 'Tipo de Sangue'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pai'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mae'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataNasc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Naturalidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data de Admiss'#227'o'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcedenciaAdmissao'
          Title.Caption = 'Procedencia'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Envelope'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataSaida'
          Title.Caption = 'Data de Saida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DestinoSaida'
          Title.Caption = 'Destino'
          Width = 250
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
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataCadastro'
          Title.Caption = 'Data do Cadastro'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataConfirmacao'
          Title.Caption = 'Data de Confirma'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataBatismo'
          Title.Caption = 'Data de Batismo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataAtivo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Votante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Compl'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Visible = True
        end>
    end
    object DBEdtGrupo: TDBEdit
      Left = 370
      Top = 37
      Width = 54
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Grupo'
      DataSource = DSFamilia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object LkpGrupo: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select CodGrupo, NomeGrupo'
      'From Grupos'
      'Order by NomeGrupo')
    Left = 715
  end
  object DSLkpGrupo: TDataSource
    DataSet = LkpGrupo
    Left = 715
    Top = 48
  end
  object QryFamilia: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO familia'
      
        '  (CodFamilia, Sobrenome, Area, Cep, Endereco, Compl, Bairro, Te' +
        'lefone, Email, Celular, Fax, DataUltVisita, Visitante, Cidade, U' +
        'F, Grupo)'
      'VALUES'
      
        '  (:CodFamilia, :Sobrenome, :Area, :Cep, :Endereco, :Compl, :Bai' +
        'rro, :Telefone, :Email, :Celular, :Fax, :DataUltVisita, :Visitan' +
        'te, :Cidade, :UF, :Grupo)')
    SQLDelete.Strings = (
      'DELETE FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLUpdate.Strings = (
      'UPDATE familia'
      'SET'
      
        '  CodFamilia = :CodFamilia, Sobrenome = :Sobrenome, Area = :Area' +
        ', Cep = :Cep, Endereco = :Endereco, Compl = :Compl, Bairro = :Ba' +
        'irro, Telefone = :Telefone, Email = :Email, Celular = :Celular, ' +
        'Fax = :Fax, DataUltVisita = :DataUltVisita, Visitante = :Visitan' +
        'te, Cidade = :Cidade, UF = :UF, Grupo = :Grupo'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia')
    SQLRefresh.Strings = (
      
        'SELECT CodFamilia, Sobrenome, Area, Cep, Endereco, Compl, Bairro' +
        ', Telefone, Email, Celular, Fax, DataUltVisita, Visitante, Cidad' +
        'e, UF, Grupo FROM familia'
      'WHERE'
      '  CodFamilia = :CodFamilia')
    SQLLock.Strings = (
      'SELECT * FROM familia'
      'WHERE'
      '  CodFamilia = :Old_CodFamilia'
      'FOR UPDATE')
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'SELECT *'
      'FROM familia')
    Left = 624
    object QryFamiliaCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryFamiliaSobrenome: TStringField
      FieldName = 'Sobrenome'
      Size = 255
    end
    object QryFamiliaArea: TStringField
      FieldName = 'Area'
      Size = 255
    end
    object QryFamiliaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 255
    end
    object QryFamiliaCompl: TStringField
      FieldName = 'Compl'
      Size = 255
    end
    object QryFamiliaBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryFamiliaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 45
    end
    object QryFamiliaEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryFamiliaCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 45
    end
    object QryFamiliaFax: TStringField
      FieldName = 'Fax'
      Size = 45
    end
    object QryFamiliaDataUltVisita: TDateTimeField
      FieldName = 'DataUltVisita'
    end
    object QryFamiliaVisitante: TStringField
      FieldName = 'Visitante'
      Size = 255
    end
    object QryFamiliaCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryFamiliaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryFamiliaGrupo: TLargeintField
      FieldName = 'Grupo'
    end
    object QryFamiliaCep: TStringField
      FieldName = 'Cep'
      EditMask = '99999-999;0;'
      FixedChar = True
      Size = 9
    end
  end
  object DSFamilia: TDataSource
    DataSet = QryFamilia
    Left = 624
    Top = 48
  end
  object QryLkpMembros: TMyQuery
    Connection = DMPrincipal.Conn
    SQL.Strings = (
      'Select * from membros'
      'Where CodFamilia = :pCodFamilia'
      'Order by CodmembroAntigo')
    Left = 548
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodFamilia'
      end>
    object QryLkpMembrosCodMembro: TLargeintField
      FieldName = 'CodMembro'
    end
    object QryLkpMembrosCodFamilia: TLargeintField
      FieldName = 'CodFamilia'
    end
    object QryLkpMembrosCodTipoMembro: TLargeintField
      FieldName = 'CodTipoMembro'
    end
    object QryLkpMembrosNomeMembro: TStringField
      FieldName = 'NomeMembro'
      Size = 255
    end
    object QryLkpMembrosNomeSolteiro: TStringField
      FieldName = 'NomeSolteiro'
      Size = 255
    end
    object QryLkpMembrosSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryLkpMembrosEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object QryLkpMembrosTipoSangue: TStringField
      FieldName = 'TipoSangue'
      Size = 45
    end
    object QryLkpMembrosCelular: TStringField
      FieldName = 'Celular'
    end
    object QryLkpMembrosCodEscolaridade: TLargeintField
      FieldName = 'CodEscolaridade'
    end
    object QryLkpMembrosPai: TStringField
      FieldName = 'Pai'
      Size = 255
    end
    object QryLkpMembrosPaiCELC: TStringField
      FieldName = 'PaiCELC'
      FixedChar = True
      Size = 10
    end
    object QryLkpMembrosMae: TStringField
      FieldName = 'Mae'
      Size = 255
    end
    object QryLkpMembrosMaeCELC: TStringField
      FieldName = 'MaeCELC'
      FixedChar = True
      Size = 10
    end
    object QryLkpMembrosDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object QryLkpMembrosNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 255
    end
    object QryLkpMembrosCodEstadoCivil: TLargeintField
      FieldName = 'CodEstadoCivil'
    end
    object QryLkpMembrosNomeConjuge: TStringField
      FieldName = 'NomeConjuge'
      Size = 255
    end
    object QryLkpMembrosDataNascConj: TDateField
      FieldName = 'DataNascConj'
    end
    object QryLkpMembrosConjugeFiliado: TStringField
      FieldName = 'ConjugeFiliado'
      FixedChar = True
      Size = 10
    end
    object QryLkpMembrosReligiaoConjuge: TStringField
      FieldName = 'ReligiaoConjuge'
      Size = 255
    end
    object QryLkpMembrosCodProfissao: TLargeintField
      FieldName = 'CodProfissao'
    end
    object QryLkpMembrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 255
    end
    object QryLkpMembrosCEPEmpresa: TStringField
      FieldName = 'CEPEmpresa'
      Size = 15
    end
    object QryLkpMembrosUFEmpresa: TStringField
      FieldName = 'UFEmpresa'
      FixedChar = True
      Size = 2
    end
    object QryLkpMembrosDDDEmpresa: TStringField
      FieldName = 'DDDEmpresa'
      FixedChar = True
      Size = 10
    end
    object QryLkpMembrosFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      FixedChar = True
    end
    object QryLkpMembrosEmailEmpresa: TStringField
      FieldName = 'EmailEmpresa'
      Size = 255
    end
    object QryLkpMembrosCargo: TStringField
      FieldName = 'Cargo'
      Size = 150
    end
    object QryLkpMembrosRenda: TFloatField
      FieldName = 'Renda'
    end
    object QryLkpMembrosDataAdmisComunidade: TDateTimeField
      FieldName = 'DataAdmisComunidade'
    end
    object QryLkpMembrosCodFormaAdmissao: TLargeintField
      FieldName = 'CodFormaAdmissao'
    end
    object QryLkpMembrosProcedenciaAdmissao: TStringField
      FieldName = 'ProcedenciaAdmissao'
      Size = 255
    end
    object QryLkpMembrosEnvelope: TLargeintField
      FieldName = 'Envelope'
    end
    object QryLkpMembrosDataSaida: TDateField
      FieldName = 'DataSaida'
    end
    object QryLkpMembrosCodMotivoSaida: TLargeintField
      FieldName = 'CodMotivoSaida'
    end
    object QryLkpMembrosDestinoSaida: TStringField
      FieldName = 'DestinoSaida'
      Size = 255
    end
    object QryLkpMembrosFotoCaminho: TStringField
      FieldName = 'FotoCaminho'
      Size = 255
    end
    object QryLkpMembrosRG: TStringField
      FieldName = 'RG'
    end
    object QryLkpMembrosCPF: TStringField
      FieldName = 'CPF'
      Size = 40
    end
    object QryLkpMembrosCodUsuario: TLargeintField
      FieldName = 'CodUsuario'
    end
    object QryLkpMembrosDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object QryLkpMembrosDataConfirmacao: TDateField
      FieldName = 'DataConfirmacao'
    end
    object QryLkpMembrosDataBatismo: TDateField
      FieldName = 'DataBatismo'
    end
    object QryLkpMembrosFiliado: TStringField
      FieldName = 'Filiado'
      FixedChar = True
      Size = 10
    end
    object QryLkpMembrosDataAtivo: TDateTimeField
      FieldName = 'DataAtivo'
    end
    object QryLkpMembrosNumVezes: TLargeintField
      FieldName = 'NumVezes'
    end
    object QryLkpMembrosVotante: TDateTimeField
      FieldName = 'Votante'
    end
    object QryLkpMembrosCidadeEmpresa: TStringField
      FieldName = 'CidadeEmpresa'
      Size = 200
    end
    object QryLkpMembrosEnderecoEmpresa: TStringField
      FieldName = 'EnderecoEmpresa'
      Size = 250
    end
    object QryLkpMembrosComplEmpresa: TStringField
      FieldName = 'ComplEmpresa'
      Size = 45
    end
    object QryLkpMembrosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 250
    end
    object QryLkpMembrosCompl: TStringField
      FieldName = 'Compl'
      Size = 150
    end
    object QryLkpMembrosCidade: TStringField
      FieldName = 'Cidade'
      Size = 150
    end
    object QryLkpMembrosBairro: TStringField
      FieldName = 'Bairro'
      Size = 150
    end
    object QryLkpMembrosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 12
    end
    object QryLkpMembrosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object QryLkpMembrosTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
    end
    object QryLkpMembrosEnderecoDesatualizado: TBooleanField
      FieldName = 'EnderecoDesatualizado'
    end
    object QryLkpMembrosTelefoneDesatualizado: TBooleanField
      FieldName = 'TelefoneDesatualizado'
    end
    object QryLkpMembrosCelularDesatualizado: TBooleanField
      FieldName = 'CelularDesatualizado'
    end
    object QryLkpMembrosEmailDesatualizado: TBooleanField
      FieldName = 'EmailDesatualizado'
    end
    object QryLkpMembrosCodMembroAntigo: TLargeintField
      FieldName = 'CodMembroAntigo'
    end
  end
  object DSLkpMembros: TDataSource
    DataSet = QryLkpMembros
    Left = 548
    Top = 52
  end
end
