object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sistema de Hotel'
  ClientHeight = 372
  ClientWidth = 345
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 112
    Width = 36
    Height = 13
    Alignment = taCenter
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 144
    Top = 168
    Width = 30
    Height = 13
    Alignment = taCenter
    Caption = 'Senha'
  end
  object txtUser: TEdit
    Left = 88
    Top = 131
    Width = 169
    Height = 21
    Alignment = taCenter
    TabOrder = 0
  end
  object txtSenha: TEdit
    Left = 88
    Top = 187
    Width = 169
    Height = 21
    Alignment = taCenter
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 128
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 2
    OnClick = btnLoginClick
  end
end
