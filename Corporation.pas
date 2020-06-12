unit Corporation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,Comobj;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Panel14: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Image3: TImage;
    Edit35: TEdit;
    Edit36: TEdit;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    Edit37: TEdit;
    MaskEdit22: TMaskEdit;
    ComboBox3: TComboBox;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    MaskEdit43: TMaskEdit;
    Edit44: TEdit;
    MaskEdit44: TMaskEdit;
    Edit45: TEdit;
    MaskEdit45: TMaskEdit;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    DBGrid8: TDBGrid;
    Button24: TButton;
    Panel2: TPanel;
    DBGrid7: TDBGrid;
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MaskEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Bonus, BunusUpload, Datamodule, MainUnit, NIPT, Patients, Personal,
  CorpUpload, NIPTUpload;

procedure TForm7.Button20Click(Sender: TObject);
begin
DataModule2.ADOQuery16.Insert;
DataModule2.ADOQuery16Company.Value:=Edit35.Text;
DataModule2.ADOQuery16CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery16Reg_date.Value:=strtodate(MaskEdit20.Text);
DataModule2.ADOQuery16End_date.Value:=strtodate(MaskEdit21.Text);
DataModule2.ADOQuery16SAA.Value:=Edit37.Text;
DataModule2.ADOQuery16DOB.Value:=strtodate(MaskEdit22.Text);
DataModule2.ADOQuery16Cinsi.Value:=ComboBox3.Text;
DataModule2.ADOQuery16Mob.Value:=Edit38.Text;
DataModule2.ADOQuery16Email.Value:=Edit39.Text;
DataModule2.ADOQuery16Pasport.Value:=Edit40.Text;
DataModule2.ADOQuery16Address.Value:=Edit41.Text;
DataModule2.ADOQuery16Kurator.Value:=Edit42.Text;
if DataModule2.OpenDialog4.FileName='' then
begin
DataModule2.ADOQuery16Photo.Value:='';
end;
if DataModule2.OpenDialog4.FileName<>'' then
begin
DataModule2.ADOQuery16Photo.Value:=DataModule2.OpenDialog4.FileName;
end;
DataModule2.ADOQuery16.Next;
if Edit43.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit43.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit43.Text);
DataModule2.ADOQuery17.Next;
end;
if Edit44.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit44.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit44.Text);
DataModule2.ADOQuery17.Next;
end;
if Edit45.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit45.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit45.Text);
DataModule2.ADOQuery17.Next;
end;
Edit35.Text:='';
Edit36.Text:='';
MaskEdit20.Text:='__.__.____';
MaskEdit21.Text:='__.__.____';
Edit37.Text:='';
MaskEdit22.Text:='__.__.____';
ComboBox3.Text:='';
Edit38.Text:='';
Edit39.Text:='';
Edit40.Text:='';
Edit41.Text:='';
Edit42.Text:='';
DataModule2.OpenDialog4.FileName:='';
Image3.Picture:=nil;
Edit43.Text:='';
Edit44.Text:='';
Edit45.Text:='';
MaskEdit43.Text:='__.__.____';
MaskEdit44.Text:='__.__.____';
MaskEdit45.Text:='__.__.____';
end;

procedure TForm7.Button21Click(Sender: TObject);
begin
Edit35.Text:='';
Edit36.Text:='';
MaskEdit20.Text:='__.__.____';
MaskEdit21.Text:='__.__.____';
Edit37.Text:='';
MaskEdit22.Text:='__.__.____';
ComboBox3.Text:='';
Edit38.Text:='';
Edit39.Text:='';
Edit40.Text:='';
Edit41.Text:='';
Edit42.Text:='';
DataModule2.OpenDialog4.FileName:='';
Image3.Picture:=nil;
Edit43.Text:='';
Edit44.Text:='';
Edit45.Text:='';
MaskEdit43.Text:='__.__.____';
MaskEdit44.Text:='__.__.____';
MaskEdit45.Text:='__.__.____';
end;

