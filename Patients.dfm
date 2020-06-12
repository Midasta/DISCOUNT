object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Pasiyentl'#601'r'
  ClientHeight = 657
  ClientWidth = 1358
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
    Width = 1358
    Height = 657
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1356
      Height = 273
      Align = alTop
      ParentBackground = False
      TabOrder = 0
      object Image1: TImage
        Left = 295
        Top = 78
        Width = 105
        Height = 106
        Proportional = True
        Stretch = True
      end
      object Label1: TLabel
        Left = 312
        Top = 125
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
      object Label2: TLabel
        Left = 17
        Top = 55
        Width = 47
        Height = 13
        Caption = 'Kart n'#246'v'#252
      end
      object Label3: TLabel
        Left = 17
        Top = 81
        Width = 46
        Height = 13
        Caption = 'Kart kodu'
      end
      object Label4: TLabel
        Left = 17
        Top = 188
        Width = 92
        Height = 13
        Caption = 'Kart'#305'n verilm'#601' tarixi'
      end
      object Label5: TLabel
        Left = 17
        Top = 108
        Width = 41
        Height = 13
        Caption = 'Pasiyent'
      end
      object Label6: TLabel
        Left = 17
        Top = 216
        Width = 84
        Height = 13
        Caption = 'Kart'#305'n bitm'#601' tarixi'
      end
      object Label7: TLabel
        Left = 17
        Top = 135
        Width = 60
        Height = 13
        Caption = 'Do'#287'um tarixi'
      end
      object Label8: TLabel
        Left = 17
        Top = 160
        Width = 22
        Height = 13
        Caption = 'Cinsi'
      end
      object Label9: TLabel
        Left = 163
        Top = 8
        Width = 142
        Height = 23
        Caption = #399'LAV'#399' ETM'#399'K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 923
        Top = 8
        Width = 82
        Height = 23
        Caption = 'TAPMAQ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 796
        Top = 72
        Width = 46
        Height = 13
        Caption = 'Kart kodu'
      end
      object Label12: TLabel
        Left = 796
        Top = 99
        Width = 41
        Height = 13
        Caption = 'Pasiyent'
      end
      object Label13: TLabel
        Left = 796
        Top = 126
        Width = 60
        Height = 13
        Caption = 'Do'#287'um tarixi'
      end
      object Label14: TLabel
        Left = 796
        Top = 151
        Width = 22
        Height = 13
        Caption = 'Cinsi'
      end
      object Label15: TLabel
        Left = 796
        Top = 179
        Width = 92
        Height = 13
        Caption = 'Kart'#305'n verilm'#601' tarixi'
      end
      object Label16: TLabel
        Left = 796
        Top = 207
        Width = 84
        Height = 13
        Caption = 'Kart'#305'n bitm'#601' tarixi'
      end
      object Label17: TLabel
        Left = 795
        Top = 45
        Width = 47
        Height = 13
        Caption = 'Kart n'#246'v'#252
      end
      object Edit2: TEdit
        Left = 115
        Top = 78
        Width = 76
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 115
        Top = 105
        Width = 158
        Height = 21
        TabOrder = 1
      end
      object MaskEdit1: TMaskEdit
        Left = 115
        Top = 213
        Width = 76
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .  .    '
      end
      object Button2: TButton
        Left = 310
        Top = 190
        Width = 76
        Height = 25
        Caption = 'Y'#252'kl'#601
        TabOrder = 3
        OnClick = Button2Click
      end
      object DBEdit1: TDBEdit
        Left = 207
        Top = 78
        Width = 66
        Height = 21
        Color = clSilver
        DataField = 'Expr1000'
        DataSource = DataModule2.DataSource2
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object MaskEdit2: TMaskEdit
        Left = 115
        Top = 186
        Width = 76
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 5
        Text = '  .  .    '
        OnChange = MaskEdit2Change
        OnKeyDown = MaskEdit2KeyDown
      end
      object MaskEdit3: TMaskEdit
        Left = 115
        Top = 132
        Width = 76
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 6
        Text = '  .  .    '
      end
      object Edit1: TEdit
        Left = 115
        Top = 159
        Width = 76
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object Edit4: TEdit
        Left = 115
        Top = 51
        Width = 47
        Height = 21
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Button1: TButton
        Left = 415
        Top = 242
        Width = 97
        Height = 25
        Caption = #399'lav'#601' etm'#601'k'
        TabOrder = 9
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 517
        Top = 242
        Width = 75
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        TabOrder = 10
        OnClick = Button3Click
      end
      object Edit5: TEdit
        Left = 894
        Top = 69
        Width = 75
        Height = 21
        TabOrder = 11
      end
      object Edit6: TEdit
        Left = 894
        Top = 96
        Width = 158
        Height = 21
        TabOrder = 12
      end
      object MaskEdit4: TMaskEdit
        Left = 894
        Top = 123
        Width = 75
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 13
        Text = '  .  .    '
      end
      object MaskEdit5: TMaskEdit
        Left = 977
        Top = 123
        Width = 75
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 14
        Text = '  .  .    '
      end
      object Edit7: TEdit
        Left = 894
        Top = 150
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 15
      end
      object MaskEdit6: TMaskEdit
        Left = 894
        Top = 177
        Width = 74
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 16
        Text = '  .  .    '
      end
      object MaskEdit7: TMaskEdit
        Left = 977
        Top = 177
        Width = 75
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 17
        Text = '  .  .    '
      end
      object MaskEdit8: TMaskEdit
        Left = 894
        Top = 204
        Width = 74
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 18
        Text = '  .  .    '
      end
      object MaskEdit9: TMaskEdit
        Left = 977
        Top = 204
        Width = 75
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 19
        Text = '  .  .    '
      end
      object CheckBox1: TCheckBox
        Left = 1072
        Top = 98
        Width = 49
        Height = 17
        Caption = 'Foto'
        TabOrder = 20
      end
      object Button4: TButton
        Left = 1011
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Tapmaq'
        TabOrder = 21
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 1092
        Top = 242
        Width = 75
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        TabOrder = 22
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 312
        Top = 242
        Width = 97
        Height = 25
        Caption = 'Yadda saxlamaq'
        TabOrder = 23
        Visible = False
        OnClick = Button6Click
      end
      object Edit8: TEdit
        Left = 923
        Top = 42
        Width = 45
        Height = 21
        TabOrder = 24
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 274
      Width = 1356
      Height = 382
      Align = alClient
      ParentBackground = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 1354
        Height = 380
        Align = alClient
        DataSource = DataModule2.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
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
            FieldName = 'CardID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Card_code'
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
            FieldName = 'Name_AZ'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sex'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Photo'
            Title.Caption = 'Foto'
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 629
    Top = 73
    object Silmk1: TMenuItem
      Caption = 'Silm'#601'k'
      OnClick = Silmk1Click
    end
  end
end
