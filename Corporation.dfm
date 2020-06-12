object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Korporativ'
  ClientHeight = 657
  ClientWidth = 1152
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1152
    Height = 657
    Align = alClient
    TabOrder = 0
    object Panel14: TPanel
      Left = 1
      Top = 1
      Width = 1150
      Height = 344
      Align = alTop
      ParentBackground = False
      TabOrder = 0
      object Label62: TLabel
        Left = 16
        Top = 16
        Width = 27
        Height = 13
        Caption = #350'irk'#601't'
      end
      object Label63: TLabel
        Left = 16
        Top = 43
        Width = 36
        Height = 13
        Caption = 'Kart '#8470
      end
      object Label64: TLabel
        Left = 16
        Top = 67
        Width = 92
        Height = 13
        Caption = 'Kart'#305'n verilm'#601' tarixi'
      end
      object Label65: TLabel
        Left = 16
        Top = 94
        Width = 84
        Height = 13
        Caption = 'Kart'#305'n bitm'#601' tarixi'
      end
      object Label66: TLabel
        Left = 16
        Top = 123
        Width = 20
        Height = 13
        Caption = 'SAA'
      end
      object Label67: TLabel
        Left = 16
        Top = 150
        Width = 60
        Height = 13
        Caption = 'Do'#287'um tarixi'
      end
      object Label68: TLabel
        Left = 16
        Top = 177
        Width = 22
        Height = 13
        Caption = 'Cinsi'
      end
      object Label69: TLabel
        Left = 16
        Top = 204
        Width = 24
        Height = 13
        Caption = 'Mobil'
      end
      object Label70: TLabel
        Left = 16
        Top = 231
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label71: TLabel
        Left = 16
        Top = 258
        Width = 133
        Height = 13
        Caption = 'Pasport (Seriya v'#601' n'#246'mr'#601'si)'
      end
      object Label72: TLabel
        Left = 16
        Top = 285
        Width = 31
        Height = 13
        Caption = #220'nvan'
      end
      object Label73: TLabel
        Left = 16
        Top = 309
        Width = 36
        Height = 13
        Caption = 'Kurator'
      end
      object Label74: TLabel
        Left = 440
        Top = 16
        Width = 292
        Height = 19
        Caption = 'Kartdan istifad'#601' ed'#601' bil'#601'c'#601'k '#351#601'xsl'#601'r'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 409
        Top = 56
        Width = 11
        Height = 16
        Caption = '1.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 409
        Top = 83
        Width = 11
        Height = 16
        Caption = '2.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 409
        Top = 110
        Width = 11
        Height = 16
        Caption = '3.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Image3: TImage
        Left = 328
        Top = 136
        Width = 105
        Height = 105
        Proportional = True
        Stretch = True
      end
      object Edit35: TEdit
        Left = 153
        Top = 13
        Width = 152
        Height = 21
        TabOrder = 0
      end
      object Edit36: TEdit
        Left = 153
        Top = 39
        Width = 71
        Height = 21
        TabOrder = 1
      end
      object MaskEdit20: TMaskEdit
        Left = 153
        Top = 64
        Width = 71
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .  .    '
        OnKeyDown = MaskEdit20KeyDown
      end
      object MaskEdit21: TMaskEdit
        Left = 153
        Top = 91
        Width = 71
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '  .  .    '
      end
      object Edit37: TEdit
        Left = 153
        Top = 120
        Width = 152
        Height = 21
        TabOrder = 4
      end
      object MaskEdit22: TMaskEdit
        Left = 153
        Top = 147
        Width = 71
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 5
        Text = '  .  .    '
      end
      object ComboBox3: TComboBox
        Left = 153
        Top = 174
        Width = 71
        Height = 21
        TabOrder = 6
        Items.Strings = (
          ''
          'K'
          'Q')
      end
      object Edit38: TEdit
        Left = 153
        Top = 201
        Width = 152
        Height = 21
        TabOrder = 7
      end
      object Edit39: TEdit
        Left = 153
        Top = 228
        Width = 152
        Height = 21
        TabOrder = 8
      end
      object Edit40: TEdit
        Left = 153
        Top = 255
        Width = 152
        Height = 21
        TabOrder = 9
      end
      object Edit41: TEdit
        Left = 153
        Top = 282
        Width = 152
        Height = 21
        TabOrder = 10
      end
      object Edit42: TEdit
        Left = 153
        Top = 309
        Width = 152
        Height = 21
        TabOrder = 11
      end
      object Edit43: TEdit
        Left = 440
        Top = 55
        Width = 193
        Height = 21
        TabOrder = 12
      end
      object MaskEdit43: TMaskEdit
        Left = 639
        Top = 55
        Width = 74
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 13
        Text = '  .  .    '
      end
      object Edit44: TEdit
        Left = 441
        Top = 82
        Width = 192
        Height = 21
        TabOrder = 14
      end
      object MaskEdit44: TMaskEdit
        Left = 640
        Top = 82
        Width = 74
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 15
        Text = '  .  .    '
      end
      object Edit45: TEdit
        Left = 441
        Top = 109
        Width = 192
        Height = 21
        TabOrder = 16
      end
      object MaskEdit45: TMaskEdit
        Left = 640
        Top = 109
        Width = 74
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 17
        Text = '  .  .    '
      end
      object Button20: TButton
        Left = 424
        Top = 296
        Width = 75
        Height = 25
        Caption = #399'lav'#601' etm'#601'k'
        TabOrder = 18
        OnClick = Button20Click
      end
      object Button21: TButton
        Left = 505
        Top = 296
        Width = 75
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        TabOrder = 19
        OnClick = Button21Click
      end
      object Button22: TButton
        Left = 328
        Top = 296
        Width = 90
        Height = 25
        Caption = 'Yadda saxlamaq'
        TabOrder = 20
        Visible = False
        OnClick = Button22Click
      end
      object Button23: TButton
        Left = 586
        Top = 296
        Width = 75
        Height = 25
        Caption = #199'ap etm'#601'k'
        TabOrder = 21
        OnClick = Button23Click
      end
      object DBGrid8: TDBGrid
        Left = 752
        Top = 21
        Width = 369
        Height = 120
        DataSource = DataModule2.DataSource17
        TabOrder = 22
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Company'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CardID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Reg_date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'End_date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cinsi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mob'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pasport'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kurator'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Photo'
            Visible = True
          end>
      end
      object Button24: TButton
        Left = 345
        Top = 247
        Width = 75
        Height = 25
        Caption = 'Y'#252'kl'#601
        TabOrder = 23
        OnClick = Button24Click
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 345
      Width = 1150
      Height = 311
      Align = alClient
      TabOrder = 1
      object DBGrid7: TDBGrid
        Left = 1
        Top = 1
        Width = 1148
        Height = 309
        Align = alClient
        DataSource = DataModule2.DataSource16
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid7DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Company'
            Title.Caption = #350'irk'#601't'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CardID'
            Title.Caption = 'Kart '#8470
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Reg_date'
            Title.Caption = 'Kart'#305'n verilm'#601' tarixi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'End_date'
            Title.Caption = 'Kart'#305'n bitm'#601' tarixi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAA'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOB'
            Title.Caption = 'Do'#287'um tarixi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cinsi'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mob'
            Title.Caption = 'Mobil'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E-mail'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pasport'
            Title.Caption = 'Pasport (Seriya v'#601' n'#246'mr'#601')'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Title.Caption = #220'nvan'
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kurator'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Photo'
            Width = 150
            Visible = True
          end>
      end
    end
  end
end
