object frmHospede: TfrmHospede
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'H'#243'spedes'
  ClientHeight = 606
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pTelaInterna: TPanel
    Left = -12
    Top = -8
    Width = 1077
    Height = 617
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 380
    Top = 256
    object Cadastarr1: TMenuItem
      Caption = 'Cadastrar'
      OnClick = Cadastarr1Click
    end
    object Gerenciar1: TMenuItem
      Caption = 'Gerenciar'
      OnClick = Gerenciar1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      OnClick = Relatrios1Click
    end
  end
end