procedure TForm7.Button22Click(Sender: TObject);
begin
DataModule2.ADOQuery16.Edit;
DataModule2.ADOQuery16Company.Value:=Edit35.Text;
DataModule2.ADOQuery16CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery16Reg_date.Value:=strtodate(MaskEdit20.Text);
DataModule2.ADOQuery16End_date.Value:=strtodate(MaskEdit21.Text);
DataModule2.ADOQuery16SAA.Value:=Edit37.Text;
DataModule2.ADOQuery16DOB.Value:=strtodate(MaskEdit22.Text);
DataModule2.ADOQuery16Cinsi.Value:=ComboBox3.Text;
DataModule2.ADOQuery16Mob.Value:=Edit38.Text;
DataModule2.ADOQuery16Email.Value:=Edit39.Text;
DataModule2.ADOQuery16Pasport.Value:=Edit40.Text;
DataModule2.ADOQuery16Address.Value:=Edit41.Text;
DataModule2.ADOQuery16Kurator.Value:=Edit42.Text;
DataModule2.ADOQuery16Photo.Value:=DataModule2.OpenDialog4.FileName;
DataModule2.ADOQuery16.Post;
DataModule2.ADOQuery17.Active:=false;
DataModule2.ADOQuery17.SQL.Clear;
DataModule2.ADOQuery17.SQL.Add('Delete * from Korporativ_add where Cardid='+edit36.text+'');
DataModule2.ADOQuery17.ExecSQL;
DataModule2.ADOQuery17.SQL.Clear;
DataModule2.ADOQuery17.SQL.Add('Select * from Korporativ_add where Cardid='+edit36.text+'');
DataModule2.ADOQuery17.ExecSQL;
DataModule2.ADOQuery17.Active:=true;
if Edit43.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit43.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit43.Text);
DataModule2.ADOQuery17.Next;
end;
if Edit44.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit44.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit44.Text);
DataModule2.ADOQuery17.Next;
end;
if Edit45.Text<>'' then
begin
DataModule2.ADOQuery17.Insert;
DataModule2.ADOQuery17Company.Value:=Edit35.Text;
DataModule2.ADOQuery17CardID.Value:=strtoint(Edit36.Text);
DataModule2.ADOQuery17SAA.Value:=Edit45.Text;
DataModule2.ADOQuery17DOB.Value:=strtodate(MaskEdit45.Text);
DataModule2.ADOQuery17.Next;
end;
Edit35.Text:='';
Edit36.Text:='';
MaskEdit20.Text:='__.__.____';
MaskEdit21.Text:='__.__.____';
Edit37.Text:='';
MaskEdit22.Text:='__.__.____';
ComboBox3.Text:='';
Edit38.Text:='';
Edit39.Text:='';
Edit40.Text:='';
Edit41.Text:='';
Edit42.Text:='';
DataModule2.OpenDialog4.FileName:='';
Image3.Picture:=nil;
Edit43.Text:='';
Edit44.Text:='';
Edit45.Text:='';
MaskEdit43.Text:='__.__.____';
MaskEdit44.Text:='__.__.____';
MaskEdit45.Text:='__.__.____';
end;

procedure TForm7.Button23Click(Sender: TObject);
Var Excel, FData: Variant;                //
    i,j:integer;
begin
DataModule2.ADOQuery16.Active:=False;
DataModule2.ADOQuery16.SQL.Clear;
DataModule2.ADOQuery16.SQL.Add('Select * from Korporativ union all select * from Korporativ_add order by cardid,photo desc');
DataModule2.ADOQuery16.ExecSQL;
DataModule2.ADOQuery16.Active:=True;
try
Excel:=CreateOleObject('Excel.Application');
except
Excel:=GetActiveOleObject('Excel.Application');
end;
Excel.Workbooks.Open(ExtractFilePath(ParamStr(0))+'Korporativ.xlsx');
FData:=VarArrayCreate([1,DataModule2.ADOQuery16.RecordCount+1,1,DataModule2.ADOQuery16.Fields.Count],varVariant);
Excel.Worksheets[1].Select;
for j:=1 to DataModule2.ADOQuery16.Fields.Count do
FData[1,j]:=DataModule2.ADOQuery16.Fields[j-1].DisplayLabel;
DataModule2.ADOQuery16.First;
i:=2;
while not DataModule2.ADOQuery16.Eof do
begin
for j:=1 to DataModule2.ADOQuery16.Fields.Count do
FData[i,j]:=DataModule2.ADOQuery16.Fields[j-1].Value;
DataModule2.ADOQuery16.Next;
i:=i+1;
end;
ShowMessage(Fdata[i-1,j-1]);
Excel.Range[Excel.Cells[1, 1], Excel.Cells[DataModule2.ADOQuery16.RecordCount+1, DataModule2.ADOQuery16.Fields.Count-1]].Value:=FData;
Excel.Range[Excel.Cells[1, 1], Excel.Cells[1,DataModule2.ADOQuery16.Fields.Count-2]].Select;
Excel.Selection.Interior.Color:= clSilver;
Excel.Range[Excel.Cells[1, 1], Excel.Cells[DataModule2.ADOQuery16.RecordCount+1, DataModule2.ADOQuery16.Fields.Count-1]].Select;
Excel.Selection.Borders.LineStyle := 1;
Excel.Selection.Borders.Weight := 2;
Excel.Columns.AutoFit;
DataModule2.SaveDialog3.FileName:='';
DataModule2.SaveDialog3.FileName:='Korporativ güzəşt kartları '+datetostr(date())+ '.xlsx';
if DataModule2.SaveDialog3.Execute() then
begin
Excel.Range[Excel.Cells[1, 1], Excel.Cells[1,1]].Select;
Excel.ActiveWorkbook.SaveAs(DataModule2.SaveDialog3.FileName);
Excel.DisplayAlerts := False;
end;
Excel.ActiveWorkbook.Close;
Excel.Application.Quit;
Excel := Unassigned;
DataModule2.ADOQuery16.Active:=False;
DataModule2.ADOQuery16.SQL.Clear;
DataModule2.ADOQuery16.SQL.Add('Select * from Korporativ order by cardid asc');
DataModule2.ADOQuery16.ExecSQL;
DataModule2.ADOQuery16.Active:=True;

