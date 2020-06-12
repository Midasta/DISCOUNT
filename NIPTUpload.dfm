object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'N'#304'PT upload'
  ClientHeight = 644
  ClientWidth = 883
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
  object Label1: TLabel
    Left = 416
    Top = 128
    Width = 166
    Height = 92
    Alignment = taCenter
    Caption = 'Yeni kartlar'#305' y'#252'kl'#601'm'#601'kd'#601'n qabaq k'#246'hn'#601'l'#601'ri silm'#601'k laz'#305'md'#305'r!!! '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 644
    Align = alLeft
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 383
      Height = 642
      Align = alClient
      DataSource = DataModule2.DataSource18
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Cardid'
          Title.Caption = 'Kart '#8470
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Title.Caption = 'Kart'#305'n verilm'#601' tarixi'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAA'
          Title.Caption = 'Pasiyentin SAA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOB'
          Title.Caption = 'Do'#287'um tarixi'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mobil'
          Title.Caption = 'Mobil '#8470
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SV'
          Title.Caption = #350#601'xsiyy'#601't v'#601'siq'#601'nin seriyas'#305' AZE '#8470
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adress'
          Title.Caption = #220'nvan'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Title.Caption = 'E-mail'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N'#304'PT_ kod'
          Title.Caption = 'N'#304'PT kod'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N'#304'PT_MED'#304'S'
          Title.Caption = 'N'#304'PT MED'#304'S'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USM_kod'
          Title.Caption = 'USM kod'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USM_MED'#304'S'
          Title.Caption = 'USM MED'#304'S'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sender'
          Title.Caption = 'G'#246'nd'#601'r'#601'n h'#601'kim'
          Width = 100
          Visible = True
        end>
    end
  end
  object ComboBox1: TComboBox
    Left = 408
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 512
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Se'#231'm'#601'k'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 408
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Y'#252'kl'#601'm'#601'k'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel2: TPanel
    Left = 601
    Top = 0
    Width = 282
    Height = 644
    Align = alRight
    TabOrder = 4
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 280
      Height = 642
      Align = alClient
      DataSource = DataModule2.DataSource19
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Button3: TButton
    Left = 456
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Silm'#601'k'
    TabOrder = 5
    OnClick = Button3Click
  end
end
