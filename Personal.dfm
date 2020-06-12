object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Personal'
  ClientHeight = 654
  ClientWidth = 1167
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 654
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1165
      Height = 273
      Align = alTop
      TabOrder = 0
      object Image2: TImage
        Left = 216
        Top = 92
        Width = 105
        Height = 106
        Proportional = True
        Stretch = True
      end
      object Label18: TLabel
        Left = 16
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Kart '#8470
      end
      object Label19: TLabel
        Left = 16
        Top = 41
        Width = 53
        Height = 13
        Caption = #304#351#231'inin SAA'
      end
      object Label20: TLabel
        Left = 16
        Top = 67
        Width = 36
        Height = 13
        Caption = 'V'#601'zif'#601'si'
      end
      object Label21: TLabel
        Left = 16
        Top = 96
        Width = 92
        Height = 13
        Caption = 'Kart'#305'n verilm'#601' tarixi'
      end
      object Label22: TLabel
        Left = 232
        Top = 133
        Width = 74
        Height = 19
        Caption = 'Foto'#351#601'kil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 420
        Top = 9
        Width = 245
        Height = 19
        Caption = 'B'#252't'#252'n xidm'#601'tl'#601'r'#601' 50% g'#252'z'#601#351't'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 380
        Top = 39
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
      object Label25: TLabel
        Left = 380
        Top = 66
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
      object Label26: TLabel
        Left = 380
        Top = 93
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
      object Label27: TLabel
        Left = 380
        Top = 120
        Width = 11
        Height = 16
        Caption = '4.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 380
        Top = 147
        Width = 11
        Height = 16
        Caption = '5.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 1000
        Top = 16
        Width = 90
        Height = 25
        Caption = 'TAPMAQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 862
        Top = 41
        Width = 36
        Height = 13
        Caption = 'Kart '#8470
      end
      object Label57: TLabel
        Left = 16
        Top = 123
        Width = 117
        Height = 13
        Caption = #304#351'd'#601'n azad olunma tarixi'
      end
      object Label58: TLabel
        Left = 845
        Top = 67
        Width = 53
        Height = 13
        Caption = #304#351#231'inin SAA'
      end
      object Label59: TLabel
        Left = 862
        Top = 95
        Width = 36
        Height = 13
        Caption = 'V'#601'zif'#601'si'
      end
      object Label60: TLabel
        Left = 806
        Top = 122
        Width = 92
        Height = 13
        Caption = 'Kart'#305'n verilm'#601' tarixi'
      end
      object Label61: TLabel
        Left = 781
        Top = 149
        Width = 117
        Height = 13
        Caption = #304#351'd'#601'n azad olunma tarixi'
      end
      object Edit9: TEdit
        Left = 904
        Top = 38
        Width = 65
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit9KeyDown
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 139
        Top = 65
        Width = 206
        Height = 21
        DropDownRows = 10
        Enabled = False
        KeyField = 'Vezife'
        ListSource = DataModule2.DataSource15
        TabOrder = 1
      end
      object Edit10: TEdit
        Left = 139
        Top = 11
        Width = 55
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object Edit11: TEdit
        Left = 139
        Top = 38
        Width = 206
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object MaskEdit10: TMaskEdit
        Left = 139
        Top = 92
        Width = 71
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '  .  .    '
        OnKeyDown = MaskEdit10KeyDown
      end
      object Button8: TButton
        Left = 232
        Top = 204
        Width = 75
        Height = 25
        Caption = 'Y'#252'kl'#601
        Enabled = False
        TabOrder = 5
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 551
        Top = 232
        Width = 98
        Height = 25
        Caption = #399'lav'#601' etm'#601'k'
        Enabled = False
        TabOrder = 6
        OnClick = Button9Click
      end
      object Button11: TButton
        Left = 655
        Top = 232
        Width = 90
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        Enabled = False
        TabOrder = 7
        OnClick = Button11Click
      end
      object Edit12: TEdit
        Left = 408
        Top = 38
        Width = 200
        Height = 21
        Enabled = False
        TabOrder = 8
      end
      object MaskEdit12: TMaskEdit
        Left = 615
        Top = 38
        Width = 74
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 9
        Text = '  .  .    '
      end
      object Edit13: TEdit
        Left = 408
        Top = 65
        Width = 200
        Height = 21
        Enabled = False
        TabOrder = 10
      end
      object MaskEdit13: TMaskEdit
        Left = 615
        Top = 65
        Width = 74
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 11
        Text = '  .  .    '
      end
      object Edit14: TEdit
        Left = 408
        Top = 92
        Width = 200
        Height = 21
        Enabled = False
        TabOrder = 12
      end
      object MaskEdit14: TMaskEdit
        Left = 615
        Top = 92
        Width = 74
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 13
        Text = '  .  .    '
      end
      object Edit15: TEdit
        Left = 408
        Top = 119
        Width = 200
        Height = 21
        Enabled = False
        TabOrder = 14
      end
      object MaskEdit15: TMaskEdit
        Left = 615
        Top = 119
        Width = 74
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 15
        Text = '  .  .    '
      end
      object Edit16: TEdit
        Left = 408
        Top = 146
        Width = 200
        Height = 21
        Enabled = False
        TabOrder = 16
      end
      object MaskEdit16: TMaskEdit
        Left = 615
        Top = 146
        Width = 74
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 17
        Text = '  .  .    '
      end
      object Button12: TButton
        Left = 447
        Top = 232
        Width = 98
        Height = 25
        Caption = 'Yadda saxlamaq'
        Enabled = False
        TabOrder = 18
        Visible = False
        OnClick = Button12Click
      end
      object DBGrid3: TDBGrid
        Left = 1042
        Top = 146
        Width = 113
        Height = 101
        DataSource = DataModule2.DataSource6
        TabOrder = 19
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object MaskEdit17: TMaskEdit
        Left = 139
        Top = 119
        Width = 71
        Height = 21
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 20
        Text = '  .  .    '
      end
      object Button10: TButton
        Left = 751
        Top = 232
        Width = 75
        Height = 25
        Caption = #199'ap etm'#601'k'
        Enabled = False
        TabOrder = 21
        OnClick = Button10Click
      end
      object Edit34: TEdit
        Left = 904
        Top = 65
        Width = 186
        Height = 21
        TabOrder = 22
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 904
        Top = 92
        Width = 186
        Height = 21
        KeyField = 'Vezife'
        ListSource = DataModule2.DataSource15
        TabOrder = 23
      end
      object MaskEdit18: TMaskEdit
        Left = 904
        Top = 119
        Width = 65
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 24
        Text = '  .  .    '
      end
      object MaskEdit19: TMaskEdit
        Left = 904
        Top = 146
        Width = 65
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 25
        Text = '  .  .    '
      end
      object Button17: TButton
        Left = 880
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Tapmaq'
        TabOrder = 26
        OnClick = Button17Click
      end
      object Button18: TButton
        Left = 961
        Top = 184
        Width = 75
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        TabOrder = 27
        OnClick = Button18Click
      end
      object Button19: TButton
        Left = 533
        Top = 173
        Width = 75
        Height = 25
        Caption = 'D'#601'yi'#351'm'#601'k'
        TabOrder = 28
        OnClick = Button19Click
      end
      object Panel18: TPanel
        Left = 593
        Top = 146
        Width = 281
        Height = 79
        TabOrder = 29
        Visible = False
        object Edit46: TEdit
          Left = 16
          Top = 21
          Width = 241
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          OnKeyDown = Edit46KeyDown
        end
        object Button27: TButton
          Left = 96
          Top = 48
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 1
          OnClick = Button27Click
        end
        object Button28: TButton
          Left = 177
          Top = 48
          Width = 81
          Height = 25
          Caption = 'Ba'#287'lamaq'
          TabOrder = 2
          OnClick = Button28Click
        end
      end
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 274
      Width = 1165
      Height = 379
      Align = alClient
      DataSource = DataModule2.DataSource4
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CardID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name_AZ'
          Title.Caption = #304#351#231'inin SAA'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'W_Position'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KVT'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOB'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Leave_work'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Photo'
          Width = -1
          Visible = False
        end>
    end
  end
end