end;

procedure TForm7.Button24Click(Sender: TObject);
var
sDir: string;
begin
DataModule2.OpenDialog4.FileName:='';
DataModule2.OpenDialog4.Execute();
sDir:='';
sDir:=DataModule2.OpenDialog4.FileName;
if DataModule2.OpenDialog4.FileName<>'' then
begin
Image3.Visible:=true;
Image3.Picture.LoadFromFile(sDir);
end;
if DataModule2.OpenDialog4.FileName='' then
begin
ShowMessage('Heç bir şəkil seçilməyib');
end;
sDir:='';
end;

procedure TForm7.DBGrid7DblClick(Sender: TObject);
var
i: integer;
begin
Edit35.Text:=DataModule2.ADOQuery16Company.Value;
Edit36.Text:=inttostr(DataModule2.ADOQuery16CardID.Value);
MaskEdit20.Text:=datetostr(DataModule2.ADOQuery16Reg_date.Value);
MaskEdit21.Text:=datetostr(DataModule2.ADOQuery16End_date.Value);
Edit37.Text:=DataModule2.ADOQuery16SAA.Value;
MaskEdit22.Text:=datetostr(DataModule2.ADOQuery16DOB.Value);
ComboBox3.Text:=DataModule2.ADOQuery16Cinsi.Value;
Edit38.Text:=DataModule2.ADOQuery16Mob.Value;
Edit39.Text:=DataModule2.ADOQuery16Email.Value;
Edit40.Text:=DataModule2.ADOQuery16Pasport.Value;
Edit41.Text:=DataModule2.ADOQuery16Address.Value;
Edit42.Text:=DataModule2.ADOQuery16Kurator.Value;
Image3.Picture.LoadFromFile(DataModule2.ADOQuery16Photo.Value);
///////////////ВАЖНЫЙ МОМЕНТ!!!!
DataModule2.OpenDialog4.FileName:=DataModule2.ADOQuery16Photo.Value;
////////////////////////////////
DataModule2.ADOQuery17.Active:=false;
DataModule2.ADOQuery17.SQL.Clear;
DataModule2.ADOQuery17.SQL.Add('Select * from Korporativ_add where CardID='+Edit36.Text+' ');
DataModule2.ADOQuery17.ExecSQL;
DataModule2.ADOQuery17.Active:=true;
i:=43;
while not DataModule2.ADOQuery17.Eof do
begin
TEdit(FindComponent('Edit'+IntToStr(i))).Text:= DataModule2.ADOQuery17SAA.Value;
TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text:=datetostr(DataModule2.ADOQuery17DOB.Value);
DataModule2.ADOQuery17.Next;
i:=i+1;
end;
Button20.Visible:=false;
Button22.Left:=409;
Button22.Top:=296;
Button22.Visible:=true;

end;

procedure TForm7.FormActivate(Sender: TObject);
begin
DataModule2.ADOQuery16.Active:=false;
DataModule2.ADOQuery16.Active:=true;
DataModule2.ADOQuery17.Active:=false;
DataModule2.ADOQuery17.Active:=true;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form7.Destroy;
end;

procedure TForm7.MaskEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_space then
begin
  MaskEdit20.Text:=datetostr(date());
  MaskEdit21.Text:=datetostr(date()+365);
end;
end;

end.
