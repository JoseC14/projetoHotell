object RelatorioHospede: TRelatorioHospede
  Left = 0
  Top = 0
  Caption = 'RelatorioHospede'
  ClientHeight = 555
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 74
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 39
        Height = 74
        Align = faLeft
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 74
        Align = faRight
        Info = itHour
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 307
        Top = 0
        Width = 104
        Height = 16
        Align = faCenterTop
        Caption = 'Sistema de Hotel'
      end
    end
    object Titulo: TRLBand
      Left = 38
      Top = 112
      Width = 718
      Height = 73
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object Label3: TLabel
        Left = 528
        Top = 75
        Width = 38
        Height = 16
        Caption = 'Label3'
      end
      object RLLabel2: TRLLabel
        Left = 228
        Top = 0
        Width = 261
        Height = 22
        Align = faCenterTop
        Caption = 'RELAT'#211'RIO DE H'#211'SPEDES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 56
        Width = 38
        Height = 16
        Align = faLeftBottom
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 488
        Top = 51
        Width = 105
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Data de Cadastro'
      end
    end
    object Detalhe: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 50
      object RLDBNome: TRLDBText
        Left = 3
        Top = 16
        Width = 38
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataField = 'nome'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBDataCadastro: TRLDBText
        Left = 488
        Top = 16
        Width = 79
        Height = 16
        DataField = 'datacadastro'
        DataSource = frmRelHospede.dshospede
        Text = ''
      end
    end
    object Footer: TRLBand
      Left = 38
      Top = 235
      Width = 718
      Height = 26
      BandType = btFooter
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      'SELECT * FROM tb_hospede')
    Left = 16
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 86
    Top = 70
  end
end
