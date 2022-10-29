object frmHospede: TfrmHospede
  Left = 0
  Top = 0
  Caption = 'H'#243'spedes'
  ClientHeight = 500
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pTelaInterna: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 497
    TabOrder = 0
  end
  object Menu: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 384
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      OnClick = Cadastrar1Click
    end
    object Gerenciar1: TMenuItem
      Caption = 'Gerenciar'
      OnClick = Gerenciar1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Relat'#243'rios'
      OnClick = Alterar1Click
    end
  end
end
