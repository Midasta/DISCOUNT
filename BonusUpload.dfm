object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'BonusUpload'
  ClientHeight = 486
  ClientWidth = 1223
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
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 1223
    Height = 486
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 400
      Height = 484
      Align = alLeft
      TabOrder = 0
      object DBGrid5: TDBGrid
        Left = 1
        Top = 1
        Width = 398
        Height = 482
        Align = alClient
        DataSource = DataModule2.DataSource21
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tarix'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kart_'#8470
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Xidm'#601't_kodu'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cinsi'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qeyd_2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Uname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Summa'
            Visible = True
          end>
      end
    end
    object ComboBox1: TComboBox
      Left = 496
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object Panel11: TPanel
      Left = 822
      Top = 1
      Width = 400
      Height = 484
      Align = alRight
      TabOrder = 2
      object DBGrid6: TDBGrid
        Left = 1
        Top = 1
        Width = 398
        Height = 482
        Align = alClient
        DataSource = DataModule2.DataSource8
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Button7: TButton
      Left = 496
      Top = 64
      Width = 75
      Height = 25
      Caption = #304'mport'
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button13: TButton
      Left = 664
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Se'#231'm'#601'k'
      TabOrder = 4
      OnClick = Button13Click
    end
    object Edit55: TEdit
      Left = 752
      Top = 16
      Width = 33
      Height = 21
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 647
      Top = 16
      Width = 50
      Height = 21
      TabOrder = 6
      Text = '10'
    end
    object DBEdit1: TDBEdit
      Left = 432
      Top = 112
      Width = 57
      Height = 21
      DataField = 'Expr1000'
      DataSource = DataModule2.DataSource24
      TabOrder = 7
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 432
      Top = 139
      Width = 57
      Height = 21
      DataField = 'Expr1000'
      DataSource = DataModule2.DataSource25
      TabOrder = 8
      Visible = False
    end
  end
end
