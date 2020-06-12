unit BunusUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,IniFiles,Comobj, Vcl.Mask, Vcl.DBCtrls;

type
  TForm6 = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid5: TDBGrid;
    ComboBox1: TComboBox;
    Panel11: TPanel;
    DBGrid6: TDBGrid;
    Button7: TButton;
    Button13: TButton;
    Edit55: TEdit;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Bonus, Datamodule, MainUnit, NIPT, Patients, Personal, Corporation,
  CorpUpload, NIPTUpload;

procedure TForm6.Button13Click(Sender: TObject);
var ExcelApp1:OleVariant;       //
i:integer;
begin
try
ExcelApp1:= GetActiveOleObject('Excel.Application');
except
ExcelApp1:=CreateOleObject('Excel.Application');
end;
if DataModule2.OpenDialog3.Execute then
begin
ExcelApp1.Workbooks.Open(DataModule2.OpenDialog3.FileName);
for i:=1 to ExcelApp1.Worksheets.count do
ComboBox1.Items.add(ExcelApp1.Worksheets[i].Name);
end
else
begin
ShowMessage('Heçnə seçilməyib');
end;
ExcelApp1.Workbooks.Close;
end;

procedure TForm6.Button7Click(Sender: TObject);
var
a: double;
i: integer;
begin
while not DataModule2.ADOQuery8.Eof do
begin
 DataModule2.ADOQuery21.Insert;
 DataModule2.ADOQuery21Tarix.Value:= DataModule2.ADOQuery8.FieldByName('Дата').AsDateTime;
 DataModule2.ADOQuery21Kart_.Value:= DataModule2.ADOQuery8.FieldByName('Ск#карта №').AsFloat;
 DataModule2.ADOQuery21Xidmət_kodu.Value:=DataModule2.ADOQuery8.FieldByName('Жур№').AsFloat;
 DataModule2.ADOQuery21SAA.Value:=DataModule2.ADOQuery8.FieldByName('ФИО пациента').AsString;
 DataModule2.ADOQuery21Cinsi.Value:=DataModule2.ADOQuery8.FieldByName('Пол').AsString;
 DataModule2.ADOQuery21Təvəllüd.Value:=DataModule2.ADOQuery8.FieldByName('ГР').AsFloat;
 DataModule2.ADOQuery21Göndərən_həkim.Value:=DataModule2.ADOQuery8.FieldByName('Врач').AsString;
 DataModule2.ADOQuery21Məbləğ_AZN.Value:=DataModule2.ADOQuery8.FieldByName('Сумма').AsFloat;
 DataModule2.ADOQuery21ƏDV.Value:=DataModule2.ADOQuery8.FieldByName('НДС').AsFloat;
 DataModule2.ADOQuery21Bonus.Value:=DataModule2.ADOQuery21Məbləğ_AZN.Value*strtoint(Edit1.Text)/100;
 DataModule2.ADOQuery21Güzəşt_AZN.Value:=DataModule2.ADOQuery8.FieldByName('Скидка').AsFloat;
 DataModule2.ADOQuery21Borc_AZN.Value:=DataModule2.ADOQuery8.FieldByName('Долг').AsFloat;
 DataModule2.ADOQuery21Uname.Value:= DataModule2.ADOQuery8.FieldByName('Оператор').AsString;
 DataModule2.ADOQuery21Summa.Value:=strtofloat(Edit55.Text);
 DataModule2.ADOQuery21Ç_B.Value:=0;
 DataModule2.ADOQuery21Q_B.Value:=0;
 DataModule2.ADOQuery21Əlavə_Bonus.Value:=0;
 DataModule2.ADOQuery21.Next;


 DataModule2.ADOQuery21.SQL.Clear;
 DataModule2.ADOQuery21.SQL.Add('Select * from Bonus where Kart_№ = '+floattostr(DataModule2.ADOQuery8.FieldByName('Ск#карта №').AsFloat)+'');
 DataModule2.ADOQuery21.Open;

 DataModule2.ADOQuery24.Sql.Clear;
 DataModule2.ADOQuery24.SQL.Add('Select count(Kart_№) from Bonus where Kart_№ = '+floattostr(DataModule2.ADOQuery8.FieldByName('Ск#карта №').AsFloat)+'');
 DataModule2.ADOQuery24.Open;

 DataModule2.ADOQuery25.Sql.Clear;
 DataModule2.ADOQuery25.SQL.Add('Select sum(Q_B) from Bonus where Kart_№ = '+floattostr(DataModule2.ADOQuery8.FieldByName('Ск#карта №').AsFloat)+'');
 DataModule2.ADOQuery25.Open;

 if DBEdit2.Text>'0' then
 begin
 a:=strtofloat(DBEdit2.Text)+(DataModule2.ADOQuery21Məbləğ_AZN.Value*strtoint(Edit1.Text)/100);
 for I := 1 to DataModule2.ADOQuery21.RecordCount do
 begin
 DataModule2.ADOQuery21.Edit;
 DataModule2.ADOQuery21Q_B.Value:=a/strtofloat(DBEdit1.Text);
 DataModule2.ADOQuery21.Post;
 DataModule2.ADOQuery21.Next;
 end;
 end;
 DataModule2.ADOQuery8.Next;
end;
DataModule2.ADOConnection2.Connected:=False;
DataModule2.ADOConnection2.ConnectionString := '';
end;

procedure TForm6.ComboBox1Change(Sender: TObject);
begin
//Имя листа не должно совпадать с именем документа
DataModule2.ADOConnection2.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=' + ExtractFilePath(DataModule2.OpenDialog3.FileName)+extractfilename(DataModule2.opendialog3.filename)+';User ID=Admin;Password=;Extended Properties=Excel 12.0 XML';
DataModule2.ADOConnection2.Connected:=True;
DataModule2.ADOQuery8.SQL.Clear;
DataModule2.ADOQuery8.SQL.Add('select * from ['+ComboBox1.text+'$]');
DataModule2.ADOQuery8.ExecSQL;
DataModule2.ADOQuery8.Active:=True;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
cfgFile:= TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'config.dat');
edit55.Text:= cfgFile.ReadString('general','AZN',edit55.Text);
cfgFile.Free;
DataModule2.ADOQuery7.Active:=false;
DataModule2.ADOQuery7.Active:=true;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form6.Destroy;
end;

end.
