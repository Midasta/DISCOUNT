object Form1: TForm1
  Left = 0
  Top = 0
  Width = 1452
  Height = 780
  Anchors = [akLeft, akTop, akRight, akBottom]
  AutoScroll = True
  Caption = 'Diskont'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 672
    Top = 64
    object Gztkart11: TMenuItem
      Caption = 'G'#252'z'#601#351't kartlar'#305
      object Gztkart12: TMenuItem
        Caption = 'Pasiyent g'#252'z'#601#351't kart'#305
        OnClick = Gztkart12Click
      end
      object ibbipersonalkart1: TMenuItem
        Caption = 'Tibbi personal kart'#305
        OnClick = ibbipersonalkart1Click
      end
      object Bonuskart1: TMenuItem
        Caption = 'Bonus kart'
        OnClick = Bonuskart1Click
      end
      object Korporativkart1: TMenuItem
        Caption = 'Korporativ kart'
        OnClick = Korporativkart1Click
      end
      object NIPTkart1: TMenuItem
        Caption = 'NIPT kart'
        OnClick = NIPTkart1Click
      end
    end
    object Sndlr1: TMenuItem
      Caption = 'S'#601'n'#601'dl'#601'r'
      object sas1: TMenuItem
        Caption = #399'sas'
        Visible = False
      end
      object Hkimlrn1: TMenuItem
        Caption = 'H'#601'kiml'#601'r '#252#231#252'n'
        Visible = False
      end
      object VPpasiyent1: TMenuItem
        Caption = 'V'#304'P pasiyent'
        Visible = False
      end
      object ibbipersonal1: TMenuItem
        Caption = 'Tibbi personal'
        Visible = False
      end
      object Reprezantlar1: TMenuItem
        Caption = 'Reprezantlar'
        Visible = False
      end
      object Gztkartlarolanpasiyentlr1: TMenuItem
        Caption = 'G'#252'z'#601#351't kartlar'#305' olan pasiyentl'#601'r'
        Visible = False
      end
      object Bonuskartlar1: TMenuItem
        Caption = 'Bonus kartlar'#305' y'#252'kl'#601'm'#601'k'
        OnClick = Bonuskartlar1Click
      end
      object Korporativ1: TMenuItem
        Caption = 'Korporativ kartlar y'#252'kl'#601'm'#601'k'
        OnClick = Korporativ1Click
      end
      object NIPTkartlar1: TMenuItem
        Caption = 'NIPT kartlar y'#252'kl'#601'm'#601'k'
        OnClick = NIPTkartlar1Click
      end
    end
  end
end
