object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'NIPT kartlar'
  ClientHeight = 629
  ClientWidth = 833
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 425
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Kart '#8470
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 92
      Height = 13
      Caption = 'Kart'#305'n verilm'#601' tarixi'
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 72
      Height = 13
      Caption = 'Pasiyentin SAA'
    end
    object Label4: TLabel
      Left = 16
      Top = 97
      Width = 60
      Height = 13
      Caption = 'Do'#287'um tarixi'
    end
    object Label5: TLabel
      Left = 16
      Top = 124
      Width = 68
      Height = 13
      Caption = #399'laq'#601' n'#246'mr'#601'si'
    end
    object Label6: TLabel
      Left = 16
      Top = 151
      Width = 180
      Height = 13
      Caption = #350#601'xsiyy'#601't v'#601'siq'#601'nin seriya AZE v'#601' '#8470
    end
    object Label7: TLabel
      Left = 16
      Top = 178
      Width = 31
      Height = 13
      Caption = #220'nvan'
    end
    object Label8: TLabel
      Left = 16
      Top = 205
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label9: TLabel
      Left = 16
      Top = 232
      Width = 43
      Height = 13
      Caption = 'N'#304'PT kod'
    end
    object Label10: TLabel
      Left = 16
      Top = 259
      Width = 57
      Height = 13
      Caption = 'N'#304'PT MED'#304'S'
    end
    object Label11: TLabel
      Left = 16
      Top = 286
      Width = 41
      Height = 13
      Caption = 'USM kod'
    end
    object Label12: TLabel
      Left = 16
      Top = 313
      Width = 55
      Height = 13
      Caption = 'USM MED'#304'S'
    end
    object Label13: TLabel
      Left = 16
      Top = 340
      Width = 77
      Height = 13
      Caption = 'G'#246'nd'#601'r'#601'n h'#601'kim'
    end
    object Edit1: TEdit
      Left = 208
      Top = 13
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 208
      Top = 40
      Width = 119
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
    end
    object Edit2: TEdit
      Left = 208
      Top = 67
      Width = 233
      Height = 21
      TabOrder = 2
    end
    object MaskEdit2: TMaskEdit
      Left = 208
      Top = 94
      Width = 119
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  .  .    '
    end
    object Edit3: TEdit
      Left = 208
      Top = 121
      Width = 233
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 208
      Top = 148
      Width = 233
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 208
      Top = 175
      Width = 233
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 208
      Top = 202
      Width = 233
      Height = 21
      TabOrder = 7
    end
    object Edit7: TEdit
      Left = 208
      Top = 229
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object Edit8: TEdit
      Left = 208
      Top = 256
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Edit9: TEdit
      Left = 208
      Top = 283
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object Edit10: TEdit
      Left = 208
      Top = 310
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object Edit11: TEdit
      Left = 208
      Top = 337
      Width = 233
      Height = 21
      TabOrder = 12
    end
    object Button1: TButton
      Left = 464
      Top = 384
      Width = 91
      Height = 25
      Caption = 'Yadda saxlamaq'
      TabOrder = 13
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 489
      Top = 384
      Width = 75
      Height = 25
      Caption = #399'lav'#601' etm'#601'k'
      TabOrder = 14
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 570
      Top = 384
      Width = 75
      Height = 25
      Caption = 'T'#601'mizl'#601'm'#601'k'
      TabOrder = 15
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 833
    Height = 204
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 831
      Height = 202
      Align = alClient
      DataSource = DataModule2.DataSource18
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
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
end
