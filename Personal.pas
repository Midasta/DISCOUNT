unit Personal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,ShellAPI,Comobj,System.UITypes;

type
  TForm3 = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    Image2: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Edit9: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit10: TEdit;
    Edit11: TEdit;
    MaskEdit10: TMaskEdit;
    Button8: TButton;
    Button9: TButton;
    Button11: TButton;
    Edit12: TEdit;
    MaskEdit12: TMaskEdit;
    Edit13: TEdit;
    MaskEdit13: TMaskEdit;
    Edit14: TEdit;
    MaskEdit14: TMaskEdit;
    Edit15: TEdit;
    MaskEdit15: TMaskEdit;
    Edit16: TEdit;
    MaskEdit16: TMaskEdit;
    Button12: TButton;
    DBGrid3: TDBGrid;
    MaskEdit17: TMaskEdit;
    Button10: TButton;
    Edit34: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    MaskEdit18: TMaskEdit;
    MaskEdit19: TMaskEdit;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel18: TPanel;
    Edit46: TEdit;
    Button27: TButton;
    Button28: TButton;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Edit46KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Bonus, Datamodule, MainUnit, NIPT, Patients, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

procedure TForm3.Button10Click(Sender: TObject);
Var Excel, FData: Variant;                //
    i,j:integer;
begin
DataModule2.ADOQuery4.Active:=False;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add('Select * from Personal union all select * from Personal_add order by cardid,photo desc');
DataModule2.ADOQuery4.ExecSQL;
DataModule2.ADOQuery4.Active:=True;
try
Excel:=CreateOleObject('Excel.Application');
except
Excel:=GetActiveOleObject('Excel.Application');
end;
Excel.Workbooks.Open(ExtractFilePath(ParamStr(0))+'Personalcards.xlsx');
FData:=VarArrayCreate([1,DataModule2.ADOQuery4.RecordCount+1,1,DataModule2.ADOQuery4.Fields.Count],varVariant);
Excel.Worksheets[1].Select;
for j:=1 to DataModule2.ADOQuery4.Fields.Count do
FData[1,j]:=DataModule2.ADOQuery4.Fields[j-1].DisplayLabel;
DataModule2.ADOQuery4.First;
i:=2;
while not DataModule2.ADOQuery4.Eof do
begin
for j:=1 to DataModule2.ADOQuery4.Fields.Count do
FData[i,j]:=DataModule2.ADOQuery4.Fields[j-1].Value;
DataModule2.ADOQuery4.Next;
i:=i+1;
end;
Excel.Range[Excel.Cells[1, 1], Excel.Cells[DataModule2.ADOQuery4.RecordCount+1, DataModule2.ADOQuery4.Fields.Count-2]].Value:=FData;
Excel.Range[Excel.Cells[1, 1], Excel.Cells[1,DataModule2.ADOQuery4.Fields.Count-2]].Select;
Excel.Selection.Interior.Color:= clSilver;
Excel.Range[Excel.Cells[1, 1], Excel.Cells[DataModule2.ADOQuery4.RecordCount+1, DataModule2.ADOQuery4.Fields.Count-2]].Select;
Excel.Selection.Borders.LineStyle := 1;
Excel.Selection.Borders.Weight := 2;
Excel.Columns.AutoFit;
DataModule2.SaveDialog3.FileName:='';
DataModule2.SaveDialog3.FileName:='Personal güzəşt kartları '+datetostr(date())+ '.xlsx';
if DataModule2.SaveDialog3.Execute() then
begin
Excel.Range[Excel.Cells[1, 1], Excel.Cells[1,1]].Select;
Excel.ActiveWorkbook.SaveAs(DataModule2.SaveDialog3.FileName);
Excel.DisplayAlerts := False;
end;
Excel.ActiveWorkbook.Close;
Excel.Application.Quit;
Excel := Unassigned;
DataModule2.ADOQuery4.Active:=False;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add('Select * from Personal order by cardid asc');
DataModule2.ADOQuery4.ExecSQL;
DataModule2.ADOQuery4.Active:=True;

