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
    ExplicitTop = 570
    ExplicitWidth = 1172
  end
  inherited pnBase: TPanel
    Width = 1172
    Height = 515
    ExplicitWidth = 1172
    ExplicitHeight = 515
    object pgBasePaletizacao: TcxPageControl
      Left = 1
      Top = 1
      Width = 1170
      Height = 513
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tbsPaletizacaoDireita
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      ClientRectBottom = 513
      ClientRectRight = 1170
      ClientRectTop = 20
      object tbsPaletizacaoEsquerda: TcxTabSheet
        Caption = 'Paletiza'#231#227'o '#224' Esquerda'
        ImageIndex = 0
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
            Left = 1
            Top = 1
            Width = 394
            Height = 394
            Align = alClient
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 400
            ExplicitHeight = 400
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
            Left = 1
            Top = 1
            Width = 394
            Height = 394
            Align = alClient
            ExplicitLeft = -2
            ExplicitTop = -2
            ExplicitWidth = 400
            ExplicitHeight = 400
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
      object tbsPaletizacaoDireita: TcxTabSheet
        Caption = 'Paletiza'#231#227'o '#224' Direita'
        ImageIndex = 1
        object lblCam1: TLabel
          Left = 524
          Top = 45
          Width = 18
          Height = 13
          Caption = '000'
        end
        object lblCam2: TLabel
          Left = 634
          Top = 45
          Width = 18
          Height = 13
          Caption = '000'
        end
        object Label19: TLabel
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
        object lblTotalCxaCam1: TLabel
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
        object Label21: TLabel
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
        object lblTotalCxaCam2: TLabel
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
        object Label23: TLabel
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
        object lblCentroCxaDir: TLabel
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
        object imgCxaPaletDir: TImage
          Left = 742
          Top = 3
          Width = 425
          Height = 145
          Visible = False
        end
        object Label25: TLabel
          Left = 511
          Top = 441
          Width = 109
          Height = 13
          Caption = 'CX TOTAL DO PALETE:'
        end
        object lblTotalCxa: TLabel
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
        object Label27: TLabel
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
        object Label28: TLabel
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
        object Label29: TLabel
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
        object Label30: TLabel
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
        object Label31: TLabel
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
        object Label32: TLabel
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
        object Shape2: TShape
          Left = 582
          Top = 71
          Width = 2
          Height = 257
        end
        object Panel3: TPanel
          Left = 7
          Top = 17
          Width = 400
          Height = 400
          BorderStyle = bsSingle
          TabOrder = 0
          object imgPaletDirCam1: TImage
            Left = 1
            Top = 1
            Width = 394
            Height = 394
            Align = alClient
            ExplicitLeft = -2
          end
        end
        object btnAddCxaDirCam1: TButton
          Left = 426
          Top = 16
          Width = 75
          Height = 25
          Caption = 'ADD CX'
          TabOrder = 1
          OnClick = btnAddCxaDirCam1Click
        end
        object DPLX1: TEdit
          Left = 426
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
          Text = '0'
        end
        object DPLY1: TEdit
          Left = 486
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
          Text = '0'
        end
        object DPLZ1: TEdit
          Left = 546
          Top = 93
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
          Text = '0'
        end
        object DPLX2: TEdit
          Left = 426
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 5
          Text = '0'
        end
        object DPLY2: TEdit
          Left = 486
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 6
          Text = '0'
        end
        object DPLZ2: TEdit
          Left = 546
          Top = 115
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 7
          Text = '0'
        end
        object edtDir1: TEdit
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
        object edtDir2: TEdit
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
        object edtDir3: TEdit
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
        object Panel4: TPanel
          Left = 762
          Top = 17
          Width = 400
          Height = 400
          BorderStyle = bsSingle
          TabOrder = 11
          object imgPaletDirCam2: TImage
            Left = 1
            Top = 1
            Width = 394
            Height = 394
            Align = alClient
            ExplicitLeft = -2
            ExplicitTop = -2
            ExplicitWidth = 400
            ExplicitHeight = 400
          end
        end
        object btnDelCxaDirCam1: TButton
          Left = 426
          Top = 40
          Width = 75
          Height = 25
          Caption = 'DEL CX'
          TabOrder = 12
          OnClick = btnDelCxaDirCam1Click
        end
        object DPLX3: TEdit
          Left = 426
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 13
          Text = '0'
        end
        object DPLY3: TEdit
          Left = 486
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 14
          Text = '0'
        end
        object DPLZ3: TEdit
          Left = 546
          Top = 137
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 15
          Text = '0'
        end
        object DPLX4: TEdit
          Left = 426
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 16
          Text = '0'
        end
        object DPLY4: TEdit
          Left = 486
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 17
          Text = '0'
        end
        object DPLZ4: TEdit
          Left = 546
          Top = 159
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 18
          Text = '0'
        end
        object DPLX5: TEdit
          Left = 426
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 19
          Text = '0'
        end
        object DPLY5: TEdit
          Left = 486
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 20
          Text = '0'
        end
        object DPLZ5: TEdit
          Left = 546
          Top = 180
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 21
          Text = '0'
        end
        object DPLX6: TEdit
          Left = 426
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 22
          Text = '0'
        end
        object DPLY6: TEdit
          Left = 486
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 23
          Text = '0'
        end
        object DPLZ6: TEdit
          Left = 546
          Top = 202
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 24
          Text = '0'
        end
        object DPLX7: TEdit
          Left = 426
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 25
          Text = '0'
        end
        object DPLY7: TEdit
          Left = 486
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 26
          Text = '0'
        end
        object DPLZ7: TEdit
          Left = 546
          Top = 224
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 27
          Text = '0'
        end
        object DPLX8: TEdit
          Left = 426
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 28
          Text = '0'
        end
        object DPLY8: TEdit
          Left = 486
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 29
          Text = '0'
        end
        object DPLZ8: TEdit
          Left = 546
          Top = 246
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 30
          Text = '0'
        end
        object DPLX9: TEdit
          Left = 426
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 31
          Text = '0'
        end
        object DPLY9: TEdit
          Left = 486
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 32
          Text = '0'
        end
        object DPLZ9: TEdit
          Left = 546
          Top = 268
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 33
          Text = '0'
        end
        object DPPX1: TEdit
          Left = 590
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 34
          Text = '0'
        end
        object DPPY1: TEdit
          Left = 650
          Top = 93
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 35
          Text = '0'
        end
        object DPPZ1: TEdit
          Left = 710
          Top = 93
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 36
          Text = '0'
        end
        object DPPX2: TEdit
          Left = 590
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 37
          Text = '0'
        end
        object DPPY2: TEdit
          Left = 650
          Top = 115
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 38
          Text = '0'
        end
        object DPPZ2: TEdit
          Left = 710
          Top = 115
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 39
          Text = '0'
        end
        object DPPX3: TEdit
          Left = 590
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 40
          Text = '0'
        end
        object DPPY3: TEdit
          Left = 650
          Top = 137
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 41
          Text = '0'
        end
        object DPPZ3: TEdit
          Left = 710
          Top = 137
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 42
          Text = '0'
        end
        object DPPX4: TEdit
          Left = 590
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 43
          Text = '0'
        end
        object DPPY4: TEdit
          Left = 650
          Top = 159
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 44
          Text = '0'
        end
        object DPPZ4: TEdit
          Left = 710
          Top = 159
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 45
          Text = '0'
        end
        object DPPX5: TEdit
          Left = 590
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 46
          Text = '0'
        end
        object DPPY5: TEdit
          Left = 650
          Top = 180
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 47
          Text = '0'
        end
        object DPPZ5: TEdit
          Left = 710
          Top = 180
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 48
          Text = '0'
        end
        object DPPX6: TEdit
          Left = 590
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 49
          Text = '0'
        end
        object DPPY6: TEdit
          Left = 650
          Top = 202
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 50
          Text = '0'
        end
        object DPPZ6: TEdit
          Left = 710
          Top = 202
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 51
          Text = '0'
        end
        object DPPX7: TEdit
          Left = 590
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 52
          Text = '0'
        end
        object DPPY7: TEdit
          Left = 650
          Top = 224
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 53
          Text = '0'
        end
        object DPPZ7: TEdit
          Left = 710
          Top = 224
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 54
          Text = '0'
        end
        object DPPX8: TEdit
          Left = 590
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 55
          Text = '0'
        end
        object DPPY8: TEdit
          Left = 650
          Top = 246
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 56
          Text = '0'
        end
        object DPPZ8: TEdit
          Left = 710
          Top = 246
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 57
          Text = '0'
        end
        object DPPX9: TEdit
          Left = 590
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 58
          Text = '0'
        end
        object DPPY9: TEdit
          Left = 650
          Top = 268
          Width = 59
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 59
          Text = '0'
        end
        object DPPZ9: TEdit
          Left = 710
          Top = 268
          Width = 31
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 60
          Text = '0'
        end
        object btnAddCxaDirCam2: TButton
          Left = 666
          Top = 16
          Width = 75
          Height = 25
          Caption = 'ADD CX'
          TabOrder = 61
          OnClick = btnAddCxaDirCam2Click
        end
        object btnDelCxaDirCam2: TButton
          Left = 666
          Top = 40
          Width = 75
          Height = 25
          Caption = 'DEL CX'
          TabOrder = 62
          OnClick = btnDelCxaDirCam2Click
        end
        object btnCam1Up: TButton
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
          OnClick = btnCam1UpClick
        end
        object btnCam1Down: TButton
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
          OnClick = btnCam1DownClick
        end
        object btnCam1Rigth: TButton
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
          OnClick = btnCam1RigthClick
        end
        object btnCam1Left: TButton
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
          OnClick = btnCam1LeftClick
        end
        object btnCam2Up: TButton
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
          OnClick = btnCam2UpClick
        end
        object btnCam2Down: TButton
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
          OnClick = btnCam2DownClick
        end
        object btnCam2Rigth: TButton
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
          OnClick = btnCam2RigthClick
        end
        object btnCam2Left: TButton
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
          OnClick = btnCam2LeftClick
        end
        object edtPontoFimCam1PaletDir: TEdit
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
        object edtPontoIniCam1PaletDir: TEdit
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
        object edtPontoIniCam2PaletDir: TEdit
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
        object edtPontoFimCam2PaletDir: TEdit
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
      OnClick = btnPesquisarClick
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
    object QRYROBOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYROBOIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object QRYROBONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QRYROBOTIPO_ROBO: TIntegerField
      FieldName = 'TIPO_ROBO'
      Origin = 'TIPO_ROBO'
    end
    object QRYROBOTIPO_PALETIZACAO: TIntegerField
      FieldName = 'TIPO_PALETIZACAO'
      Origin = 'TIPO_PALETIZACAO'
    end
    object QRYROBOTIPO_COMUNICAO: TIntegerField
      FieldName = 'TIPO_COMUNICAO'
      Origin = 'TIPO_COMUNICAO'
      Required = True
    end
    object QRYROBOHOST_IP: TStringField
      FieldName = 'HOST_IP'
      Origin = 'HOST_IP'
      Size = 10
    end
    object QRYROBOPORTA: TIntegerField
      FieldName = 'PORTA'
      Origin = 'PORTA'
    end
    object QRYROBOTIMEOUT: TIntegerField
      FieldName = 'TIMEOUT'
      Origin = 'TIMEOUT'
    end
    object QRYROBOAGUARDAR_PC_SENSOR: TStringField
      FieldName = 'AGUARDAR_PC_SENSOR'
      Origin = 'AGUARDAR_PC_SENSOR'
      Size = 2500
    end
    object QRYROBOFECHAR_GARRA: TStringField
      FieldName = 'FECHAR_GARRA'
      Origin = 'FECHAR_GARRA'
      Size = 2500
    end
    object QRYROBOABRIR_GARRA: TStringField
      FieldName = 'ABRIR_GARRA'
      Origin = 'ABRIR_GARRA'
      Size = 2500
    end
    object QRYROBOREPOSICIONA_GARRA: TStringField
      FieldName = 'REPOSICIONA_GARRA'
      Origin = 'REPOSICIONA_GARRA'
      Size = 2500
    end
    object QRYROBOFIM_PALETE: TStringField
      FieldName = 'FIM_PALETE'
      Origin = 'FIM_PALETE'
      Size = 2500
    end
    object QRYROBOINICIO_PALETE: TStringField
      FieldName = 'INICIO_PALETE'
      Origin = 'INICIO_PALETE'
      Size = 2500
    end
    object QRYROBOPONTO0_PALLETE_X: TIntegerField
      FieldName = 'PONTO0_PALLETE_X'
      Origin = 'PONTO0_PALLETE_X'
    end
    object QRYROBOPONTO0_PALLETE_Y: TIntegerField
      FieldName = 'PONTO0_PALLETE_Y'
      Origin = 'PONTO0_PALLETE_Y'
    end
    object QRYROBOPONTO0_PALLETE_Z: TIntegerField
      FieldName = 'PONTO0_PALLETE_Z'
      Origin = 'PONTO0_PALLETE_Z'
    end
    object QRYROBOPONTO0_MAGAZINE_X: TIntegerField
      FieldName = 'PONTO0_MAGAZINE_X'
      Origin = 'PONTO0_MAGAZINE_X'
    end
    object QRYROBOPONTO0_MAGAZINE_Y: TIntegerField
      FieldName = 'PONTO0_MAGAZINE_Y'
      Origin = 'PONTO0_MAGAZINE_Y'
    end
    object QRYROBOPONTO_INTERSEG_B_X: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_X'
      Origin = 'PONTO_INTERSEG_B_X'
    end
    object QRYROBOPONTO_INTERSEG_B_Y: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_Y'
      Origin = 'PONTO_INTERSEG_B_Y'
    end
    object QRYROBOPONTO_INTERSEG_B_Z: TIntegerField
      FieldName = 'PONTO_INTERSEG_B_Z'
      Origin = 'PONTO_INTERSEG_B_Z'
    end
    object QRYROBOPONTO_INTERSEG_A_X: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_X'
      Origin = 'PONTO_INTERSEG_A_X'
    end
    object QRYROBOPONTO_INTERSEG_A_Y: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_Y'
      Origin = 'PONTO_INTERSEG_A_Y'
    end
    object QRYROBOPONTO_INTERSEG_A_Z: TIntegerField
      FieldName = 'PONTO_INTERSEG_A_Z'
      Origin = 'PONTO_INTERSEG_A_Z'
    end
    object QRYROBOPONTO_SEGRET_X: TIntegerField
      FieldName = 'PONTO_SEGRET_X'
      Origin = 'PONTO_SEGRET_X'
    end
    object QRYROBOPONTO_SEGRET_Y: TIntegerField
      FieldName = 'PONTO_SEGRET_Y'
      Origin = 'PONTO_SEGRET_Y'
    end
    object QRYROBOPONTO_SEGRET_Z: TIntegerField
      FieldName = 'PONTO_SEGRET_Z'
      Origin = 'PONTO_SEGRET_Z'
    end
    object QRYROBOPONTO_SEGRET_CURVA_Z: TIntegerField
      FieldName = 'PONTO_SEGRET_CURVA_Z'
      Origin = 'PONTO_SEGRET_CURVA_Z'
    end
    object QRYROBOPONTO_SUPMESA_X: TIntegerField
      FieldName = 'PONTO_SUPMESA_X'
      Origin = 'PONTO_SUPMESA_X'
    end
    object QRYROBOPONTO_SUPMESA_Y: TIntegerField
      FieldName = 'PONTO_SUPMESA_Y'
      Origin = 'PONTO_SUPMESA_Y'
    end
    object QRYROBOPONTO_SUPMESA_ESP_ENC: TIntegerField
      FieldName = 'PONTO_SUPMESA_ESP_ENC'
      Origin = 'PONTO_SUPMESA_ESP_ENC'
    end
    object QRYROBOPONTO_SUPMESA_CENTROY: TIntegerField
      FieldName = 'PONTO_SUPMESA_CENTROY'
      Origin = 'PONTO_SUPMESA_CENTROY'
    end
    object QRYROBOPONTO_SUPMESA_POS_BATY: TIntegerField
      FieldName = 'PONTO_SUPMESA_POS_BATY'
      Origin = 'PONTO_SUPMESA_POS_BATY'
    end
    object QRYROBOPONTO_INFMESA_Y: TIntegerField
      FieldName = 'PONTO_INFMESA_Y'
      Origin = 'PONTO_INFMESA_Y'
    end
    object QRYROBOPONTO_INFMESA_ROLETES: TIntegerField
      FieldName = 'PONTO_INFMESA_ROLETES'
      Origin = 'PONTO_INFMESA_ROLETES'
    end
    object QRYROBOPONTO_INFMESA_LIVRE: TIntegerField
      FieldName = 'PONTO_INFMESA_LIVRE'
      Origin = 'PONTO_INFMESA_LIVRE'
    end
    object QRYROBOALTURA_MESA_Z_ALIN: TIntegerField
      FieldName = 'ALTURA_MESA_Z_ALIN'
      Origin = 'ALTURA_MESA_Z_ALIN'
    end
    object QRYROBOALTURA_MESA_Z_MESAMIN: TIntegerField
      FieldName = 'ALTURA_MESA_Z_MESAMIN'
      Origin = 'ALTURA_MESA_Z_MESAMIN'
    end
    object QRYROBOALTURA_MESA_OFFSET_UP: TIntegerField
      FieldName = 'ALTURA_MESA_OFFSET_UP'
      Origin = 'ALTURA_MESA_OFFSET_UP'
    end
    object QRYROBOALTURA_MESA_PONTO_Z: TIntegerField
      FieldName = 'ALTURA_MESA_PONTO_Z'
      Origin = 'ALTURA_MESA_PONTO_Z'
    end
    object QRYROBOALTURA_MESA_CURVA_CICLO: TIntegerField
      FieldName = 'ALTURA_MESA_CURVA_CICLO'
      Origin = 'ALTURA_MESA_CURVA_CICLO'
    end
    object QRYROBOOFFSET_ALTURA: TIntegerField
      FieldName = 'OFFSET_ALTURA'
      Origin = 'OFFSET_ALTURA'
    end
    object QRYROBOOFFSET_APPROC: TIntegerField
      FieldName = 'OFFSET_APPROC'
      Origin = 'OFFSET_APPROC'
    end
    object QRYROBOOFFSET_GARRA: TIntegerField
      FieldName = 'OFFSET_GARRA'
      Origin = 'OFFSET_GARRA'
    end
    object QRYROBOZ_PALETE: TIntegerField
      FieldName = 'Z_PALETE'
      Origin = 'Z_PALETE'
    end
    object QRYROBOOS_Z_RETORNO: TIntegerField
      FieldName = 'OS_Z_RETORNO'
      Origin = 'OS_Z_RETORNO'
    end
    object QRYROBOVEL_PEGADA: TIntegerField
      FieldName = 'VEL_PEGADA'
      Origin = 'VEL_PEGADA'
    end
    object QRYROBOVEL_SOLTURA: TIntegerField
      FieldName = 'VEL_SOLTURA'
      Origin = 'VEL_SOLTURA'
    end
    object QRYROBOVEL_LINEAR: TIntegerField
      FieldName = 'VEL_LINEAR'
      Origin = 'VEL_LINEAR'
    end
    object QRYROBOY_MESA_LIVRE: TIntegerField
      FieldName = 'Y_MESA_LIVRE'
      Origin = 'Y_MESA_LIVRE'
    end
    object QRYROBOOS_ENCOSTO: TIntegerField
      FieldName = 'OS_ENCOSTO'
      Origin = 'OS_ENCOSTO'
    end
    object QRYROBOZ_PEGADA: TIntegerField
      FieldName = 'Z_PEGADA'
      Origin = 'Z_PEGADA'
    end
    object QRYROBOCURVA_PEGADA: TIntegerField
      FieldName = 'CURVA_PEGADA'
      Origin = 'CURVA_PEGADA'
    end
    object QRYROBOCENTRO_ESTEIRA_Y: TIntegerField
      FieldName = 'CENTRO_ESTEIRA_Y'
      Origin = 'CENTRO_ESTEIRA_Y'
    end
    object QRYROBOPOS_BATENTE_Y: TIntegerField
      FieldName = 'POS_BATENTE_Y'
      Origin = 'POS_BATENTE_Y'
    end
    object QRYROBOOFFSET_SUBIDA: TIntegerField
      FieldName = 'OFFSET_SUBIDA'
      Origin = 'OFFSET_SUBIDA'
    end
    object QRYROBOVEL_SUBIDA: TIntegerField
      FieldName = 'VEL_SUBIDA'
      Origin = 'VEL_SUBIDA'
    end
    object QRYROBOCURVA_AFAST: TIntegerField
      FieldName = 'CURVA_AFAST'
      Origin = 'CURVA_AFAST'
    end
    object QRYROBODATA_INCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DATA_INCLUSAO'
      Required = True
    end
    object QRYROBOIDUSUARIO_INCLUSAO: TIntegerField
      FieldName = 'IDUSUARIO_INCLUSAO'
      Origin = 'IDUSUARIO_INCLUSAO'
      Required = True
    end
    object QRYROBODATA_ULT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DATA_ULT_ALTERACAO'
      Origin = 'DATA_ULT_ALTERACAO'
    end
    object QRYROBOIDUSUARIO_ULT_ALTERACAO: TIntegerField
      FieldName = 'IDUSUARIO_ULT_ALTERACAO'
      Origin = 'IDUSUARIO_ULT_ALTERACAO'
    end
  end
end
