object frmRelHospede: TfrmRelHospede
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmRelHospede'
  ClientHeight = 455
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object Label3: TLabel
    Left = 224
    Top = 72
    Width = 17
    Height = 13
    Caption = 'At'#233
  end
  object Label5: TLabel
    Left = 414
    Top = 50
    Width = 24
    Height = 13
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object dtInicio: TMaskEdit
    Left = 79
    Top = 69
    Width = 119
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object dtFim: TMaskEdit
    Left = 247
    Top = 69
    Width = 120
    Height = 21
    EditMask = '##/##/####;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object comRelSexo: TComboBox
    Left = 414
    Top = 69
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Todos')
  end
  object rgAtivo: TRadioGroup
    Left = 600
    Top = 50
    Width = 143
    Height = 65
    Caption = 'Ativo'
    Items.Strings = (
      'Sim'
      'N'#227'o'
      'Todos')
    TabOrder = 3
  end
  object btnRelatorio: TButton
    Left = 622
    Top = 367
    Width = 219
    Height = 49
    Caption = 'Gerar Relatorio'
    TabOrder = 4
    OnClick = btnRelatorioClick
  end
  object Tb_hospedeTable: TFDQuery
    Active = True
    ConnectionName = 'ConexaoHotel'
    SQL.Strings = (
      'SELECT * FROM db_syshotel.tb_hospede')
    Left = 60
    Top = 15
  end
end
