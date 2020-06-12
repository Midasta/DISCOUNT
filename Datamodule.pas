unit Datamodule;

interface

uses
  System.SysUtils, System.Classes, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.Dialogs;

type
  TDataModule2 = class(TDataModule)
    ADOQuery16: TADOQuery;
    ADOQuery16Company: TWideStringField;
    ADOQuery16CardID: TIntegerField;
    ADOQuery16Reg_date: TDateTimeField;
    ADOQuery16End_date: TDateTimeField;
    ADOQuery16SAA: TWideStringField;
    ADOQuery16DOB: TDateTimeField;
    ADOQuery16Cinsi: TWideStringField;
    ADOQuery16Mob: TWideStringField;
    ADOQuery16Email: TWideStringField;
    ADOQuery16Pasport: TWideStringField;
    ADOQuery16Address: TWideStringField;
    ADOQuery16Kurator: TWideStringField;
    ADOQuery16Photo: TWideStringField;
    ADOQuery16ID: TAutoIncField;
    DataSource16: TDataSource;
    ADOQuery9: TADOQuery;
    ADOQuery9Expr1000: TFloatField;
    DataSource9: TDataSource;
    ADOQuery10: TADOQuery;
    ADOQuery10Expr1000: TFloatField;
    DataSource10: TDataSource;
    ADOQuery11: TADOQuery;
    ADOQuery11Expr1000: TFloatField;
    DataSource11: TDataSource;
    ADOQuery12: TADOQuery;
    ADOQuery12Expr1000: TFloatField;
    DataSource12: TDataSource;
    ADOQuery13: TADOQuery;
    ADOQuery13Expr1000: TFloatField;
    DataSource15: TDataSource;
    ADOQuery15: TADOQuery;
    OpenDialog4: TOpenDialog;
    SaveDialog3: TSaveDialog;
    SaveDialog4: TSaveDialog;
    DataSource7: TDataSource;
    ADOQuery7: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery2Expr1000: TSmallintField;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1ID: TAutoIncField;
    ADOQuery1CardID: TSmallintField;
    ADOQuery1Card_code: TSmallintField;
    ADOQuery1Reg_date: TDateTimeField;
    ADOQuery1End_date: TDateTimeField;
    ADOQuery1Name_AZ: TWideStringField;
    ADOQuery1DOB: TDateTimeField;
    ADOQuery1Sex: TWideStringField;
    ADOQuery1Photo: TWideStringField;
    DataSource1: TDataSource;
    ADOConnection2: TADOConnection;
    OpenDialog3: TOpenDialog;
    ADOConnection1: TADOConnection;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DataSource13: TDataSource;
    ADOQuery14: TADOQuery;
    DataSource14: TDataSource;
    SaveDialog2: TSaveDialog;
    ADOQuery6: TADOQuery;
    ADOQuery6ID: TAutoIncField;
    ADOQuery6CardID: TFloatField;
    ADOQuery6Name_AZ: TWideStringField;
    ADOQuery6W_Position: TWideStringField;
    ADOQuery6KVT: TDateTimeField;
    ADOQuery6DOB: TDateTimeField;
    ADOQuery6Photo: TWideStringField;
    ADOQuery6Leave_work: TDateTimeField;
    ADOQuery5: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery4CardID: TFloatField;
    ADOQuery4Name_AZ: TWideStringField;
    ADOQuery4W_Position: TWideStringField;
    ADOQuery4KVT: TDateTimeField;
    ADOQuery4DOB: TDateTimeField;
    ADOQuery4Leave_work: TWideStringField;
    ADOQuery4ID: TAutoIncField;
    ADOQuery3: TADOQuery;
    ADOQuery3ID: TAutoIncField;
    ADOQuery3CardID: TFloatField;
    ADOQuery3Name_AZ: TWideStringField;
    ADOQuery3W_Position: TWideStringField;
    ADOQuery3KVT: TDateTimeField;
    ADOQuery3Photo: TWideStringField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    ADOQuery17: TADOQuery;
    ADOQuery17Company: TWideStringField;
    ADOQuery17CardID: TIntegerField;
    ADOQuery17Reg_date: TDateTimeField;
    ADOQuery17End_date: TDateTimeField;
    ADOQuery17SAA: TWideStringField;
    ADOQuery17DOB: TDateTimeField;
    ADOQuery17Cinsi: TWideStringField;
    ADOQuery17Mob: TWideStringField;
    ADOQuery17Email: TWideStringField;
    ADOQuery17Pasport: TWideStringField;
    ADOQuery17Address: TWideStringField;
    ADOQuery17Kurator: TWideStringField;
    ADOQuery17Photo: TWideStringField;
    ADOQuery17ID: TAutoIncField;
    OpenDialog2: TOpenDialog;
    DataSource17: TDataSource;
    ADOQuery8: TADOQuery;
    DataSource8: TDataSource;
    ADOQuery4Photo: TWideStringField;
    DataSource18: TDataSource;
    ADOQuery19: TADOQuery;
    DataSource19: TDataSource;
    ADOQuery18: TADOQuery;
    ADOQuery18ID: TAutoIncField;
    ADOQuery18Cardid: TIntegerField;
    ADOQuery18Data: TDateTimeField;
    ADOQuery18SAA: TWideStringField;
    ADOQuery18DOB: TDateTimeField;
    ADOQuery18Mobil: TWideStringField;
    ADOQuery18SV: TWideStringField;
    ADOQuery18Adress: TWideStringField;
    ADOQuery18Email: TWideStringField;
    ADOQuery18NİPT_kod: TWideStringField;
    ADOQuery18NİPT_MEDİS: TWideStringField;
    ADOQuery18USM_kod: TWideStringField;
    ADOQuery18USM_MEDİS: TWideStringField;
    ADOQuery18Sender: TWideStringField;
    ADOQuery20: TADOQuery;
    DataSource20: TDataSource;
    ADOQuery21: TADOQuery;
    DataSource21: TDataSource;
    ADOQuery21ID: TAutoIncField;
    ADOQuery21Tarix: TDateTimeField;
    ADOQuery21Kart_: TFloatField;
    ADOQuery21Xidmət_kodu: TFloatField;
    ADOQuery21SAA: TWideStringField;
    ADOQuery21Cinsi: TWideStringField;
    ADOQuery21Təvəllüd: TFloatField;
    ADOQuery21Göndərən_həkim: TWideStringField;
    ADOQuery21Məbləğ_AZN: TFloatField;
    ADOQuery21ƏDV: TFloatField;
    ADOQuery21Bonus: TFloatField;
    ADOQuery21Mob: TFloatField;
    ADOQuery21Güzəşt_AZN: TFloatField;
    ADOQuery21Borc_AZN: TFloatField;
    ADOQuery21Ç_B: TFloatField;
    ADOQuery21Q_B: TFloatField;
    ADOQuery21Əlavə_Bonus: TFloatField;
    ADOQuery21Qeyd: TWideStringField;
    ADOQuery21Qeyd_2: TWideStringField;
    ADOQuery21Uname: TWideStringField;
    ADOQuery21Summa: TFloatField;
    ADOQuery22: TADOQuery;
    DataSource22: TDataSource;
    ADOQuery22Expr1000: TIntegerField;
    ADOQuery20Tarix: TDateTimeField;
    ADOQuery20Kart_: TFloatField;
    ADOQuery20SAA: TWideStringField;
    ADOQuery20Cinsi: TWideStringField;
    ADOQuery20Təvəllüd: TFloatField;
    ADOQuery20Göndərən_həkim: TWideStringField;
    ADOQuery20Məbləğ_AZN: TFloatField;
    ADOQuery20ƏDV: TFloatField;
    ADOQuery20Bonus: TFloatField;
    ADOQuery20Mob: TFloatField;
    ADOQuery20Güzəşt_AZN: TFloatField;
    ADOQuery20Borc_AZN: TFloatField;
    ADOQuery20Ç_B: TFloatField;
    ADOQuery20Q_B: TFloatField;
    ADOQuery20Əlavə_Bonus: TFloatField;
    ADOQuery20Qeyd: TWideStringField;
    ADOQuery20Qeyd_2: TWideStringField;
    ADOQuery20Uname: TWideStringField;
    ADOQuery20Summa: TFloatField;
    ADOQuery7Kart_: TFloatField;
    ADOQuery7Məbləğ: TFloatField;
    ADOQuery7ƏDV: TFloatField;
    ADOQuery7Bonus: TFloatField;
    ADOQuery7Güzəşt: TFloatField;
    ADOQuery7Borc: TFloatField;
    ADOQuery7Cixilan_Bonus: TFloatField;
    ADOQuery7Qalan_Bonus: TFloatField;
    ADOQuery7Elave_Bonus: TFloatField;
    ADOQuery23: TADOQuery;
    DataSource23: TDataSource;
    ADOQuery23Göndərən_həkim: TWideStringField;
    ADOQuery24: TADOQuery;
    DataSource24: TDataSource;
    ADOQuery24Expr1000: TIntegerField;
    ADOQuery25: TADOQuery;
    DataSource25: TDataSource;
    ADOQuery25Expr1000: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MainUnit, Bonus, NIPT, Patients, Personal, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

{$R *.dfm}

end.
