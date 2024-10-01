object frmFormGerador: TfrmFormGerador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador de Arquivo'
  ClientHeight = 733
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 272
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
    Left = 273
    Top = 36
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 249
    Height = 713
    Caption = ' Dados de Posi'#231#227'o '
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 245
      Height = 696
      Align = alClient
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 12
      ExplicitWidth = 221
      ExplicitHeight = 581
    end
  end
  object ScrollBox1: TScrollBox
    Left = 272
    Top = 75
    Width = 272
    Height = 646
    BorderStyle = bsNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 0
      Top = 0
      Width = 272
      Height = 129
      Align = alTop
      Caption = ' Posi'#231#227'o de Retorno '
      TabOrder = 0
      ExplicitWidth = 255
      object Memo3: TMemo
        Left = 2
        Top = 15
        Width = 268
        Height = 112
        Align = alClient
        Lines.Strings = (
          'Memo3')
        TabOrder = 0
        ExplicitLeft = 7
        ExplicitTop = 28
        ExplicitWidth = 206
        ExplicitHeight = 98
      end
    end
    object GroupBox5: TGroupBox
      Left = 0
      Top = 129
      Width = 272
      Height = 129
      Align = alTop
      Caption = 'Posi'#231#227'o Pre Entrada'
      TabOrder = 1
      ExplicitWidth = 255
      object Memo4: TMemo
        Left = 2
        Top = 15
        Width = 268
        Height = 112
        Align = alClient
        Lines.Strings = (
          'Memo3')
        TabOrder = 0
        ExplicitLeft = 5
        ExplicitTop = 24
        ExplicitWidth = 206
        ExplicitHeight = 98
      end
    end
    object GroupBox6: TGroupBox
      Left = 0
      Top = 258
      Width = 272
      Height = 129
      Align = alTop
      Caption = ' Posi'#231#227'o de Espera '
      TabOrder = 2
      ExplicitWidth = 255
      object Memo5: TMemo
        Left = 2
        Top = 15
        Width = 268
        Height = 112
        Align = alClient
        Lines.Strings = (
          'Memo3')
        TabOrder = 0
        ExplicitLeft = 5
        ExplicitTop = 24
        ExplicitWidth = 206
        ExplicitHeight = 98
      end
    end
    object GroupBox7: TGroupBox
      Left = 0
      Top = 387
      Width = 272
      Height = 129
      Align = alTop
      Caption = ' Posi'#231#227'o de Alinhamento'
      TabOrder = 3
      ExplicitWidth = 255
      object Memo6: TMemo
        Left = 2
        Top = 15
        Width = 268
        Height = 112
        Align = alClient
        Lines.Strings = (
          'Memo3')
        TabOrder = 0
        ExplicitLeft = 5
        ExplicitTop = 24
        ExplicitWidth = 206
        ExplicitHeight = 98
      end
    end
    object GroupBox8: TGroupBox
      Left = 0
      Top = 516
      Width = 272
      Height = 129
      Align = alTop
      Caption = ' Posi'#231#227'o de Subida '
      TabOrder = 4
      ExplicitWidth = 255
      object Memo7: TMemo
        Left = 2
        Top = 15
        Width = 268
        Height = 112
        Align = alClient
        Lines.Strings = (
          'Memo3')
        TabOrder = 0
        ExplicitLeft = 5
        ExplicitTop = 24
        ExplicitWidth = 206
        ExplicitHeight = 98
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 550
    Top = 8
    Width = 485
    Height = 713
    Caption = ' Arquivo de Sa'#237'da para o Robo '
    TabOrder = 2
    object Memo2: TMemo
      Left = 2
      Top = 15
      Width = 481
      Height = 696
      Align = alClient
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitLeft = 9
      ExplicitTop = 22
      ExplicitWidth = 470
      ExplicitHeight = 571
    end
  end
end
