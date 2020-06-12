object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'KorporativUpload'
  ClientHeight = 559
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 559
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel16: TPanel
      Left = 1
      Top = 1
      Width = 480
      Height = 557
      Align = alLeft
      TabOrder = 0
      object DBGrid9: TDBGrid
        Left = 1
        Top = 1
        Width = 478
        Height = 555
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel17: TPanel
      Left = 704
      Top = 1
      Width = 139
      Height = 557
      Align = alRight
      TabOrder = 1
      object DBGrid10: TDBGrid
        Left = 1
        Top = 1
        Width = 137
        Height = 555
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object ComboBox4: TComboBox
      Left = 520
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object Button25: TButton
      Left = 495
      Top = 64
      Width = 75
      Height = 25
      Caption = #304'mport'
      TabOrder = 3
    end
    object Button26: TButton
      Left = 607
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Se'#231'm'#601'k'
      TabOrder = 4
    end
  end
end
