object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Header: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 19
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 0
        Width = 39
        Height = 16
        Align = faLeftTop
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 679
        Top = 0
        Width = 39
        Height = 16
        Align = faRightTop
        Text = ''
      end
    end
    object Title: TRLBand
      Left = 38
      Top = 57
      Width = 718
      Height = 72
      BandType = btTitle
    end
    object Detail: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 64
      object RLDBText1: TRLDBText
        Left = 3
        Top = 16
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = frmRelHospede.dshospede
        Text = ''
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 8
    Top = 64
  end
end