end;

procedure TForm3.Button11Click(Sender: TObject);
begin
DataModule2.ADOQuery4.Active:=false;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add('Select * from Personal order by CardID asc');
DataModule2.ADOQuery4.ExecSQL;
DataModule2.ADOQuery4.Active:=true;
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit11.Text:='';
MaskEdit10.Text:='__.__.____';
Edit12.Text:='';
MaskEdit12.Text:='__.__.____';
Edit13.Text:='';
MaskEdit13.Text:='__.__.____';
Edit14.Text:='';
MaskEdit14.Text:='__.__.____';
Edit15.Text:='';
MaskEdit15.Text:='__.__.____';
Edit16.Text:='';
MaskEdit16.Text:='__.__.____';
Edit9.Text:='';
MaskEdit17.Text:='__.__.____';
Image2.Picture:=nil;
DataModule2.OpenDialog2.FileName:='';
Label22.Visible:=true;
Button9.Visible:=true;
Button12.Visible:=false;
Edit10.Enabled:=false;
Edit11.Enabled:=false;
DBLookupComboBox2.Enabled:=false;
MaskEdit10.Enabled:=false;
MaskEdit17.Enabled:=false;
Button8.Enabled:=false;
Button12.Enabled:=false;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Edit12.Enabled:=false;
Edit13.Enabled:=false;
Edit14.Enabled:=false;
Edit15.Enabled:=false;
Edit16.Enabled:=false;
MaskEdit12.Enabled:=false;
MaskEdit13.Enabled:=false;
MaskEdit14.Enabled:=false;
MaskEdit15.Enabled:=false;
MaskEdit16.Enabled:=false;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
DataModule2.ADOQuery4.Edit;
DataModule2.ADOQuery4CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery4Name_AZ.Value:=Edit11.Text;
DataModule2.ADOQuery4W_Position.Value:=DBLookupComboBox2.Text;
DataModule2.ADOQuery4KVT.Value:=strtodate(MaskEdit10.EditText);
if MaskEdit17.Text<>'' then
begin
DataModule2.ADOQuery4Leave_work.Value:=MaskEdit17.Text;
end;
if MaskEdit17.Text='__.__.____' then
begin
DataModule2.ADOQuery4Leave_work.Value:='';
end;
{
if DataModule2.OpenDialog2.FileName='' then
begin
DataModule2.ADOQuery4Photo.Value:='';
end;
if DataModule2.OpenDialog2.FileName<>'' then
begin
DataModule2.ADOQuery4Photo.Value:=DataModule2.OpenDialog2.FileName;
end;
}
DataModule2.ADOQuery4.Post;
DataModule2.ADOQuery6.Active:=false;
DataModule2.ADOQuery6.SQL.Clear;
DataModule2.ADOQuery6.SQL.Add('Delete * from Personal_add where Cardid='+edit10.text+'');
DataModule2.ADOQuery6.ExecSQL;
DataModule2.ADOQuery6.SQL.Clear;
DataModule2.ADOQuery6.SQL.Add('Select * from Personal_add where Cardid='+edit10.text+'');
DataModule2.ADOQuery6.ExecSQL;
DataModule2.ADOQuery6.Active:=true;
if edit12.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit12.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit12.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit13.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit13.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit13.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit14.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit14.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit14.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit15.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit15.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit15.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit16.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit16.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit16.EditText);
DataModule2.ADOQuery6.Next;
end;
DataModule2.ADOQuery6.Next;
filename:='\\192.168.0.149\şəfa mdm\2.QEYRI-RƏSMİ SƏNƏDLƏR\3.DİSKONT ŞÖBƏSİ\3.GÜZƏŞT KARTLARI\3.MED.PERSONAL KARTİ\';
if Length(edit10.Text)=2 then
begin
DataModule2.SaveDialog2.FileName:='0'+edit10.Text+'. '+edit11.Text+' '+DBLookupComboBox2.Text;
end;
if Length(edit10.Text)<>2 then
begin
DataModule2.SaveDialog2.FileName:=edit10.Text+'. '+edit11.Text+' '+DBLookupComboBox2.Text;
end;
CreateDir(filename+'\'+DataModule2.SaveDialog2.FileName);
DataModule2.SaveDialog2.InitialDir := ExtractFilePath(filename+DataModule2.SaveDialog2.FileName+'\');

{
try
WordApp := CreateOleObject('Word.Application');
except
WordApp:= GetActiveOleObject('Word.Application');
end;
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'Personal.docx');
WordApp.Selection.Find.ClearFormatting;
WordApp.Selection.Find.Replacement.ClearFormatting;
WordApp.Selection.Find.Execute('-number-',True,False,False,False,False,True,1,False,Edit10.Text,2);
WordApp.Selection.Find.Execute('-Position-',True,False,False,False,False,True,1,False,DBLookupComboBox2.Text,2);
WordApp.Selection.Find.Execute('-Name_AZ-',True,False,False,False,False,True,1,False,edit11.Text,2);
WordApp.Selection.Find.Execute('-reg-',True,False,False,False,False,True,1,False,Maskedit10.Text,2);
WordApp.Selection.Find.Execute('-1-',True,False,False,False,False,True,1,False,Edit12.Text,2);
WordApp.Selection.Find.Execute('-1.1-',True,False,False,False,False,True,1,False,MaskEdit12.Text,2);
WordApp.Selection.Find.Execute('-2-',True,False,False,False,False,True,1,False,Edit13.Text,2);
WordApp.Selection.Find.Execute('-2.2-',True,False,False,False,False,True,1,False,MaskEdit13.Text,2);
WordApp.Selection.Find.Execute('-3-',True,False,False,False,False,True,1,False,Edit14.Text,2);
WordApp.Selection.Find.Execute('-3.3-',True,False,False,False,False,True,1,False,MaskEdit14.Text,2);
WordApp.Selection.Find.Execute('-4-',True,False,False,False,False,True,1,False,Edit15.Text,2);
WordApp.Selection.Find.Execute('-4.4-',True,False,False,False,False,True,1,False,MaskEdit15.Text,2);
WordApp.Selection.Find.Execute('-5-',True,False,False,False,False,True,1,False,Edit16.Text,2);
WordApp.Selection.Find.Execute('-5.5-',True,False,False,False,False,True,1,False,MaskEdit16.Text,2);
if DataModule2.OpenDialog2.FileName<>'' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=True;
WordApp.ActiveDocument.Shapes.Item(1).Fill.UserPicture(DataModule2.OpenDialog2.FileName);
end;
if DataModule2.OpenDialog2.FileName='' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=false;
end;
if DataModule2.SaveDialog2.Execute() then
begin
WordApp.ActiveDocument.SaveAs(DataModule2.SaveDialog2.FileName+'.docx');
end;
if FileExists(DataModule2.OpenDialog2.FileName) then
begin
CopyFile(Pchar(DataModule2.OpenDialog2.FileName),Pchar(DataModule2.SaveDialog2.FileName+'.jpg'),true)
end;
if FileExists(DataModule2.OpenDialog2.FileName) then
begin
DeleteFile(Pchar(DataModule2.OpenDialog2.FileName));
end;
butsel:=MessageDlg('Yeni işçi üçün kart hazırdır. Onu çap etmək istəyirsiniz?',mtInformation, [mbYes,mbNo] , 0) ;
if butsel=mrYes then
begin
ShellExecute(Handle, 'Print', PChar(DataModule2.SaveDialog2.FileName+'.docx'), nil, nil, SW_Show);
end;
if butsel=mrNo then
begin
WordApp.visible:=true;
end;
WordApp := Unassigned;
}
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit11.Text:='';
MaskEdit10.Text:='__.__.____';
Edit12.Text:='';
MaskEdit12.Text:='__.__.____';
Edit13.Text:='';
MaskEdit13.Text:='__.__.____';
Edit14.Text:='';
MaskEdit14.Text:='__.__.____';
Edit15.Text:='';
MaskEdit15.Text:='__.__.____';
Edit16.Text:='';
MaskEdit16.Text:='__.__.____';
Edit9.Text:='';
MaskEdit17.Text:='__.__.____';
DataModule2.OpenDialog2.FileName:='';
Image2.Picture:=nil;
Label22.Visible:=true;
Button9.Visible:=true;
Button12.Visible:=false;
end;

procedure TForm3.Button17Click(Sender: TObject);
begin
sSQL :=  'Select * from Personal where ID>0';

if edit9.Text<>'' then
begin
sSQL := sSQL+ ' and  CardID = '+edit9.Text+'';
end;

if edit34.Text<>'' then
begin
sSQL := sSQL+ ' and  Name_AZ like ''%'+edit34.Text+'%''';
end;

if DBLookupComboBox1.KeyValue>'' then
begin
sSQL := sSQL+' AND W_Position = '+ '''' +(DBLookupComboBox1.KeyValue)+'''';
end;

if MaskEdit18.EditText<>'__.__.____' then
begin
sSQL := sSQL+ ' and Cdate(KVT)='''+MaskEdit18.Text+'''';
end;

if MaskEdit19.EditText<>'__.__.____' then
begin
sSQL := sSQL+ ' and Cdate(Leave_work)='''+MaskEdit19.Text+'''';
end;

DataModule2.ADOQuery4.Active:= False;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add(sSQL + ' order by Cardid asc');
DataModule2.ADOQuery4.Open;
DBGrid2DblClick(self);
end;

procedure TForm3.Button18Click(Sender: TObject);
begin
Button11Click(Self);
edit9.Text:='';
Edit34.Text:='';
DBLookupComboBox1.KeyValue:=null;
MaskEdit18.Text:='__.__.____';
MaskEdit19.Text:='__.__.____';
end;

procedure TForm3.Button19Click(Sender: TObject);
begin
Edit46.Text:='';
Panel18.Visible:=true;
Edit46.SetFocus;
end;

procedure TForm3.Button27Click(Sender: TObject);
begin
if Edit46.Text='admin' then
begin
Edit10.Enabled:=true;
Edit11.Enabled:=true;
DBLookupComboBox2.Enabled:=true;
MaskEdit10.Enabled:=true;
MaskEdit17.Enabled:=true;
Button8.Enabled:=true;
Button12.Enabled:=true;
Button9.Enabled:=true;
Button11.Enabled:=true;
Button10.Enabled:=true;
Edit12.Enabled:=true;
Edit13.Enabled:=true;
Edit14.Enabled:=true;
Edit15.Enabled:=true;
Edit16.Enabled:=true;
MaskEdit12.Enabled:=true;
MaskEdit13.Enabled:=true;
MaskEdit14.Enabled:=true;
MaskEdit15.Enabled:=true;
MaskEdit16.Enabled:=true;
end;
if Edit46.Text<>'admin' then
begin
Edit10.Enabled:=false;
Edit11.Enabled:=false;
DBLookupComboBox2.Enabled:=false;
MaskEdit10.Enabled:=false;
MaskEdit17.Enabled:=false;
Button8.Enabled:=false;
Button12.Enabled:=false;
Button9.Enabled:=false;
Button11.Enabled:=false;
Button10.Enabled:=false;
Edit12.Enabled:=false;
Edit13.Enabled:=false;
Edit14.Enabled:=false;
Edit15.Enabled:=false;
Edit16.Enabled:=false;
MaskEdit12.Enabled:=false;
MaskEdit13.Enabled:=false;
MaskEdit14.Enabled:=false;
MaskEdit15.Enabled:=false;
MaskEdit16.Enabled:=false;
ShowMessage('Parol duz deyil!!!');
end;
Panel18.Visible:=false;
end;

procedure TForm3.Button28Click(Sender: TObject);
begin
Panel18.Visible:=false;
end;

procedure TForm3.Button8Click(Sender: TObject);
var
sDir: string;
begin
DataModule2.OpenDialog2.FileName:='';
DataModule2.OpenDialog2.Execute();
sDir:='';
sDir:=DataModule2.OpenDialog2.FileName;
if DataModule2.OpenDialog2.FileName<>'' then
begin
Image2.Visible:=true;
Image2.Picture.LoadFromFile(sDir);
Label22.Visible:=false;
end;
if DataModule2.OpenDialog2.FileName='' then
begin
ShowMessage('Heç bir şəkil seçilməyib');
end;
sDir:='';
DataModule2.OpenDialog2.FileName:=''
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
filename:='\\192.168.0.149\şəfa mdm\2.QEYRI-RƏSMİ SƏNƏDLƏR\3.DİSKONT ŞÖBƏSİ\3.GÜZƏŞT KARTLARI\3.MED.PERSONAL KARTİ\';
if Length(edit10.Text)=2 then
begin
DataModule2.SaveDialog2.FileName:='0'+edit10.Text+' '+edit11.Text+' '+DBLookupComboBox2.Text;
end;
if Length(edit10.Text)<>2 then
begin
DataModule2.SaveDialog2.FileName:=edit10.Text+' '+edit11.Text+' '+DBLookupComboBox2.Text;
end;

CreateDir(filename+'\'+DataModule2.SaveDialog2.FileName);
DataModule2.SaveDialog2.InitialDir := ExtractFilePath(filename+DataModule2.SaveDialog2.FileName+'\');
{
WordApp := Unassigned;
try
WordApp := GetActiveOleObject('Word.Application');
except
WordApp:= CreateOleObject('Word.Application');
end;
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'Personal.docx');
WordApp.Selection.Find.ClearFormatting;
WordApp.Selection.Find.Replacement.ClearFormatting;
WordApp.Selection.Find.Execute('-number-',True,False,False,False,False,True,1,False,edit10.Text,2);
WordApp.Selection.Find.Execute('-Position-',True,False,False,False,False,True,1,False,DBLookupComboBox2.Text,2);
WordApp.Selection.Find.Execute('-Name_AZ-',True,False,False,False,False,True,1,False,edit11.Text,2);
WordApp.Selection.Find.Execute('-reg-',True,False,False,False,False,True,1,False,Maskedit10.Text,2);
WordApp.Selection.Find.Execute('-1-',True,False,False,False,False,True,1,False,Edit12.Text,2);
WordApp.Selection.Find.Execute('-1.1-',True,False,False,False,False,True,1,False,MaskEdit12.Text,2);
WordApp.Selection.Find.Execute('-2-',True,False,False,False,False,True,1,False,Edit13.Text,2);
WordApp.Selection.Find.Execute('-2.2-',True,False,False,False,False,True,1,False,MaskEdit13.Text,2);
WordApp.Selection.Find.Execute('-3-',True,False,False,False,False,True,1,False,Edit14.Text,2);
WordApp.Selection.Find.Execute('-3.3-',True,False,False,False,False,True,1,False,MaskEdit14.Text,2);
WordApp.Selection.Find.Execute('-4-',True,False,False,False,False,True,1,False,Edit15.Text,2);
WordApp.Selection.Find.Execute('-4.4-',True,False,False,False,False,True,1,False,MaskEdit15.Text,2);
WordApp.Selection.Find.Execute('-5-',True,False,False,False,False,True,1,False,Edit16.Text,2);
WordApp.Selection.Find.Execute('-5.5-',True,False,False,False,False,True,1,False,MaskEdit16.Text,2);
if DataModule2.OpenDialog2.FileName<>'' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=True;
WordApp.ActiveDocument.Shapes.Item(1).Fill.UserPicture(DataModule2.OpenDialog2.FileName);
end;
if DataModule2.OpenDialog2.FileName='' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=false;
end;
if DataModule2.SaveDialog2.Execute() then
begin
WordApp.ActiveDocument.SaveAs(DataModule2.SaveDialog2.FileName);
end;
if FileExists(DataModule2.OpenDialog2.FileName) then
begin
CopyFile(Pchar(DataModule2.OpenDialog2.FileName),Pchar(DataModule2.SaveDialog2.FileName+'.jpg'),true)
end;
if FileExists(DataModule2.OpenDialog2.FileName) then
begin
DeleteFile(Pchar(DataModule2.OpenDialog2.FileName));
end;
butsel:=MessageDlg('Yeni işçi üçün kart hazırdır. Onu çap etmək istəyirsiniz?',mtInformation, [mbYes,mbNo] , 0) ;
if butsel=mrYes then
begin
ShellExecute(Handle, 'Print', PChar(DataModule2.SaveDialog2.FileName+'.docx'), nil, nil, SW_Show);
end;
if butsel=mrNo then
begin
WordApp.visible:=true;
end;
WordApp := Unassigned;
}
DataModule2.ADOQuery4.Insert;
DataModule2.ADOQuery4CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery4Name_AZ.Value:=Edit11.Text;
DataModule2.ADOQuery4W_Position.Value:=DBLookupComboBox2.Text;
DataModule2.ADOQuery4KVT.Value:=strtodate(MaskEdit10.Text);
DataModule2.ADOQuery4Leave_work.Value:=MaskEdit17.Text;
{
if DataModule2.OpenDialog2.FileName='' then
begin
DataModule2.ADOQuery4Photo.Value:='';
end;
if DataModule2.OpenDialog2.FileName<>'' then
begin
DataModule2.ADOQuery4Photo.Value:=DataModule2.SaveDialog2.FileName+'.jpg';
end;
}
DataModule2.ADOQuery4.Next;
if edit12.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit12.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit12.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit13.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit13.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit13.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit14.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit14.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit14.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit15.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit15.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit15.EditText);
DataModule2.ADOQuery6.Next;
end;
if edit16.Text<>'' then
begin
DataModule2.ADOQuery6.Insert;
DataModule2.ADOQuery6CardID.Value:=strtoint(Edit10.Text);
DataModule2.ADOQuery6Name_AZ.Value:=edit16.Text;
DataModule2.ADOQuery6DOB.Value:=strtodate(MaskEdit16.EditText);
DataModule2.ADOQuery6.Next;
end;
DataModule2.ADOQuery6.Next;
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit11.Text:='';
MaskEdit10.Text:='__.__.____';
Edit12.Text:='';
MaskEdit12.Text:='__.__.____';
Edit13.Text:='';
MaskEdit13.Text:='__.__.____';
Edit14.Text:='';
MaskEdit14.Text:='__.__.____';
Edit15.Text:='';
MaskEdit15.Text:='__.__.____';
Edit16.Text:='';
MaskEdit16.Text:='__.__.____';
Edit9.Text:='';
MaskEdit17.Text:='__.__.____';
DataModule2.OpenDialog2.FileName:='';
Image2.Picture:=nil;
end;

procedure TForm3.DBGrid2DblClick(Sender: TObject);
var
i : byte;
begin
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit12.Text:='';
Edit13.Text:='';
Edit14.Text:='';
Edit15.Text:='';
Edit16.Text:='';
MaskEdit12.Text:='__.__.____';
MaskEdit13.Text:='__.__.____';
MaskEdit14.Text:='__.__.____';
MaskEdit15.Text:='__.__.____';
MaskEdit16.Text:='__.__.____';
Image2.Picture:=nil;
Label22.Visible:=true;
Edit10.Text:=floattostr(DataModule2.ADOQuery4CardID.Value);
MaskEdit10.Text:=datetostr(date());
Edit11.Text:=DataModule2.ADOQuery4Name_AZ.Value;
DBLookupComboBox2.KeyValue:=DataModule2.ADOQuery4W_Position.Value;
MaskEdit10.Text:=datetostr(DataModule2.ADOQuery4KVT.Value);
MaskEdit17.Text:=DataModule2.ADOQuery4Leave_work.Value;
{
if DataModule2.ADOQuery4Photo.Value='' then
begin
label22.Caption:='Şəkil yoxdur';
end;
if DataModule2.ADOQuery4Photo.Value<>'' then
begin
Image2.Picture.LoadFromFile(DataModule2.ADOQuery4Photo.Value);
DataModule2.OpenDialog2.FileName:=DataModule2.ADOQuery4Photo.Value;
Label22.Visible:=false;
end;
}
DataModule2.ADOQuery6.Active:=false;
DataModule2.ADOQuery6.SQL.Clear;
DataModule2.ADOQuery6.SQL.Add('Select * from Personal_add where CardID='+Edit10.Text+' ');
DataModule2.ADOQuery6.ExecSQL;
DataModule2.ADOQuery6.Active:=true;
i:=12;
while not DataModule2.ADOQuery6.Eof do
begin
TEdit(FindComponent('Edit'+IntToStr(i))).Text:= DataModule2.ADOQuery6Name_AZ.Value;
TMaskEdit(FindComponent('MaskEdit'+IntToStr(i))).Text:=datetostr(DataModule2.ADOQuery6DOB.Value);
DataModule2.ADOQuery6.Next;
i:=i+1;
end;
Button12.Left:=551;
Button12.Visible:=true;

end;

procedure TForm3.Edit46KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then
begin
Button27Click(Self);
end;
end;

procedure TForm3.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vkReturn then
begin
if Edit9.Text<>'' then
begin
DataModule2.ADOQuery4.Active:=false;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add('Select * from Personal where CardID ='+Edit9.Text+'');
DataModule2.ADOQuery4.ExecSQL;
DataModule2.ADOQuery4.Active:=true;
DBGrid2DblClick(Self);
end;
end;
if Edit9.Text='' then
begin
DataModule2.ADOQuery4.Active:=false;
DataModule2.ADOQuery4.SQL.Clear;
DataModule2.ADOQuery4.SQL.Add('Select * from Personal order by CardID asc');
DataModule2.ADOQuery4.ExecSQL;
DataModule2.ADOQuery4.Active:=true;
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit11.Text:='';
Image2.Picture:=nil;
Label22.Visible:=true;
MaskEdit10.Text:='__.__.____';
Edit12.Text:='';
MaskEdit12.Text:='__.__.____';
Edit13.Text:='';
MaskEdit13.Text:='__.__.____';
Edit14.Text:='';
MaskEdit14.Text:='__.__.____';
Edit15.Text:='';
MaskEdit15.Text:='__.__.____';
Edit16.Text:='';
MaskEdit16.Text:='__.__.____';
Button9.Visible:=true;
Button12.Visible:=false;
end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.Active:=true;
DataModule2.ADOQuery2.Active:=false;
DataModule2.ADOQuery2.Active:=true;
DataModule2.ADOQuery3.Active:=false;
DataModule2.ADOQuery3.Active:=true;
DataModule2.ADOQuery4.Active:=false;
DataModule2.ADOQuery4.Active:=true;
DataModule2.ADOQuery5.Active:=false;
DataModule2.ADOQuery5.Active:=true;
DBLookupComboBox2.KeyValue:='';
Edit10.Text:='';
Edit11.Text:='';
MaskEdit10.Text:='__.__.____';
Edit12.Text:='';
MaskEdit12.Text:='__.__.____';
Edit13.Text:='';
MaskEdit13.Text:='__.__.____';
Edit14.Text:='';
MaskEdit14.Text:='__.__.____';
Edit15.Text:='';
MaskEdit15.Text:='__.__.____';
Edit16.Text:='';
MaskEdit16.Text:='__.__.____';
Edit9.Text:='';
MaskEdit17.Text:='__.__.____';
Image2.Picture:=nil;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form3.Destroy;
end;

procedure TForm3.MaskEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_SPACE then
begin
MaskEdit10.Text:=datetostr(date());
end;
end;

end.
