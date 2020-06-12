unit NIPTUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,Comobj;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Bonus, BunusUpload, Corporation, CorpUpload, Datamodule, MainUnit, NIPT,
  Patients, Personal;

procedure TForm9.Button1Click(Sender: TObject);
var ExcelApp1:OleVariant;       //
i:integer;
begin
try
     ExcelApp1:=CreateOleObject('Excel.Application');
  except
    ExcelApp1:=GetActiveOleObject('Excel.Application');
 end;
if DataModule2.OpenDialog4.Execute then
begin
ExcelApp1.Workbooks.Open(DataModule2.OpenDialog4.FileName);
for i:=1 to ExcelApp1.Worksheets.count do
ComboBox1.Items.add(ExcelApp1.Worksheets[i].Name);
end
else
begin
  ShowMessage('Heçnə seçilməyib');
end;
 ExcelApp1.Workbooks.Close;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
while not DataModule2.ADOQuery19.Eof do
      begin
      DataModule2.ADOQuery18.Insert;
      DataModule2.ADOQuery18Cardid.Value:=DataModule2.ADOQuery19.FieldByName('Kart №').AsInteger;
      DataModule2.ADOQuery18Data.Value:=DataModule2.ADOQuery19.FieldByName('Kartın verilmə tarixi').AsDateTime;
      DataModule2.ADOQuery18SAA.Value:=DataModule2.ADOQuery19.FieldByName('Pasiyentin Soyadı, Adı, Atasının adı').AsString;
      DataModule2.ADOQuery18DOB.Value:=DataModule2.ADOQuery19.FieldByName('Doğum tarixi').AsDateTime;
      DataModule2.ADOQuery18Mobil.Value:=DataModule2.ADOQuery19.FieldByName('Əlaqə nömrəsi').AsString;
      DataModule2.ADOQuery18SV.Value:=DataModule2.ADOQuery19.FieldByName('Şəxsiyyət vəsiqəsinin seriyası AZE №').AsString;
      DataModule2.ADOQuery18Adress.Value:=DataModule2.ADOQuery19.FieldByName('Ünvan').AsString;
      DataModule2.ADOQuery18Email.Value:=DataModule2.ADOQuery19.FieldByName('E-mail').AsString;
      DataModule2.ADOQuery18NİPT_kod.Value:=DataModule2.ADOQuery19.FieldByName('NİPT kod').AsString;
      DataModule2.ADOQuery18NİPT_MEDİS.Value:=DataModule2.ADOQuery19.FieldByName('NİPT MEDİS').AsString;
      DataModule2.ADOQuery18USM_kod.Value:=DataModule2.ADOQuery19.FieldByName('USM kod').AsString;
      DataModule2.ADOQuery18USM_MEDİS.Value:=DataModule2.ADOQuery19.FieldByName('USM MEDİS').AsString;
      DataModule2.ADOQuery18Sender.Value:=DataModule2.ADOQuery19.FieldByName('Göndərən Həkim').AsString;
      DataModule2.ADOQuery18.Next;
      DataModule2.ADOQuery19.Next;
      end;
DataModule2.ADOConnection2.Connected:=False;
DataModule2.ADOConnection2.ConnectionString := '';
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
DataModule2.ADOQuery18.SQL.Clear;
DataModule2.ADOQuery18.SQL.Add('Delete * from NIPT');
DataModule2.ADOQuery18.ExecSQL;
DataModule2.ADOQuery18.SQL.Clear;
DataModule2.ADOQuery18.SQL.Add('Select * from NIPT order by Num asc');
DataModule2.ADOQuery18.Open;
end;

procedure TForm9.ComboBox1Change(Sender: TObject);
begin
DataModule2.ADOConnection2.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=' + ExtractFilePath(DataModule2.OpenDialog4.FileName)+extractfilename(DataModule2.opendialog4.filename)+';User ID=Admin;Password=;Extended Properties=Excel 12.0 XML';
DataModule2.ADOConnection2.Connected:=True;
DataModule2.ADOQuery19.SQL.Clear;
DataModule2.ADOQuery19.SQL.Add('select * from ['+ComboBox1.text+'$]');
DataModule2.ADOQuery19.ExecSQL;
DataModule2.ADOQuery19.Active:=True;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form9.Destroy;
end;

end.
