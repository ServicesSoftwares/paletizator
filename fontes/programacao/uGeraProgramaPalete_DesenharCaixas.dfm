inherited frmDesenharPalete: TfrmDesenharPalete
  Caption = 'Desenho Palete'
  ClientHeight = 589
  ClientWidth = 1172
  OnShow = FormShow
  ExplicitWidth = 1178
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 570
    Width = 1172
    ExplicitTop = 526
    ExplicitWidth = 1172
  end
  inherited pnBase: TPanel
    Width = 1172
    Height = 515
    ExplicitTop = 49
    ExplicitWidth = 1172
    ExplicitHeight = 471
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1170
      Height = 513
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      ExplicitLeft = 376
      ExplicitTop = 392
      ExplicitWidth = 289
      ExplicitHeight = 193
      ClientRectBottom = 513
      ClientRectRight = 1170
      ClientRectTop = 20
      object cxTabSheet1: TcxTabSheet
        Caption = 'Paletiza'#231#227'o'
        ImageIndex = 0
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 281
        ExplicitHeight = 165
        object Label4: TLabel
          Left = 524
          Top = 45
          Width = 18
          Height = 13
          Caption = '000'
        end
        object Label6: TLabel
          Left = 634
          Top = 45
          Width = 18
          Height = 13
          Caption = '000'
        end
        object Label7: TLabel
          Left = 426
          Top = 291
          Width = 81
          Height = 16
          Caption = 'CX CAMADA 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 426
          Top = 308
          Width = 26
          Height = 25
          Caption = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 660
          Top = 291
          Width = 81
          Height = 16
          Caption = 'CX CAMADA 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 715
          Top = 308
          Width = 26
          Height = 25
          Caption = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 524
          Top = 17
          Width = 96
          Height = 16
          Caption = 'Centro da Caixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 626
          Top = 9
          Width = 26
          Height = 25
          Caption = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image2: TImage
          Left = 742
          Top = 3
          Width = 425
          Height = 145
          Visible = False
        end
        object Label13: TLabel
          Left = 511
          Top = 441
          Width = 109
          Height = 13
          Caption = 'CX TOTAL DO PALETE:'
        end
        object Label12: TLabel
          Left = 626
          Top = 431
          Width = 26
          Height = 25
          Caption = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 426
          Top = 71
          Width = 8
          Height = 16
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 486
          Top = 71
          Width = 7
          Height = 16
          Caption = 'Y'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 546
          Top = 71
          Width = 7
          Height = 16
          Caption = 'Z'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 595
          Top = 71
          Width = 8
          Height = 16
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 655
          Top = 71
          Width = 7
          Height = 16
          Caption = 'Y'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 715
          Top = 71
          Width = 7
          Height = 16
          Caption = 'Z'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 582
          Top = 71
          Width = 2
          Height = 257
        end
        object Panel1: TPanel
          Left = 7
          Top = 17
          Width = 400
          Height = 400
          BorderStyle = bsSingle
          TabOrder = 0
          object Image3: TImage
            Left = 2
            Top = -2
            Width = 400
            Height = 400
          end
        end
        object Button3: TButton
          Left = 426
          Top = 16
          Width = 75
          Height = 25
          Caption = 'ADD CX'
          TabOrder = 1
          OnClick = Button3Click
        end
        object PLX1: TEdit
          Left = 426
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object PLY1: TEdit
          Left = 486
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
          Text = '0'
        end
        object PLW1: TEdit
          Left = 546
          Top = 93
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
          Text = '0'
        end
        object PLX2: TEdit
          Left = 426
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 5
          Text = '0'
        end
        object PLY2: TEdit
          Left = 486
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 6
          Text = '0'
        end
        object PLW2: TEdit
          Left = 546
          Top = 115
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 7
          Text = '0'
        end
        object Edit1: TEdit
          Left = 534
          Top = 334
          Width = 98
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '500'
        end
        object Edit2: TEdit
          Left = 534
          Top = 359
          Width = 98
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = '1200'
        end
        object Edit3: TEdit
          Left = 534
          Top = 384
          Width = 98
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '-405'
        end
        object Panel2: TPanel
          Left = 762
          Top = 17
          Width = 400
          Height = 400
          BorderStyle = bsSingle
          TabOrder = 11
          object Image6: TImage
            Left = -2
            Top = -2
            Width = 400
            Height = 400
          end
        end
        object Button5: TButton
          Left = 426
          Top = 40
          Width = 75
          Height = 25
          Caption = 'DEL CX'
          TabOrder = 12
          OnClick = Button5Click
        end
        object PLX3: TEdit
          Left = 426
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 13
          Text = '0'
        end
        object PLY3: TEdit
          Left = 486
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 14
          Text = '0'
        end
        object PLW3: TEdit
          Left = 546
          Top = 137
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 15
          Text = '0'
        end
        object PLX4: TEdit
          Left = 426
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 16
          Text = '0'
        end
        object PLY4: TEdit
          Left = 486
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 17
          Text = '0'
        end
        object PLW4: TEdit
          Left = 546
          Top = 159
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 18
          Text = '0'
        end
        object PLX5: TEdit
          Left = 426
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 19
          Text = '0'
        end
        object PLY5: TEdit
          Left = 486
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 20
          Text = '0'
        end
        object PLW5: TEdit
          Left = 546
          Top = 180
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 21
          Text = '0'
        end
        object PLX6: TEdit
          Left = 426
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 22
          Text = '0'
        end
        object PLY6: TEdit
          Left = 486
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 23
          Text = '0'
        end
        object PLW6: TEdit
          Left = 546
          Top = 202
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 24
          Text = '0'
        end
        object PLX7: TEdit
          Left = 426
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 25
          Text = '0'
        end
        object PLY7: TEdit
          Left = 486
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 26
          Text = '0'
        end
        object PLW7: TEdit
          Left = 546
          Top = 224
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 27
          Text = '0'
        end
        object PLX8: TEdit
          Left = 426
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 28
          Text = '0'
        end
        object PLY8: TEdit
          Left = 486
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 29
          Text = '0'
        end
        object PLW8: TEdit
          Left = 546
          Top = 246
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 30
          Text = '0'
        end
        object PLX9: TEdit
          Left = 426
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 31
          Text = '0'
        end
        object PLY9: TEdit
          Left = 486
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 32
          Text = '0'
        end
        object PLW9: TEdit
          Left = 546
          Top = 268
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 33
          Text = '0'
        end
        object PPX1: TEdit
          Left = 590
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 34
          Text = '0'
        end
        object PPY1: TEdit
          Left = 650
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 35
          Text = '0'
        end
        object PPW1: TEdit
          Left = 710
          Top = 93
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 36
          Text = '0'
        end
        object PPX2: TEdit
          Left = 590
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 37
          Text = '0'
        end
        object PPY2: TEdit
          Left = 650
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 38
          Text = '0'
        end
        object PPW2: TEdit
          Left = 710
          Top = 115
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 39
          Text = '0'
        end
        object PPX3: TEdit
          Left = 590
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 40
          Text = '0'
        end
        object PPY3: TEdit
          Left = 650
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 41
          Text = '0'
        end
        object PPW3: TEdit
          Left = 710
          Top = 137
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 42
          Text = '0'
        end
        object PPX4: TEdit
          Left = 590
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 43
          Text = '0'
        end
        object PPY4: TEdit
          Left = 650
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 44
          Text = '0'
        end
        object PPW4: TEdit
          Left = 710
          Top = 159
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 45
          Text = '0'
        end
        object PPX5: TEdit
          Left = 590
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 46
          Text = '0'
        end
        object PPY5: TEdit
          Left = 650
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 47
          Text = '0'
        end
        object PPW5: TEdit
          Left = 710
          Top = 180
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 48
          Text = '0'
        end
        object PPX6: TEdit
          Left = 590
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 49
          Text = '0'
        end
        object PPY6: TEdit
          Left = 650
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 50
          Text = '0'
        end
        object PPW6: TEdit
          Left = 710
          Top = 202
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 51
          Text = '0'
        end
        object PPX7: TEdit
          Left = 590
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 52
          Text = '0'
        end
        object PPY7: TEdit
          Left = 650
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 53
          Text = '0'
        end
        object PPW7: TEdit
          Left = 710
          Top = 224
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 54
          Text = '0'
        end
        object PPX8: TEdit
          Left = 590
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 55
          Text = '0'
        end
        object PPY8: TEdit
          Left = 650
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 56
          Text = '0'
        end
        object PPW8: TEdit
          Left = 710
          Top = 246
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 57
          Text = '0'
        end
        object PPX9: TEdit
          Left = 590
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 58
          Text = '0'
        end
        object PPY9: TEdit
          Left = 650
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 59
          Text = '0'
        end
        object PPW9: TEdit
          Left = 710
          Top = 268
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 60
          Text = '0'
        end
        object Button4: TButton
          Left = 666
          Top = 16
          Width = 75
          Height = 25
          Caption = 'ADD CX'
          TabOrder = 61
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 666
          Top = 40
          Width = 75
          Height = 25
          Caption = 'DEL CX'
          TabOrder = 62
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 458
          Top = 335
          Width = 33
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 63
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 458
          Top = 383
          Width = 33
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 64
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 490
          Top = 359
          Width = 33
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 65
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 426
          Top = 359
          Width = 33
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 66
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 676
          Top = 335
          Width = 33
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 67
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 676
          Top = 383
          Width = 33
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 68
          OnClick = Button12Click
        end
        object Button13: TButton
          Left = 708
          Top = 359
          Width = 33
          Height = 25
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 69
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 644
          Top = 359
          Width = 33
          Height = 25
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 70
          OnClick = Button14Click
        end
        object Edit5: TEdit
          Left = 286
          Top = 450
          Width = 121
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 71
          Text = '-405'
        end
        object Edit4: TEdit
          Left = 286
          Top = 420
          Width = 121
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 72
          Text = '1200'
        end
        object Edit6: TEdit
          Left = 763
          Top = 423
          Width = 124
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 73
          Text = '1200'
        end
        object Edit7: TEdit
          Left = 763
          Top = 453
          Width = 124
          Height = 24
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 74
          Text = '-405'
        end
      end
    end
  end
  inherited ToolBar: TToolBar
    Width = 1172
    ExplicitWidth = 1172
    inherited btnSalvar: TToolButton
      OnClick = btnSalvarClick
    end
    inherited btnCancelar: TToolButton
      Visible = False
    end
    inherited ToolButton1: TToolButton
      Visible = False
    end
    inherited btnPesquisar: TToolButton
      Visible = False
    end
  end
  object pnAguarde: TPanel [3]
    Left = 283
    Top = 254
    Width = 607
    Height = 81
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  inherited ImageList: TcxImageList
    FormatVersion = 1
  end
  object QRYROBO: TFDQuery
    Connection = DM.FDCONN
    SQL.Strings = (
      'SELECT * FROM TBROBO A'
      ' WHERE A.ID = :PID')
    Left = 840
    Top = 8
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
