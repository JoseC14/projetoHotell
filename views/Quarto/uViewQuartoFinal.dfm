object frmQuarto: TfrmQuarto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Quartos'
  ClientHeight = 512
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pTelaInterna: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 521
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 288
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      OnClick = Cadastrar1Click
    end
    object Gerenciar1: TMenuItem
      Caption = 'Gerenciar'
      OnClick = Gerenciar1Click
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
    end
  end
end
