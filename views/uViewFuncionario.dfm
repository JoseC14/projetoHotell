object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
  ClientHeight = 477
  ClientWidth = 1161
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = -4
    Width = 1161
    Height = 481
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 290
        Height = 32
        Caption = 'Cadastro de Funcion'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 104
        Width = 30
        Height = 13
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 157
        Width = 19
        Height = 13
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 32
        Top = 213
        Width = 92
        Height = 13
        Caption = 'Data de Admiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 32
        Top = 272
        Width = 38
        Height = 13
        Caption = 'Gen'#234'ro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 325
        Width = 103
        Height = 13
        Caption = 'Data de Nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 344
        Top = 104
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 344
        Top = 157
        Width = 32
        Height = 13
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 32
        Top = 392
        Width = 139
        Height = 41
        Caption = 'Cadastrar'
        TabOrder = 0
      end
      object MaskEdit1: TMaskEdit
        Left = 32
        Top = 176
        Width = 118
        Height = 21
        EditMask = '###.###.###-##;1;_'
        MaxLength = 14
        TabOrder = 1
        Text = '   .   .   -  '
      end
      object Edit2: TEdit
        Left = 32
        Top = 123
        Width = 225
        Height = 21
        TabOrder = 2
      end
      object MaskEdit2: TMaskEdit
        Left = 32
        Top = 232
        Width = 116
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '  /  /    '
      end
      object ComboBox2: TComboBox
        Left = 32
        Top = 291
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 4
        Items.Strings = (
          'Masculino '
          'Feminino'
          'Outro')
      end
      object MaskEdit3: TMaskEdit
        Left = 32
        Top = 344
        Width = 116
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 5
        Text = '  /  /    '
      end
      object Edit3: TEdit
        Left = 344
        Top = 123
        Width = 241
        Height = 21
        TabOrder = 6
      end
      object Edit4: TEdit
        Left = 344
        Top = 176
        Width = 241
        Height = 21
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Gerenciar'
      ImageIndex = 1
      object Label4: TLabel
        Left = 80
        Top = 59
        Width = 73
        Height = 13
        Caption = 'Pesquisar por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 240
        Top = 3
        Width = 363
        Height = 32
        Caption = 'Gerenciamento de Funcion'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 880
        Top = 80
        Width = 30
        Height = 13
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 880
        Top = 133
        Width = 19
        Height = 13
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 880
        Top = 189
        Width = 92
        Height = 13
        Caption = 'Data de Admiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 880
        Top = 248
        Width = 38
        Height = 13
        Caption = 'Gen'#234'ro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 880
        Top = 301
        Width = 103
        Height = 13
        Caption = 'Data de Nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 880
        Top = 347
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 880
        Top = 400
        Width = 32
        Height = 13
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 327
        Top = 56
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object Button2: TButton
        Left = 518
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 159
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Nome'
          'Pre'#231'o')
      end
      object DBGrid1: TDBGrid
        Left = 80
        Top = 87
        Width = 774
        Height = 342
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button4: TButton
        Left = 680
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Deletar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Button3: TButton
        Left = 599
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object Edit5: TEdit
        Left = 880
        Top = 99
        Width = 222
        Height = 21
        TabOrder = 6
      end
      object MaskEdit4: TMaskEdit
        Left = 880
        Top = 152
        Width = 116
        Height = 21
        EditMask = '###.###.###-##;1;_'
        MaxLength = 14
        TabOrder = 7
        Text = '   .   .   -  '
      end
      object MaskEdit5: TMaskEdit
        Left = 880
        Top = 208
        Width = 115
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 8
        Text = '  /  /    '
      end
      object ComboBox3: TComboBox
        Left = 880
        Top = 267
        Width = 144
        Height = 21
        Style = csDropDownList
        TabOrder = 9
        Items.Strings = (
          'Masculino '
          'Feminino'
          'Outro')
      end
      object MaskEdit6: TMaskEdit
        Left = 880
        Top = 320
        Width = 116
        Height = 21
        EditMask = '##/##/####;1;_'
        MaxLength = 10
        TabOrder = 10
        Text = '  /  /    '
      end
      object Edit6: TEdit
        Left = 880
        Top = 366
        Width = 241
        Height = 21
        TabOrder = 11
      end
      object Edit7: TEdit
        Left = 880
        Top = 419
        Width = 241
        Height = 21
        TabOrder = 12
      end
    end
  end
end
