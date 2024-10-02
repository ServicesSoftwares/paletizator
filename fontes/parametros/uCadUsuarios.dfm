inherited frmCadastroUsuarios: TfrmCadastroUsuarios
  ActiveControl = dbcbTipoUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 244
  OnShow = FormShow
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 225
    ExplicitTop = 225
  end
  inherited pnBase: TPanel
    Height = 170
    ExplicitHeight = 170
    object Label1: TLabel
      Left = 127
      Top = 26
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 77
      Top = 50
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo de Usu'#225'rio: *'
    end
    object Label3: TLabel
      Left = 115
      Top = 73
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio: *'
      FocusControl = dbedtUsuario
    end
    object Label4: TLabel
      Left = 76
      Top = 96
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Completo: *'
      FocusControl = dbedtNomeCompleto
    end
    object Label5: TLabel
      Left = 110
      Top = 119
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o: *'
    end
    object Label6: TLabel
      Left = 513
      Top = 73
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Senha: *'
      FocusControl = dbedtSenha
    end
    object dbspdCodigo: TJvDBSpinEdit
      Left = 170
      Top = 23
      Width = 88
      Height = 21
      TabOrder = 0
      DataField = 'ID'
      DataSource = DS
    end
    object dbcbTipoUsuario: TJvDBComboBox
      Left = 170
      Top = 47
      Width = 320
      Height = 21
      DataField = 'TIPO'
      DataSource = DS
      Items.Strings = (
        '2 - PROGRAMADOR'
        '3 - GUEST(USUARIO S'#211' VISUALIZACO)')
      TabOrder = 1
      Values.Strings = (
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dbedtUsuario: TDBEdit
      Left = 170
      Top = 70
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      DataField = 'USUARIO'
      DataSource = DS
      TabOrder = 2
    end
    object dbedtNomeCompleto: TDBEdit
      Left = 170
      Top = 93
      Width = 544
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DS
      TabOrder = 4
    end
    object dbcbSituacao: TJvDBComboBox
      Left = 170
      Top = 116
      Width = 320
      Height = 21
      DataField = 'SITUACAO'
      DataSource = DS
      Items.Strings = (
        '0 - INATIVO'
        '1 - ATIVO')
      TabOrder = 5
      Values.Strings = (
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object dbedtSenha: TDBEdit
      Left = 562
      Top = 70
      Width = 152
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SENHA'
      DataSource = DS
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  inherited ToolBar: TToolBar
    inherited btnSalvar: TToolButton
      OnClick = btnSalvarClick
    end
    inherited btnPesquisar: TToolButton
      OnClick = btnPesquisarClick
    end
  end
  object DS: TDataSource [5]
    DataSet = qryUsuarios
    Left = 616
    Top = 8
  end
  object qryUsuarios: TFDQuery [6]
    AfterInsert = qryUsuariosAfterInsert
    AfterEdit = qryUsuariosAfterEdit
    Connection = DM.FDCONN
    SQL.Strings = (
      'SELECT * FROM TBUSUARIOS A'
      ' WHERE A.ID = :PID')
    Left = 584
    Top = 7
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryUsuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuariosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object qryUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 32
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 80
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 32
    end
    object qryUsuariosSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
    end
    object qryUsuariosDATA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
      Required = True
    end
    object qryUsuariosIDUSUARIO_INCLUSAO: TIntegerField
      FieldName = 'IDUSUARIO_INCLUSAO'
      Origin = 'IDUSUARIO_INCLUSAO'
      Required = True
    end
    object qryUsuariosDATA_ULT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULT_ALTERACAO'
      Origin = 'DATA_ULT_ALTERACAO'
    end
    object qryUsuariosIDUSUARIO_ULT_ALTERACAO: TIntegerField
      FieldName = 'IDUSUARIO_ULT_ALTERACAO'
      Origin = 'IDUSUARIO_ULT_ALTERACAO'
    end
  end
  inherited ImageList: TcxImageList
    FormatVersion = 1
  end
end
