object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 428
  Width = 1068
  object ADOQuery16: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Korporativ order by Cardid asc')
    Left = 565
    Top = 161
    object ADOQuery16Company: TWideStringField
      FieldName = 'Company'
      Size = 255
    end
    object ADOQuery16CardID: TIntegerField
      FieldName = 'CardID'
    end
    object ADOQuery16Reg_date: TDateTimeField
      FieldName = 'Reg_date'
    end
    object ADOQuery16End_date: TDateTimeField
      FieldName = 'End_date'
    end
    object ADOQuery16SAA: TWideStringField
      FieldName = 'SAA'
      Size = 255
    end
    object ADOQuery16DOB: TDateTimeField
      FieldName = 'DOB'
    end
    object ADOQuery16Cinsi: TWideStringField
      FieldName = 'Cinsi'
      Size = 255
    end
    object ADOQuery16Mob: TWideStringField
      FieldName = 'Mob'
      Size = 255
    end
    object ADOQuery16Email: TWideStringField
      FieldName = 'E-mail'
      Size = 255
    end
    object ADOQuery16Pasport: TWideStringField
      FieldName = 'Pasport'
      Size = 255
    end
    object ADOQuery16Address: TWideStringField
      FieldName = 'Address'
      Size = 255
    end
    object ADOQuery16Kurator: TWideStringField
      FieldName = 'Kurator'
      Size = 255
    end
    object ADOQuery16Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
    object ADOQuery16ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object DataSource16: TDataSource
    DataSet = ADOQuery16
    Left = 572
    Top = 224
  end
  object ADOQuery9: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum(M'#601'bl'#601#287'_AZN) from Bonus')
    Left = 29
    Top = 162
    object ADOQuery9Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery9
    Left = 29
    Top = 226
  end
  object ADOQuery10: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum('#399'DV) from Bonus')
    Left = 109
    Top = 162
    object ADOQuery10Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource10: TDataSource
    DataSet = ADOQuery10
    Left = 109
    Top = 226
  end
  object ADOQuery11: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum(Bonus) from Bonus')
    Left = 189
    Top = 161
    object ADOQuery11Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource11: TDataSource
    DataSet = ADOQuery11
    Left = 189
    Top = 225
  end
  object ADOQuery12: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum('#199'_B) from Bonus')
    Left = 269
    Top = 162
    object ADOQuery12Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource12: TDataSource
    DataSet = ADOQuery12
    Left = 269
    Top = 226
  end
  object ADOQuery13: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum(Q_B) from Bonus')
    Left = 349
    Top = 162
    object ADOQuery13Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource15: TDataSource
    DataSet = ADOQuery15
    Left = 501
    Top = 225
  end
  object ADOQuery15: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Vezife order by Vezife asc')
    Left = 493
    Top = 161
  end
  object OpenDialog4: TOpenDialog
    Left = 1013
    Top = 81
  end
  object SaveDialog3: TSaveDialog
    Filter = 'Excel|*.xlsx'
    InitialDir = 
      '\\192.168.0.149\'#351#601'fa mdm\2.QEYRI-R'#399'SM'#304' S'#399'N'#399'DL'#399'R\3.D'#304'SKONT '#350#214'B'#399'S'#304 +
      '\3.G'#220'Z'#399#350'T KARTLARI\3.MED.PERSONAL KART'#304
    Left = 941
    Top = 17
  end
  object SaveDialog4: TSaveDialog
    Filter = 'Word|*.docx'
    Left = 1013
    Top = 17
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery7
    Left = 493
    Top = 73
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Kart_'#8470','
      'sum(M'#601'bl'#601#287'_AZN) as M'#601'bl'#601#287', '
      'sum('#399'DV) as '#399'DV, '
      'sum(Bonus) as Bonus,'
      'sum(G'#252'z'#601#351't_AZN) as G'#252'z'#601#351't,'
      'sum(Borc_AZN) as Borc, '
      'sum('#199'_B) as Cixilan_Bonus, '
      'sum(Q_B) as Qalan_Bonus, '
      'sum('#399'lav'#601'_Bonus) as Elave_Bonus'
      'FROM Bonus'
      'group by '
      'Kart_'#8470)
    Left = 493
    Top = 17
    object ADOQuery7Kart_: TFloatField
      FieldName = 'Kart_'#8470
    end
    object ADOQuery7Məbləğ: TFloatField
      FieldName = 'M'#601'bl'#601#287
    end
    object ADOQuery7ƏDV: TFloatField
      FieldName = #399'DV'
    end
    object ADOQuery7Bonus: TFloatField
      FieldName = 'Bonus'
    end
    object ADOQuery7Güzəşt: TFloatField
      FieldName = 'G'#252'z'#601#351't'
    end
    object ADOQuery7Borc: TFloatField
      FieldName = 'Borc'
    end
    object ADOQuery7Cixilan_Bonus: TFloatField
      FieldName = 'Cixilan_Bonus'
    end
    object ADOQuery7Qalan_Bonus: TFloatField
      FieldName = 'Qalan_Bonus'
    end
    object ADOQuery7Elave_Bonus: TFloatField
      FieldName = 'Elave_Bonus'
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select max(Card_code) from Patients')
    Left = 173
    Top = 17
    object ADOQuery2Expr1000: TSmallintField
      FieldName = 'Expr1000'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 173
    Top = 73
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Patients order by Card_code asc')
    Left = 109
    Top = 17
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery1CardID: TSmallintField
      DisplayLabel = 'Kart n'#246'v'#252
      FieldName = 'CardID'
    end
    object ADOQuery1Card_code: TSmallintField
      DisplayLabel = 'Kart kodu'
      FieldName = 'Card_code'
    end
    object ADOQuery1Reg_date: TDateTimeField
      DisplayLabel = 'Verilm'#601' tarixi'
      FieldName = 'Reg_date'
    end
    object ADOQuery1End_date: TDateTimeField
      DisplayLabel = 'Bitm'#601' tarixi'
      FieldName = 'End_date'
    end
    object ADOQuery1Name_AZ: TWideStringField
      DisplayLabel = 'Pasiyent SAA'
      FieldName = 'Name_AZ'
      Size = 255
    end
    object ADOQuery1DOB: TDateTimeField
      DisplayLabel = 'Do'#287'um tarixi'
      FieldName = 'DOB'
    end
    object ADOQuery1Sex: TWideStringField
      DisplayLabel = 'Cinsi'
      FieldName = 'Sex'
      Size = 255
    end
    object ADOQuery1Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 109
    Top = 73
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Left = 36
    Top = 72
  end
  object OpenDialog3: TOpenDialog
    Left = 948
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Discount.accdb;Per' +
      'sist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 29
    Top = 17
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.ti' +
      'ff)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.tif' +
      'f'
    Left = 805
    Top = 81
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Word|*.docx'
    Left = 805
    Top = 17
  end
  object DataSource13: TDataSource
    DataSet = ADOQuery13
    Left = 349
    Top = 226
  end
  object ADOQuery14: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum('#399'lav'#601'_Bonus) from Bonus')
    Left = 421
    Top = 161
  end
  object DataSource14: TDataSource
    DataSet = ADOQuery14
    Left = 421
    Top = 226
  end
  object SaveDialog2: TSaveDialog
    Filter = 'Word|*.docx'
    Left = 869
    Top = 17
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Personal_add order by Cardid asc')
    Left = 429
    Top = 17
    object ADOQuery6ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery6CardID: TFloatField
      FieldName = 'CardID'
    end
    object ADOQuery6Name_AZ: TWideStringField
      FieldName = 'Name_AZ'
      Size = 255
    end
    object ADOQuery6W_Position: TWideStringField
      FieldName = 'W_Position'
      Size = 255
    end
    object ADOQuery6KVT: TDateTimeField
      FieldName = 'KVT'
    end
    object ADOQuery6DOB: TDateTimeField
      FieldName = 'DOB'
    end
    object ADOQuery6Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
    object ADOQuery6Leave_work: TDateTimeField
      FieldName = 'Leave_work'
    end
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select distinct(W_Position) from Personal where Name_az is not n' +
        'ull')
    Left = 365
    Top = 17
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Personal order by Cardid asc')
    Left = 301
    Top = 17
    object ADOQuery4CardID: TFloatField
      DisplayLabel = 'Kart '#8470
      FieldName = 'CardID'
    end
    object ADOQuery4Name_AZ: TWideStringField
      DisplayLabel = 'SAA'
      FieldName = 'Name_AZ'
      Size = 255
    end
    object ADOQuery4W_Position: TWideStringField
      DisplayLabel = 'V'#601'zif'#601'si'
      FieldName = 'W_Position'
      Size = 255
    end
    object ADOQuery4KVT: TDateTimeField
      DisplayLabel = 'Kart'#305'n verilm'#601' tarixi'
      FieldName = 'KVT'
    end
    object ADOQuery4DOB: TDateTimeField
      DisplayLabel = 'Do'#287'um tarixi'
      FieldName = 'DOB'
    end
    object ADOQuery4Leave_work: TWideStringField
      DisplayLabel = #304#351'd'#601'n azad olunma tarixi'
      FieldName = 'Leave_work'
      Size = 255
    end
    object ADOQuery4Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
    object ADOQuery4ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Personal where Name_Az is null')
    Left = 237
    Top = 17
    object ADOQuery3ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery3CardID: TFloatField
      FieldName = 'CardID'
    end
    object ADOQuery3Name_AZ: TWideStringField
      FieldName = 'Name_AZ'
      Size = 255
    end
    object ADOQuery3W_Position: TWideStringField
      FieldName = 'W_Position'
      Size = 255
    end
    object ADOQuery3KVT: TDateTimeField
      FieldName = 'KVT'
    end
    object ADOQuery3Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 245
    Top = 73
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 309
    Top = 73
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 373
    Top = 73
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 429
    Top = 73
  end
  object ADOQuery17: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Korporativ_add')
    Left = 637
    Top = 161
    object ADOQuery17Company: TWideStringField
      FieldName = 'Company'
      Size = 255
    end
    object ADOQuery17CardID: TIntegerField
      FieldName = 'CardID'
    end
    object ADOQuery17Reg_date: TDateTimeField
      FieldName = 'Reg_date'
    end
    object ADOQuery17End_date: TDateTimeField
      FieldName = 'End_date'
    end
    object ADOQuery17SAA: TWideStringField
      FieldName = 'SAA'
      Size = 255
    end
    object ADOQuery17DOB: TDateTimeField
      FieldName = 'DOB'
    end
    object ADOQuery17Cinsi: TWideStringField
      FieldName = 'Cinsi'
      Size = 255
    end
    object ADOQuery17Mob: TWideStringField
      FieldName = 'Mob'
      Size = 255
    end
    object ADOQuery17Email: TWideStringField
      FieldName = 'E-mail'
      Size = 255
    end
    object ADOQuery17Pasport: TWideStringField
      FieldName = 'Pasport'
      Size = 255
    end
    object ADOQuery17Address: TWideStringField
      FieldName = 'Address'
      Size = 255
    end
    object ADOQuery17Kurator: TWideStringField
      FieldName = 'Kurator'
      Size = 255
    end
    object ADOQuery17Photo: TWideStringField
      FieldName = 'Photo'
      Size = 255
    end
    object ADOQuery17ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object OpenDialog2: TOpenDialog
    Left = 877
    Top = 81
  end
  object DataSource17: TDataSource
    DataSet = ADOQuery17
    Left = 645
    Top = 225
  end
  object ADOQuery8: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 556
    Top = 16
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery8
    Left = 556
    Top = 72
  end
  object DataSource18: TDataSource
    DataSet = ADOQuery18
    Left = 704
    Top = 224
  end
  object ADOQuery19: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 760
    Top = 160
  end
  object DataSource19: TDataSource
    DataSet = ADOQuery19
    Left = 768
    Top = 224
  end
  object ADOQuery18: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from NIPT order by Cardid desc')
    Left = 696
    Top = 160
    object ADOQuery18ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery18Cardid: TIntegerField
      FieldName = 'Cardid'
    end
    object ADOQuery18Data: TDateTimeField
      FieldName = 'Data'
    end
    object ADOQuery18SAA: TWideStringField
      FieldName = 'SAA'
      Size = 255
    end
    object ADOQuery18DOB: TDateTimeField
      FieldName = 'DOB'
    end
    object ADOQuery18Mobil: TWideStringField
      FieldName = 'Mobil'
      Size = 255
    end
    object ADOQuery18SV: TWideStringField
      FieldName = 'SV'
      Size = 255
    end
    object ADOQuery18Adress: TWideStringField
      FieldName = 'Adress'
      Size = 255
    end
    object ADOQuery18Email: TWideStringField
      FieldName = 'Email'
      Size = 255
    end
    object ADOQuery18NİPT_kod: TWideStringField
      FieldName = 'N'#304'PT_ kod'
      Size = 255
    end
    object ADOQuery18NİPT_MEDİS: TWideStringField
      FieldName = 'N'#304'PT_MED'#304'S'
      Size = 255
    end
    object ADOQuery18USM_kod: TWideStringField
      FieldName = 'USM_kod'
      Size = 255
    end
    object ADOQuery18USM_MEDİS: TWideStringField
      FieldName = 'USM_MED'#304'S'
      Size = 255
    end
    object ADOQuery18Sender: TWideStringField
      FieldName = 'Sender'
      Size = 255
    end
  end
  object ADOQuery20: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Bonus')
    Left = 840
    Top = 168
    object ADOQuery20Tarix: TDateTimeField
      FieldName = 'Tarix'
    end
    object ADOQuery20Kart_: TFloatField
      FieldName = 'Kart_'#8470
    end
    object ADOQuery20SAA: TWideStringField
      FieldName = 'SAA'
      Size = 255
    end
    object ADOQuery20Cinsi: TWideStringField
      FieldName = 'Cinsi'
      Size = 255
    end
    object ADOQuery20Təvəllüd: TFloatField
      FieldName = 'T'#601'v'#601'll'#252'd'
    end
    object ADOQuery20Göndərən_həkim: TWideStringField
      FieldName = 'G'#246'nd'#601'r'#601'n_h'#601'kim'
      Size = 255
    end
    object ADOQuery20Məbləğ_AZN: TFloatField
      FieldName = 'M'#601'bl'#601#287'_AZN'
    end
    object ADOQuery20ƏDV: TFloatField
      FieldName = #399'DV'
    end
    object ADOQuery20Bonus: TFloatField
      FieldName = 'Bonus'
    end
    object ADOQuery20Mob: TFloatField
      FieldName = 'Mob'
    end
    object ADOQuery20Güzəşt_AZN: TFloatField
      FieldName = 'G'#252'z'#601#351't_AZN'
    end
    object ADOQuery20Borc_AZN: TFloatField
      FieldName = 'Borc_AZN'
    end
    object ADOQuery20Ç_B: TFloatField
      FieldName = #199'_B'
    end
    object ADOQuery20Q_B: TFloatField
      FieldName = 'Q_B'
    end
    object ADOQuery20Əlavə_Bonus: TFloatField
      FieldName = #399'lav'#601'_Bonus'
    end
    object ADOQuery20Qeyd: TWideStringField
      FieldName = 'Qeyd'
      Size = 255
    end
    object ADOQuery20Qeyd_2: TWideStringField
      FieldName = 'Qeyd_2'
      Size = 255
    end
    object ADOQuery20Uname: TWideStringField
      FieldName = 'Uname'
      Size = 255
    end
    object ADOQuery20Summa: TFloatField
      FieldName = 'Summa'
    end
  end
  object DataSource20: TDataSource
    DataSet = ADOQuery20
    Left = 840
    Top = 224
  end
  object ADOQuery21: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Bonus')
    Left = 912
    Top = 168
    object ADOQuery21ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery21Tarix: TDateTimeField
      FieldName = 'Tarix'
    end
    object ADOQuery21Kart_: TFloatField
      FieldName = 'Kart_'#8470
    end
    object ADOQuery21Xidmət_kodu: TFloatField
      FieldName = 'Xidm'#601't_kodu'
    end
    object ADOQuery21SAA: TWideStringField
      FieldName = 'SAA'
      Size = 255
    end
    object ADOQuery21Cinsi: TWideStringField
      FieldName = 'Cinsi'
      Size = 255
    end
    object ADOQuery21Təvəllüd: TFloatField
      FieldName = 'T'#601'v'#601'll'#252'd'
    end
    object ADOQuery21Göndərən_həkim: TWideStringField
      FieldName = 'G'#246'nd'#601'r'#601'n_h'#601'kim'
      Size = 255
    end
    object ADOQuery21Məbləğ_AZN: TFloatField
      FieldName = 'M'#601'bl'#601#287'_AZN'
    end
    object ADOQuery21ƏDV: TFloatField
      FieldName = #399'DV'
    end
    object ADOQuery21Bonus: TFloatField
      FieldName = 'Bonus'
    end
    object ADOQuery21Mob: TFloatField
      FieldName = 'Mob'
    end
    object ADOQuery21Güzəşt_AZN: TFloatField
      FieldName = 'G'#252'z'#601#351't_AZN'
    end
    object ADOQuery21Borc_AZN: TFloatField
      FieldName = 'Borc_AZN'
    end
    object ADOQuery21Ç_B: TFloatField
      FieldName = #199'_B'
    end
    object ADOQuery21Q_B: TFloatField
      FieldName = 'Q_B'
    end
    object ADOQuery21Əlavə_Bonus: TFloatField
      FieldName = #399'lav'#601'_Bonus'
    end
    object ADOQuery21Qeyd: TWideStringField
      FieldName = 'Qeyd'
      Size = 255
    end
    object ADOQuery21Qeyd_2: TWideStringField
      FieldName = 'Qeyd_2'
      Size = 255
    end
    object ADOQuery21Uname: TWideStringField
      FieldName = 'Uname'
      Size = 255
    end
    object ADOQuery21Summa: TFloatField
      FieldName = 'Summa'
    end
  end
  object DataSource21: TDataSource
    DataSet = ADOQuery21
    Left = 912
    Top = 224
  end
  object ADOQuery22: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select count(Kart_'#8470') from Bonus')
    Left = 984
    Top = 168
    object ADOQuery22Expr1000: TIntegerField
      FieldName = 'Expr1000'
    end
  end
  object DataSource22: TDataSource
    DataSet = ADOQuery22
    Left = 984
    Top = 224
  end
  object ADOQuery23: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select distinct(G'#246'nd'#601'r'#601'n_h'#601'kim) from Bonus where G'#246'nd'#601'r'#601'n_h'#601'kim<' +
        '>'#39#39)
    Left = 29
    Top = 290
    object ADOQuery23Göndərən_həkim: TWideStringField
      FieldName = 'G'#246'nd'#601'r'#601'n_h'#601'kim'
      Size = 255
    end
  end
  object DataSource23: TDataSource
    DataSet = ADOQuery23
    Left = 29
    Top = 354
  end
  object ADOQuery24: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select count(Kart_'#8470') from Bonus')
    Left = 104
    Top = 288
    object ADOQuery24Expr1000: TIntegerField
      FieldName = 'Expr1000'
    end
  end
  object DataSource24: TDataSource
    DataSet = ADOQuery24
    Left = 104
    Top = 352
  end
  object ADOQuery25: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select sum(Q_B) from Bonus')
    Left = 184
    Top = 296
    object ADOQuery25Expr1000: TFloatField
      FieldName = 'Expr1000'
    end
  end
  object DataSource25: TDataSource
    DataSet = ADOQuery25
    Left = 184
    Top = 360
  end
end
