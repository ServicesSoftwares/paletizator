inherited frmCadastroEmpresas: TfrmCadastroEmpresas
  ActiveControl = dbedtCNPJ
  Caption = 'Cadastro de Empresa'
  ClientHeight = 335
  ClientWidth = 932
  OnShow = FormShow
  ExplicitWidth = 938
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 316
    Width = 932
    ExplicitTop = 316
    ExplicitWidth = 932
  end
  inherited pnBase: TPanel
    Width = 932
    Height = 261
    ExplicitWidth = 932
    ExplicitHeight = 261
    object Label1: TLabel
      Left = 132
      Top = 26
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 131
      Top = 49
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ: *'
      FocusControl = dbedtCNPJ
    end
    object Label3: TLabel
      Left = 96
      Top = 73
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Raz'#227'o Social: *'
      FocusControl = dbedtRazaoSocial
    end
    object Label4: TLabel
      Left = 85
      Top = 96
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Fantasia: *'
      FocusControl = dbedtNomeFantasia
    end
    object Label5: TLabel
      Left = 137
      Top = 120
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'CEP: *'
      FocusControl = dbedtCEP
    end
    object Label6: TLabel
      Left = 364
      Top = 120
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o: *'
      FocusControl = dbedtEndereco
    end
    object Label7: TLabel
      Left = 119
      Top = 144
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero: *'
      FocusControl = dbedtNumero
    end
    object Label8: TLabel
      Left = 353
      Top = 144
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Complemento:'
      FocusControl = dbedtComplemento
    end
    object Label9: TLabel
      Left = 128
      Top = 167
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bairro: *'
      FocusControl = dbedtBairro
    end
    object Label10: TLabel
      Left = 123
      Top = 191
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estado: *'
      FocusControl = dbedtEstado
    end
    object Label11: TLabel
      Left = 376
      Top = 191
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade: *'
      FocusControl = dbedtCidade
    end
    object Label12: TLabel
      Left = 115
      Top = 214
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o: *'
      FocusControl = dbedtEstado
    end
    object dbspdCodigo: TJvDBSpinEdit
      Left = 175
      Top = 23
      Width = 88
      Height = 21
      Enabled = False
      TabOrder = 0
      DataField = 'ID'
      DataSource = DS
    end
    object dbedtCNPJ: TDBEdit
      Left = 175
      Top = 46
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = DS
      TabOrder = 1
    end
    object dbedtRazaoSocial: TDBEdit
      Left = 175
      Top = 69
      Width = 687
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RAZAO_SOCIAL'
      DataSource = DS
      TabOrder = 2
    end
    object dbedtNomeFantasia: TDBEdit
      Left = 175
      Top = 93
      Width = 687
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_FANTASIA'
      DataSource = DS
      TabOrder = 3
    end
    object dbedtCEP: TDBEdit
      Left = 175
      Top = 117
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = DS
      TabOrder = 4
    end
    object dbedtEndereco: TDBEdit
      Left = 428
      Top = 117
      Width = 434
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DS
      TabOrder = 5
    end
    object dbedtNumero: TDBEdit
      Left = 175
      Top = 141
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DS
      TabOrder = 6
    end
    object dbedtComplemento: TDBEdit
      Left = 428
      Top = 141
      Width = 434
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = DS
      TabOrder = 7
    end
    object dbedtBairro: TDBEdit
      Left = 175
      Top = 164
      Width = 687
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DS
      TabOrder = 8
    end
    object dbedtEstado: TDBEdit
      Left = 175
      Top = 188
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADO'
      DataSource = DS
      TabOrder = 9
    end
    object dbedtCidade: TDBEdit
      Left = 428
      Top = 188
      Width = 434
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DS
      TabOrder = 10
    end
    object dbcbSituacao: TJvDBComboBox
      Left = 175
      Top = 211
      Width = 134
      Height = 21
      DataField = 'SITUACAO'
      DataSource = DS
      Items.Strings = (
        '0 - INATIVO'
        '1 - ATIVO')
      TabOrder = 11
      Values.Strings = (
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited ToolBar: TToolBar
    Width = 932
    ExplicitTop = 0
    ExplicitWidth = 932
    inherited btnSalvar: TToolButton
      OnClick = btnSalvarClick
    end
    inherited btnPesquisar: TToolButton
      OnClick = btnPesquisarClick
    end
  end
  inherited ImageList: TcxImageList
    FormatVersion = 1
  end
  object qryEmpresas: TFDQuery
    AfterInsert = qryEmpresasAfterInsert
    AfterEdit = qryEmpresasAfterEdit
    Connection = DM.FDCONN
    SQL.Strings = (
      'SELECT * FROM TBEMPRESAS A'
      ' WHERE A.ID = :PEMPRESA')
    Left = 576
    Top = 7
    ParamData = <
      item
        Name = 'PEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEmpresasID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;1;_'
    end
    object qryEmpresasRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 80
    end
    object qryEmpresasNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 80
    end
    object qryEmpresasCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00\.000\-999;1;_'
      Size = 10
    end
    object qryEmpresasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 80
    end
    object qryEmpresasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 80
    end
    object qryEmpresasCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 80
    end
    object qryEmpresasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 80
    end
    object qryEmpresasESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object qryEmpresasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object qryEmpresasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
    end
    object qryEmpresasDATA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
      Required = True
    end
    object qryEmpresasIDUSUARIO_INCLUSAO: TIntegerField
      FieldName = 'IDUSUARIO_INCLUSAO'
      Origin = 'IDUSUARIO_INCLUSAO'
      Required = True
    end
    object qryEmpresasDATA_ULT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULT_ALTERACAO'
      Origin = 'DATA_ULT_ALTERACAO'
    end
    object qryEmpresasIDUSUARIO_ULT_ALTERACAO: TIntegerField
      FieldName = 'IDUSUARIO_ULT_ALTERACAO'
      Origin = 'IDUSUARIO_ULT_ALTERACAO'
    end
  end
  object DS: TDataSource
    DataSet = qryEmpresas
    Left = 608
    Top = 8
  end
end
