object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Bonus'
  ClientHeight = 658
  ClientWidth = 1276
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1276
    Height = 658
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 1274
      Height = 232
      Align = alTop
      TabOrder = 0
      object Label53: TLabel
        Left = 863
        Top = 6
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
      object Label54: TLabel
        Left = 639
        Top = 70
        Width = 36
        Height = 13
        Caption = 'Kart '#8470
      end
      object Label84: TLabel
        Left = 16
        Top = 12
        Width = 202
        Height = 19
        Caption = 'H'#601'r bonus kart'#305' ver'#601'n '#351#601'xs'#601':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label85: TLabel
        Left = 263
        Top = 11
        Width = 31
        Height = 19
        Caption = 'AZN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 639
        Top = 43
        Width = 36
        Height = 13
        Caption = 'Tarixl'#601'r'
      end
      object Label2: TLabel
        Left = 639
        Top = 97
        Width = 20
        Height = 13
        Caption = 'SAA'
      end
      object Label3: TLabel
        Left = 639
        Top = 124
        Width = 28
        Height = 13
        Caption = 'H'#601'kim'
      end
      object Label4: TLabel
        Left = 968
        Top = 43
        Width = 29
        Height = 13
        Caption = 'Bonus'
      end
      object Label5: TLabel
        Left = 968
        Top = 70
        Width = 33
        Height = 13
        Caption = 'G'#252'z'#601#351't'
      end
      object Label6: TLabel
        Left = 968
        Top = 97
        Width = 21
        Height = 13
        Caption = 'Borc'
      end
      object Label7: TLabel
        Left = 968
        Top = 124
        Width = 19
        Height = 13
        Caption = #199'_B'
      end
      object Label8: TLabel
        Left = 968
        Top = 151
        Width = 20
        Height = 13
        Caption = 'Q_B'
      end
      object Label9: TLabel
        Left = 968
        Top = 178
        Width = 20
        Height = 13
        Caption = #399'_B'
      end
      object Edit33: TEdit
        Left = 681
        Top = 67
        Width = 63
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit33KeyDown
      end
      object Edit53: TEdit
        Left = 224
        Top = 13
        Width = 33
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = '0.20'
        OnKeyDown = Edit53KeyDown
      end
      object Button31: TButton
        Left = 210
        Top = 36
        Width = 99
        Height = 25
        Caption = 'M'#601'bl'#601#287'i d'#601'yi'#351'm'#601'k'
        TabOrder = 2
        OnClick = Button31Click
      end
      object Panel20: TPanel
        Left = 6
        Top = 67
        Width = 303
        Height = 46
        TabOrder = 3
        Visible = False
        object Edit54: TEdit
          Left = 8
          Top = 12
          Width = 129
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          OnKeyDown = Edit54KeyDown
        end
        object Button32: TButton
          Left = 143
          Top = 10
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 1
          OnClick = Button32Click
        end
        object Button33: TButton
          Left = 224
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Ba'#287'lamaq'
          TabOrder = 2
          OnClick = Button33Click
        end
      end
      object MaskEdit1: TMaskEdit
        Left = 681
        Top = 40
        Width = 63
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '  .  .    '
        OnKeyDown = MaskEdit1KeyDown
      end
      object MaskEdit2: TMaskEdit
        Left = 750
        Top = 40
        Width = 63
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 5
        Text = '  .  .    '
        OnKeyDown = MaskEdit2KeyDown
      end
      object Button1: TButton
        Left = 797
        Top = 201
        Width = 75
        Height = 25
        Caption = 'Tapmaq'
        TabOrder = 6
        OnClick = Button1Click
      end
      object DBEdit1: TDBEdit
        Left = 887
        Top = 148
        Width = 41
        Height = 21
        DataField = 'Expr1000'
        DataSource = DataModule2.DataSource22
        TabOrder = 7
        Visible = False
      end
      object Edit1: TEdit
        Left = 681
        Top = 94
        Width = 191
        Height = 21
        TabOrder = 8
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 681
        Top = 121
        Width = 191
        Height = 21
        KeyField = 'G'#246'nd'#601'r'#601'n_h'#601'kim'
        ListSource = DataModule2.DataSource23
        TabOrder = 9
      end
      object Edit2: TEdit
        Left = 1003
        Top = 40
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 10
      end
      object Edit3: TEdit
        Left = 1055
        Top = 40
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 11
      end
      object Edit4: TEdit
        Left = 1003
        Top = 67
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 12
      end
      object Edit5: TEdit
        Left = 1055
        Top = 67
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 13
      end
      object Edit6: TEdit
        Left = 1003
        Top = 94
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 14
      end
      object Edit7: TEdit
        Left = 1055
        Top = 94
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 15
      end
      object Edit8: TEdit
        Left = 1003
        Top = 121
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 16
      end
      object Edit9: TEdit
        Left = 1055
        Top = 121
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 17
      end
      object Edit10: TEdit
        Left = 1003
        Top = 148
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 18
      end
      object Edit11: TEdit
        Left = 1055
        Top = 148
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 19
      end
      object Edit12: TEdit
        Left = 1003
        Top = 175
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 20
      end
      object Edit13: TEdit
        Left = 1055
        Top = 175
        Width = 46
        Height = 21
        Alignment = taCenter
        TabOrder = 21
      end
      object Button2: TButton
        Left = 878
        Top = 201
        Width = 75
        Height = 25
        Caption = 'T'#601'mizl'#601'm'#601'k'
        TabOrder = 22
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 233
      Width = 1274
      Height = 424
      Align = alClient
      TabOrder = 1
      object Panel12: TPanel
        Left = 1
        Top = 382
        Width = 1272
        Height = 41
        Align = alBottom
        TabOrder = 0
        object Label36: TLabel
          Left = 266
          Top = 9
          Width = 59
          Height = 19
          Caption = 'M'#601'bl'#601#287
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label37: TLabel
          Left = 420
          Top = 9
          Width = 35
          Height = 19
          Caption = #399'DV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label38: TLabel
          Left = 553
          Top = 9
          Width = 49
          Height = 19
          Caption = 'Bonus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 691
          Top = 9
          Width = 109
          Height = 19
          Caption = #199#305'x'#305'lan bonus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 890
          Top = 9
          Width = 100
          Height = 19
          Caption = 'Qalan bonus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 1079
          Top = 9
          Width = 99
          Height = 19
          Caption = #399'lav'#601' bonus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 331
          Top = 6
          Width = 83
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object DBEdit3: TDBEdit
          Left = 461
          Top = 6
          Width = 86
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
        end
        object DBEdit4: TDBEdit
          Left = 608
          Top = 6
          Width = 77
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 806
          Top = 6
          Width = 79
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 996
          Top = 6
          Width = 77
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 1184
          Top = 6
          Width = 62
          Height = 27
          DataField = 'Expr1000'
          DataSource = DataModule2.DataSource14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 640
        Height = 381
        Align = alLeft
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 638
          Height = 379
          Align = alClient
          DataSource = DataModule2.DataSource7
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid4CellClick
          OnDblClick = DBGrid4DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Kart_'#8470
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'M'#601'bl'#601#287
              Visible = True
            end
            item
              Expanded = False
              FieldName = #399'DV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bonus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G'#252'z'#601#351't'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Borc'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cixilan_Bonus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qalan_Bonus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Elave_Bonus'
              Visible = True
            end>
        end
        object Panel19: TPanel
          Left = 75
          Top = 57
          Width = 431
          Height = 112
          TabOrder = 0
          Visible = False
          object Label78: TLabel
            Left = 24
            Top = 16
            Width = 39
            Height = 13
            Caption = 'Kart_'#8470
          end
          object Label79: TLabel
            Left = 24
            Top = 43
            Width = 29
            Height = 13
            Caption = 'Bonus'
          end
          object Label80: TLabel
            Left = 152
            Top = 16
            Width = 19
            Height = 13
            Caption = #199'_B'
          end
          object Label81: TLabel
            Left = 152
            Top = 43
            Width = 20
            Height = 13
            Caption = 'Q_B'
          end
          object Label82: TLabel
            Left = 280
            Top = 16
            Width = 60
            Height = 13
            Caption = #399'lav'#601' bonus'
          end
          object Edit47: TEdit
            Left = 69
            Top = 13
            Width = 68
            Height = 21
            TabOrder = 0
          end
          object Edit48: TEdit
            Left = 69
            Top = 40
            Width = 68
            Height = 21
            TabOrder = 1
          end
          object Edit49: TEdit
            Left = 197
            Top = 13
            Width = 68
            Height = 21
            TabOrder = 2
            OnChange = Edit49Change
          end
          object Edit50: TEdit
            Left = 197
            Top = 40
            Width = 68
            Height = 21
            TabOrder = 3
          end
          object Edit51: TEdit
            Left = 346
            Top = 13
            Width = 68
            Height = 21
            TabOrder = 4
          end
          object Button29: TButton
            Left = 216
            Top = 80
            Width = 99
            Height = 25
            Caption = 'Yadda saxlamaq'
            TabOrder = 5
            OnClick = Button29Click
          end
          object Button30: TButton
            Left = 321
            Top = 80
            Width = 99
            Height = 25
            Caption = 'Ba'#287'lamaq'
            TabOrder = 6
            OnClick = Button30Click
          end
        end
      end
      object Panel2: TPanel
        Left = 641
        Top = 1
        Width = 632
        Height = 381
        Align = alClient
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 630
          Height = 379
          Align = alClient
          DataSource = DataModule2.DataSource20
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Tarix'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Kart_'#8470
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
              FieldName = 'Cinsi'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T'#601'v'#601'll'#252'd'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G'#246'nd'#601'r'#601'n_h'#601'kim'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'M'#601'bl'#601#287'_AZN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = #399'DV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bonus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mob'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G'#252'z'#601#351't_AZN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Borc_AZN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = #199'_B'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_B'
              Visible = True
            end
            item
              Expanded = False
              FieldName = #399'lav'#601'_Bonus'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qeyd'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qeyd_2'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Uname'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Summa'
              Visible = True
            end>
        end
      end
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 1261
    Top = 17
    object Silmk2: TMenuItem
      Caption = 'Silm'#601'k'
      OnClick = Silmk2Click
    end
    object N1: TMenuItem
      Caption = '---------'
    end
  end
end
