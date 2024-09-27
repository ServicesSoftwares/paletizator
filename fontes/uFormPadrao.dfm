object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Padrao'
  ClientHeight = 498
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MENU
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 479
    Width = 799
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Data/Hora:'
        Width = 65
      end
      item
        Text = '00/00/0000 00:00:00'
        Width = 110
      end
      item
        Text = 'Usu'#225'rio:'
        Width = 50
      end
      item
        Text = '1 - ADMINISTRADOR'
        Width = 50
      end>
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 677
    Top = 8
  end
  object MENU: TMainMenu
    Left = 712
    Top = 8
    object Ajuda1: TMenuItem
      Caption = 'F1 - Ajuda'
      ShortCut = 112
      OnClick = Ajuda1Click
    end
    object Sair1: TMenuItem
      Caption = 'Esc - Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
end
