inherited frmGeraProgramaPalete: TfrmGeraProgramaPalete
  Caption = 'Gera'#231#227'o de programa do palete'
  ClientHeight = 326
  ClientWidth = 988
  OnShow = FormShow
  ExplicitWidth = 994
  ExplicitHeight = 375
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 307
    Width = 988
    ExplicitTop = 307
    ExplicitWidth = 988
  end
  inherited pnBase: TPanel
    Width = 988
    Height = 252
    ExplicitWidth = 988
    ExplicitHeight = 252
    object GroupBox1: TGroupBox
      Left = 8
      Top = 6
      Width = 961
      Height = 235
      Caption = 'Dados Iniciais'
      TabOrder = 0
      object Label1: TLabel
        Left = 140
        Top = 23
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 20
        Top = 47
        Width = 157
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qual robo vai ser Programado? *'
      end
      object Label3: TLabel
        Left = 141
        Top = 71
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data: *'
      end
      object dbspdCodigo: TJvDBSpinEdit
        Left = 183
        Top = 20
        Width = 88
        Height = 21
        Enabled = False
        TabOrder = 0
        DataField = 'ID'
        DataSource = DS
      end
      object dbspdCodRobo: TJvDBSpinEdit
        Left = 183
        Top = 44
        Width = 88
        Height = 21
        TabOrder = 1
        DataField = 'IDROBO'
        DataSource = DS
      end
      object dblkpRobo: TcxDBLookupComboBox
        Left = 273
        Top = 44
        DataBinding.DataField = 'IDROBO'
        DataBinding.DataSource = DS
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dsRobo
        TabOrder = 2
        OnEnter = dblkpRoboEnter
        Width = 626
      end
      object btnBuscarRobo: TcxButton
        Left = 899
        Top = 42
        Width = 26
        Height = 25
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC200000EC20115284A8000000012744558745469
          746C650046696E643B5365617263683BAD078F620000016A49444154785EA591
          CD4A02611486BD8A46A789F1278568DFD65DB408341A1DB5C69F748CB983C84D
          942EEC565A0981E6FC383FB60964EA0A0A6951B619086C33703A332048F6CDC6
          17DE8FB3799F73CE774200B096FD67A16DD14CC71B660FFD1EAB1B9E7BD19A99
          0EAD6A159014CD56B26941EA7C0C471D1BB2373624C43144AB06B015BD1504F0
          3B27450B326D1BA65F3FB090571F5E4D802D8F80A98C0E8800EC64ED4A8F7EE0
          AF5E3FE6906A18C008EA3D11106F584EF1F60548CA759E8139D1666440DD740A
          5D32806BDB0850C880E89961ED4816BC7DCEFF5D2151D7812E05ACE09D8AAD99
          AEF761D3D9D22762BD7FF9049B25052225B51D7846B632BAC07341ACAA43F67A
          0219342B6818D6BC30448AAA4BF3324F02F862CACADE96A0F79953CDA105348E
          4D17D52E861180531414974208014056981F4A1886302F4398935D8A93791280
          0CE18612951F009597813AEE7F1300C1DAC83D34A97CDFD9E00677CB8075BC3E
          E0171A811CE8F7E0E9CD0000000049454E44AE426082}
        TabOrder = 3
      end
      object dbdtpDataPrograma: TJvDBDateEdit
        Left = 183
        Top = 68
        Width = 114
        Height = 21
        DataField = 'DATA_PROG'
        DataSource = DS
        ShowNullDate = False
        TabOrder = 4
      end
      object gpDadosPalete: TGroupBox
        Left = 183
        Top = 95
        Width = 330
        Height = 133
        Caption = 'Dados Palete'
        TabOrder = 5
        object Image4: TImage
          Left = 16
          Top = 16
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object Image7: TImage
          Left = 16
          Top = 89
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object Image5: TImage
          Left = 16
          Top = 53
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object Label4: TLabel
          Left = 24
          Top = 24
          Width = 77
          Height = 13
          Caption = 'Comprimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label5: TLabel
          Left = 24
          Top = 61
          Width = 44
          Height = 13
          Caption = 'Largura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label6: TLabel
          Left = 24
          Top = 98
          Width = 52
          Height = 13
          Caption = 'Camadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object JvDBSpinEdit1: TJvDBSpinEdit
          Left = 135
          Top = 19
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'PALETE_COMPRIMENTO'
          DataSource = DS
        end
        object JvDBSpinEdit2: TJvDBSpinEdit
          Left = 135
          Top = 56
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'PALETE_LARGURA'
          DataSource = DS
        end
        object JvDBSpinEdit3: TJvDBSpinEdit
          Left = 135
          Top = 93
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'PALETE_CAMADAS'
          DataSource = DS
        end
      end
      object GroupBox2: TGroupBox
        Left = 569
        Top = 95
        Width = 330
        Height = 133
        Caption = 'Dados da caixa'
        TabOrder = 6
        object background_label_Image: TImage
          Left = 13
          Top = 16
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object YourID_Label: TLabel
          Left = 21
          Top = 24
          Width = 77
          Height = 13
          Caption = 'Comprimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object background_label_Image2: TImage
          Left = 13
          Top = 53
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object YourPassword_Label: TLabel
          Left = 21
          Top = 61
          Width = 44
          Height = 13
          Caption = 'Largura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Image1: TImage
          Left = 13
          Top = 89
          Width = 113
          Height = 33
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000710000
            00210806000000EEF04427000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC6105000000097048597300000B1300000B1301009A9C18000000
            B64944415478DAEDDB510E8320100051399DDEB8DCCEC6BFA6A9B15816769A79
            17F063425458CABA6EFBA230B53E4AF4338A11C7888C69C481A2421A7182DE31
            8D3851AF98469CAC47482326F14B4C23267237A411136A8D69C4A45A421A31B9
            6F621A11E02AA41141CE621A11E653482342BDC63422DC11D3887FC08870AE44
            30DF8970EF5FA84604F13F11CC1D1B38F74EC13CC580F33C11CC937D38676CC0
            9C768373EE14CC0970B888FB18461CC45B5170D177149F303C819743AC9BB300
            00000049454E44AE426082}
          Stretch = True
        end
        object Label7: TLabel
          Left = 21
          Top = 98
          Width = 35
          Height = 13
          Caption = 'Altura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object JvDBSpinEdit4: TJvDBSpinEdit
          Left = 132
          Top = 19
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DataField = 'CAIXA_COMPRIMENTO'
          DataSource = DS
        end
        object JvDBSpinEdit5: TJvDBSpinEdit
          Left = 132
          Top = 56
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DataField = 'CAIXA_LARGURA'
          DataSource = DS
        end
        object JvDBSpinEdit6: TJvDBSpinEdit
          Left = 132
          Top = 93
          Width = 181
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DataField = 'CAIXA_ALTURA'
          DataSource = DS
        end
      end
    end
  end
  inherited ToolBar: TToolBar
    Width = 988
    ExplicitWidth = 988
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
  object qryPrograma: TFDQuery
    AfterInsert = qryProgramaAfterInsert
    AfterEdit = qryProgramaAfterEdit
    Connection = DM.FDCONN
    SQL.Strings = (
      'SELECT * FROM TBPROGRAMACAO A'
      ' WHERE A.ID = :PID')
    Left = 608
    Top = 9
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryProgramaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProgramaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      Required = True
    end
    object qryProgramaIDROBO: TIntegerField
      FieldName = 'IDROBO'
      Origin = 'IDROBO'
      Required = True
    end
    object qryProgramaDATA_PROG: TDateField
      FieldName = 'DATA_PROG'
      Origin = 'DATA_PROG'
      Required = True
    end
    object qryProgramaPALETE_COMPRIMENTO: TIntegerField
      FieldName = 'PALETE_COMPRIMENTO'
      Origin = 'PALETE_COMPRIMENTO'
      Required = True
    end
    object qryProgramaPALETE_LARGURA: TIntegerField
      FieldName = 'PALETE_LARGURA'
      Origin = 'PALETE_LARGURA'
      Required = True
    end
    object qryProgramaPALETE_CAMADAS: TIntegerField
      FieldName = 'PALETE_CAMADAS'
      Origin = 'PALETE_CAMADAS'
      Required = True
    end
    object qryProgramaCAIXA_COMPRIMENTO: TIntegerField
      FieldName = 'CAIXA_COMPRIMENTO'
      Origin = 'CAIXA_COMPRIMENTO'
      Required = True
    end
    object qryProgramaCAIXA_LARGURA: TIntegerField
      FieldName = 'CAIXA_LARGURA'
      Origin = 'CAIXA_LARGURA'
      Required = True
    end
    object qryProgramaCAIXA_ALTURA: TIntegerField
      FieldName = 'CAIXA_ALTURA'
      Origin = 'CAIXA_ALTURA'
      Required = True
    end
    object qryProgramaPROGRAMA: TStringField
      FieldName = 'PROGRAMA'
      Origin = 'PROGRAMA'
      Required = True
      Size = 5000
    end
    object qryProgramaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
    end
    object qryProgramaDATA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
      Required = True
    end
    object qryProgramaIDUSUARIO_INCLUSAO: TIntegerField
      FieldName = 'IDUSUARIO_INCLUSAO'
      Origin = 'IDUSUARIO_INCLUSAO'
      Required = True
    end
    object qryProgramaDATA_ULT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULT_ALTERACAO'
      Origin = 'DATA_ULT_ALTERACAO'
    end
    object qryProgramaIDUSUARIO_ULT_ALTERACAO: TIntegerField
      FieldName = 'IDUSUARIO_ULT_ALTERACAO'
      Origin = 'IDUSUARIO_ULT_ALTERACAO'
    end
  end
  object DS: TDataSource
    DataSet = qryPrograma
    Left = 576
    Top = 10
  end
  object qryRobo: TFDQuery
    Connection = DM.FDCONN
    SQL.Strings = (
      'SELECT * FROM TBROBO A'
      ' WHERE A.IDEMPRESA = :PEMPRESA')
    Left = 768
    Top = 93
    ParamData = <
      item
        Name = 'PEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryRoboID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRoboIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object qryRoboNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object qryRoboTIPO_COMUNICAO: TIntegerField
      FieldName = 'TIPO_COMUNICAO'
      Origin = 'TIPO_COMUNICAO'
      Required = True
    end
    object qryRoboHOST_IP: TStringField
      FieldName = 'HOST_IP'
      Origin = 'HOST_IP'
      Size = 10
    end
    object qryRoboPORTA: TIntegerField
      FieldName = 'PORTA'
      Origin = 'PORTA'
    end
    object qryRoboTIMEOUT: TIntegerField
      FieldName = 'TIMEOUT'
      Origin = 'TIMEOUT'
    end
    object qryRoboAGUARDAR_PC_SENSOR: TStringField
      FieldName = 'AGUARDAR_PC_SENSOR'
      Origin = 'AGUARDAR_PC_SENSOR'
      Size = 2500
    end
    object qryRoboFECHAR_GARRA: TStringField
      FieldName = 'FECHAR_GARRA'
      Origin = 'FECHAR_GARRA'
      Size = 2500
    end
    object qryRoboABRIR_GARRA: TStringField
      FieldName = 'ABRIR_GARRA'
      Origin = 'ABRIR_GARRA'
      Size = 2500
    end
    object qryRoboREPOSICIONA_GARRA: TStringField
      FieldName = 'REPOSICIONA_GARRA'
      Origin = 'REPOSICIONA_GARRA'
      Size = 2500
    end
    object qryRoboFIM_PALETE: TStringField
      FieldName = 'FIM_PALETE'
      Origin = 'FIM_PALETE'
      Size = 2500
    end
    object qryRoboINICIO_PALETE: TStringField
      FieldName = 'INICIO_PALETE'
      Origin = 'INICIO_PALETE'
      Size = 2500
    end
    object qryRoboPONTO0_PALLETE_X: TIntegerField
      FieldName = 'PONTO0_PALLETE_X'
      Origin = 'PONTO0_PALLETE_X'
    end
    object qryRoboPONTO0_PALLETE_Y: TIntegerField
      FieldName = 'PONTO0_PALLETE_Y'
      Origin = 'PONTO0_PALLETE_Y'
    end
    object qryRoboPONTO0_PALLETE_Z: TIntegerField
      FieldName = 'PONTO0_PALLETE_Z'
      Origin = 'PONTO0_PALLETE_Z'
    end
    object qryRoboPONTO0_MAGAZINE_X: TIntegerField
      FieldName = 'PONTO0_MAGAZINE_X'
      Origin = 'PONTO0_MAGAZINE_X'
    end
    object qryRoboPONTO0_MAGAZINE_Y: TIntegerField
      FieldName = 'PONTO0_MAGAZINE_Y'
      Origin = 'PONTO0_MAGAZINE_Y'
    end
    object qryRoboPONTO_INTERSEG_B_X: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_X'
      Origin = 'PONTO_INTERSEG_B_X'
    end
    object qryRoboPONTO_INTERSEG_B_Y: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_Y'
      Origin = 'PONTO_INTERSEG_B_Y'
    end
    object qryRoboPONTO_INTERSEG_B_Z: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_Z'
      Origin = 'PONTO_INTERSEG_B_Z'
    end
    object qryRoboPONTO_INTERSEG_A_X: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_X'
      Origin = 'PONTO_INTERSEG_A_X'
    end
    object qryRoboPONTO_INTERSEG_A_Y: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_Y'
      Origin = 'PONTO_INTERSEG_A_Y'
    end
    object qryRoboPONTO_INTERSEG_A_Z: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_Z'
      Origin = 'PONTO_INTERSEG_A_Z'
    end
    object qryRoboPONTO_SEGRET_X: TIntegerField
      FieldName = 'PONTO_SEGRET_X'
      Origin = 'PONTO_SEGRET_X'
    end
    object qryRoboPONTO_SEGRET_Y: TIntegerField
      FieldName = 'PONTO_SEGRET_Y'
      Origin = 'PONTO_SEGRET_Y'
    end
    object qryRoboPONTO_SEGRET_Z: TIntegerField
      FieldName = 'PONTO_SEGRET_Z'
      Origin = 'PONTO_SEGRET_Z'
    end
    object qryRoboPONTO_SEGRET_CURVA_Z: TIntegerField
      FieldName = 'PONTO_SEGRET_CURVA_Z'
      Origin = 'PONTO_SEGRET_CURVA_Z'
    end
    object qryRoboPONTO_SUPMESA_X: TIntegerField
      FieldName = 'PONTO_SUPMESA_X'
      Origin = 'PONTO_SUPMESA_X'
    end
    object qryRoboPONTO_SUPMESA_Y: TIntegerField
      FieldName = 'PONTO_SUPMESA_Y'
      Origin = 'PONTO_SUPMESA_Y'
    end
    object qryRoboPONTO_SUPMESA_ESP_ENC: TIntegerField
      FieldName = 'PONTO_SUPMESA_ESP_ENC'
      Origin = 'PONTO_SUPMESA_ESP_ENC'
    end
    object qryRoboPONTO_SUPMESA_CENTROY: TIntegerField
      FieldName = 'PONTO_SUPMESA_CENTROY'
      Origin = 'PONTO_SUPMESA_CENTROY'
    end
    object qryRoboPONTO_SUPMESA_POS_BATY: TIntegerField
      FieldName = 'PONTO_SUPMESA_POS_BATY'
      Origin = 'PONTO_SUPMESA_POS_BATY'
    end
    object qryRoboPONTO_INFMESA_Y: TIntegerField
      FieldName = 'PONTO_INFMESA_Y'
      Origin = 'PONTO_INFMESA_Y'
    end
    object qryRoboPONTO_INFMESA_ROLETES: TIntegerField
      FieldName = 'PONTO_INFMESA_ROLETES'
      Origin = 'PONTO_INFMESA_ROLETES'
    end
    object qryRoboPONTO_INFMESA_LIVRE: TIntegerField
      FieldName = 'PONTO_INFMESA_LIVRE'
      Origin = 'PONTO_INFMESA_LIVRE'
    end
    object qryRoboALTURA_MESA_Z_ALIN: TIntegerField
      FieldName = 'ALTURA_MESA_Z_ALIN'
      Origin = 'ALTURA_MESA_Z_ALIN'
    end
    object qryRoboALTURA_MESA_Z_MESAMIN: TIntegerField
      FieldName = 'ALTURA_MESA_Z_MESAMIN'
      Origin = 'ALTURA_MESA_Z_MESAMIN'
    end
    object qryRoboALTURA_MESA_OFFSET_UP: TIntegerField
      FieldName = 'ALTURA_MESA_OFFSET_UP'
      Origin = 'ALTURA_MESA_OFFSET_UP'
    end
    object qryRoboALTURA_MESA_PONTO_Z: TIntegerField
      FieldName = 'ALTURA_MESA_PONTO_Z'
      Origin = 'ALTURA_MESA_PONTO_Z'
    end
    object qryRoboALTURA_MESA_CURVA_CICLO: TIntegerField
      FieldName = 'ALTURA_MESA_CURVA_CICLO'
      Origin = 'ALTURA_MESA_CURVA_CICLO'
    end
    object qryRoboOFFSET_ALTURA: TIntegerField
      FieldName = 'OFFSET_ALTURA'
      Origin = 'OFFSET_ALTURA'
    end
    object qryRoboOFFSET_APPROC: TIntegerField
      FieldName = 'OFFSET_APPROC'
      Origin = 'OFFSET_APPROC'
    end
    object qryRoboOFFSET_GARRA: TIntegerField
      FieldName = 'OFFSET_GARRA'
      Origin = 'OFFSET_GARRA'
    end
    object qryRoboZ_PALETE: TIntegerField
      FieldName = 'Z_PALETE'
      Origin = 'Z_PALETE'
    end
    object qryRoboOS_Z_RETORNO: TIntegerField
      FieldName = 'OS_Z_RETORNO'
      Origin = 'OS_Z_RETORNO'
    end
    object qryRoboVEL_PEGADA: TIntegerField
      FieldName = 'VEL_PEGADA'
      Origin = 'VEL_PEGADA'
    end
    object qryRoboVEL_SOLTURA: TIntegerField
      FieldName = 'VEL_SOLTURA'
      Origin = 'VEL_SOLTURA'
    end
    object qryRoboVEL_LINEAR: TIntegerField
      FieldName = 'VEL_LINEAR'
      Origin = 'VEL_LINEAR'
    end
    object qryRoboY_MESA_LIVRE: TIntegerField
      FieldName = 'Y_MESA_LIVRE'
      Origin = 'Y_MESA_LIVRE'
    end
    object qryRoboOS_ENCOSTO: TIntegerField
      FieldName = 'OS_ENCOSTO'
      Origin = 'OS_ENCOSTO'
    end
    object qryRoboZ_PEGADA: TIntegerField
      FieldName = 'Z_PEGADA'
      Origin = 'Z_PEGADA'
    end
    object qryRoboCURVA_PEGADA: TIntegerField
      FieldName = 'CURVA_PEGADA'
      Origin = 'CURVA_PEGADA'
    end
    object qryRoboPOS_BATENTE_Y: TIntegerField
      FieldName = 'POS_BATENTE_Y'
      Origin = 'POS_BATENTE_Y'
    end
    object qryRoboOFFSET_SUBIDA: TIntegerField
      FieldName = 'OFFSET_SUBIDA'
      Origin = 'OFFSET_SUBIDA'
    end
    object qryRoboVEL_SUBIDA: TIntegerField
      FieldName = 'VEL_SUBIDA'
      Origin = 'VEL_SUBIDA'
    end
    object qryRoboCURVA_AFAST: TIntegerField
      FieldName = 'CURVA_AFAST'
      Origin = 'CURVA_AFAST'
    end
    object qryRoboDATA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
      Required = True
    end
    object qryRoboIDUSUARIO_INCLUSAO: TIntegerField
      FieldName = 'IDUSUARIO_INCLUSAO'
      Origin = 'IDUSUARIO_INCLUSAO'
      Required = True
    end
    object qryRoboDATA_ULT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULT_ALTERACAO'
      Origin = 'DATA_ULT_ALTERACAO'
    end
    object qryRoboIDUSUARIO_ULT_ALTERACAO: TIntegerField
      FieldName = 'IDUSUARIO_ULT_ALTERACAO'
      Origin = 'IDUSUARIO_ULT_ALTERACAO'
    end
    object qryRoboCENTRO_ESTEIRA_Y: TIntegerField
      FieldName = 'CENTRO_ESTEIRA_Y'
      Origin = 'CENTRO_ESTEIRA_Y'
    end
  end
  object dsRobo: TDataSource
    DataSet = qryRobo
    Left = 800
    Top = 93
  end
end
