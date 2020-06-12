unit Patients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,ShellApi,Data.Win.ADODB,Comobj,DateUtils,
  Vcl.Menus,System.UITypes;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    MaskEdit1: TMaskEdit;
    Button2: TButton;
    DBEdit1: TDBEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Edit7: TEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    CheckBox1: TCheckBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit8: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Silmk1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Silmk1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Bonus, Datamodule, MainUnit, NIPT, Personal, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

procedure TForm2.Button1Click(Sender: TObject);
var
butsel: integer;
begin
filename:='\\192.168.0.149\şəfa mdm\2.QEYRI-RƏSMİ SƏNƏDLƏR\3.DİSKONT ŞÖBƏSİ\3.GÜZƏŞT KARTLARI\5.PASİYENT GÜZƏŞT KARTI\';
DataModule2.SaveDialog1.FileName:=edit2.Text+' '+edit3.Text;
CreateDir(filename+'\'+DataModule2.SaveDialog1.FileName);
DataModule2.SaveDialog1.InitialDir := ExtractFilePath(filename+DataModule2.SaveDialog1.FileName+'\');
try
WordApp:= CreateOleObject('Word.Application');
except
WordApp := GetActiveOleObject('Word.Application');
end;
if edit4.Text='1' then
begin
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'№1.docx');
end;
if edit4.Text='3' then
begin
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'№3.docx');
end;
WordApp.Selection.Find.ClearFormatting;
WordApp.Selection.Find.Replacement.ClearFormatting;
WordApp.Selection.Find.Execute('-num-',True,False,False,False,False,True,1,False,edit4.Text,2);
WordApp.Selection.Find.Execute('-nomer-',True,False,False,False,False,True,1,False,edit2.Text,2);
WordApp.Selection.Find.Execute('-Name-',True,False,False,False,False,True,1,False,edit3.Text,2);
WordApp.Selection.Find.Execute('-Date-',True,False,False,False,False,True,1,False,Maskedit3.Text,2);
WordApp.Selection.Find.Execute('-dater-',True,False,False,False,False,True,1,False,MaskEdit1.EditText,2);
if DataModule2.OpenDialog1.FileName<>'' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=True;
WordApp.ActiveDocument.Shapes.Item(1).Fill.UserPicture(DataModule2.OpenDialog1.FileName);
end;
if DataModule2.OpenDialog1.FileName='' then
begin
ShowMessage('Bu pasiyentin şəkili yoxdur! Şəkili əlavə edin');
DataModule2.OpenDialog1.Execute();
end;
if DataModule2.SaveDialog1.Execute() then
begin
WordApp.ActiveDocument.SaveAs(DataModule2.SaveDialog1.FileName);
end;
if FileExists(DataModule2.OpenDialog1.FileName) then
begin
CopyFile(Pchar(DataModule2.OpenDialog1.FileName),Pchar(DataModule2.SaveDialog1.FileName+'.jpg'),true)
end;
if FileExists(DataModule2.OpenDialog1.FileName) then
begin
DeleteFile(Pchar(DataModule2.OpenDialog1.FileName));
end;
DataModule2.ADOQuery1.Insert;
DataModule2.ADOQuery1CardID.Value:=strtoint(edit4.Text);
DataModule2.ADOQuery1Card_code.Value:=strtoint(edit2.Text);
DataModule2.ADOQuery1Reg_date.Value:=strtodate(MaskEdit2.Edittext);
DataModule2.ADOQuery1End_date.Value:=strtodate(MaskEdit1.EditText);
DataModule2.ADOQuery1Name_AZ.Value:=edit3.Text;
DataModule2.ADOQuery1DOB.Value:=strtodate(MaskEdit3.EditText);
DataModule2.ADOQuery1Sex.Value:=edit1.Text;
DataModule2.ADOQuery1Photo.Value:=DataModule2.SaveDialog1.FileName+'.jpg';
DataModule2.ADOQuery1.Next;
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.Active:=true;
DataModule2.ADOQuery2.Active:=false;
DataModule2.ADOQuery2.Active:=true;
butsel:=MessageDlg('Yeni pasiyent üçün kart hazırdır. Onu çap etmək istəyirsiniz?',mtInformation, [mbYes,mbNo] , 0) ;
if butsel=mrYes then
begin
ShellExecute(Handle, 'Print', PChar(DataModule2.SaveDialog1.FileName+'.docx'), nil, nil, SW_Show);
end;
if butsel=mrNo then
begin
WordApp.visible:=true;
end;
WordApp := Unassigned;
edit4.Text:='';
edit2.Text:='';
edit3.Text:='';
MaskEdit3.Text:='__.__.____';
edit1.Text:='';
MaskEdit2.Text:=datetostr(date());
DataModule2.OpenDialog1.FileName:='';
Image1.Picture := nil;
Label1.Visible:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
sDir: string;
begin
DataModule2.OpenDialog1.FileName:='';
DataModule2.OpenDialog1.Execute();
sDir:=DataModule2.OpenDialog1.FileName;
if DataModule2.OpenDialog1.FileName<>'' then
begin
Image1.Visible:=true;
Image1.Picture.LoadFromFile(sDir);
Label1.Visible:=false;
end;
if DataModule2.OpenDialog1.FileName='' then
begin
ShowMessage('Heç bir şəkil seçilməyib');
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
edit2.Text:='';
edit3.Text:='';
MaskEdit3.Text:='__.__.____';
edit1.Text:='';
MaskEdit2.Text:='__.__.____';
MaskEdit1.Text:='__.__.____';
Image1.Picture := nil;
Label1.Visible:=true;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
sSQL :=  'Select * from Patients where ID>0';

if edit8.Text<>'' then
begin
sSQL := sSQL+ ' and  CardID = '+edit8.Text+'';
end;

if edit5.Text<>'' then
begin
sSQL := sSQL+ ' and  Card_code = '+edit5.Text+'';
end;

if edit6.Text<>'' then
begin
sSQL := sSQL+ ' and  Name_AZ like ''%'+edit6.Text+'%''';
end;

if (MaskEdit4.EditText<>'__.__.____') and (MaskEdit5.EditText='__.__.____') then
begin
sSQL := sSQL+ ' and Cdate(DOB)='''+MaskEdit4.Text+'''';
end;

if (MaskEdit4.EditText<>'__.__.____') and (MaskEdit5.EditText<>'__.__.____') then
begin
sSQL := sSQL+ ' AND Cdate(DOB) between '''+MaskEdit4.Text+''''+' and '+''''+MaskEdit5.Text+'''';
end;

if edit7.Text<>'' then
begin
sSQL := sSQL+ ' and  Sex = '''+edit7.Text+'''';
end;

if (MaskEdit6.EditText<>'__.__.____') and (MaskEdit7.EditText='__.__.____') then
begin
sSQL := sSQL+ ' and Cdate(Reg_date)='''+MaskEdit6.Text+'''';
end;

if (MaskEdit6.EditText<>'__.__.____') and (MaskEdit7.EditText<>'__.__.____') then
begin
sSQL := sSQL+ ' AND Cdate(Reg_date) between '''+MaskEdit6.Text+''''+' and '+''''+MaskEdit7.Text+'''';
end;

if (MaskEdit8.EditText<>'__.__.____') and (MaskEdit9.EditText='__.__.____') then
begin
sSQL := sSQL+ ' and Cdate(End_date)='''+MaskEdit8.Text+'''';
end;

if (MaskEdit8.EditText<>'__.__.____') and (MaskEdit9.EditText<>'__.__.____') then
begin
sSQL := sSQL+ ' AND Cdate(End_date) between '''+MaskEdit8.Text+''''+' and '+''''+MaskEdit9.Text+'''';
end;

if CheckBox1.Checked then
begin
sSQL := sSQL+ 'and Photo is not null';
end;

DataModule2.ADOQuery1.Active:= False;
DataModule2.ADOQuery1.SQL.Clear;
DataModule2.ADOQuery1.SQL.Add(sSQL + ' order by Card_code asc');
DataModule2.ADOQuery1.Open;

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
edit8.Text:='';
edit5.Text:='';
edit6.Text:='';
CheckBox1.Checked:=false;
MaskEdit4.Text:='__.__.____';
MaskEdit5.Text:='__.__.____';
edit7.Text:='';
MaskEdit6.Text:='__.__.____';
MaskEdit7.Text:='__.__.____';
MaskEdit8.Text:='__.__.____';
MaskEdit9.Text:='__.__.____';
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.SQL.Clear;
DataModule2.ADOQuery1.SQL.Add('Select * from Patients order by Card_code asc');
DataModule2.ADOQuery1.ExecSQL;
DataModule2.ADOQuery1.Active:=true;
DataModule2.ADOQuery2.Active:=false;
DataModule2.ADOQuery2.Active:=true;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
butsel : integer;
begin
filename:='\\192.168.0.149\şəfa mdm\2.QEYRI-RƏSMİ SƏNƏDLƏR\3.DİSKONT ŞÖBƏSİ\3.GÜZƏŞT KARTLARI\5.PASİYENT GÜZƏŞT KARTI\';
DataModule2.SaveDialog1.FileName:=edit2.Text+' '+edit3.Text;
CreateDir(filename+'\'+DataModule2.SaveDialog1.FileName);
DataModule2.SaveDialog1.InitialDir := ExtractFilePath(filename+DataModule2.SaveDialog1.FileName+'\');
try
WordApp:= CreateOleObject('Word.Application');
except
WordApp := GetActiveOleObject('Word.Application');
end;
if edit4.Text='1' then
begin
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'№1.docx');
end;
if edit4.Text='3' then
begin
WordApp.Documents.Open(ExtractFilePath(ParamStr(0))+'№3.docx');
end;
WordApp.Selection.Find.ClearFormatting;
WordApp.Selection.Find.Replacement.ClearFormatting;
WordApp.Selection.Find.Execute('-num-',True,False,False,False,False,True,1,False,edit4.Text,2);
WordApp.Selection.Find.Execute('-nomer-',True,False,False,False,False,True,1,False,edit2.Text,2);
WordApp.Selection.Find.Execute('-Name-',True,False,False,False,False,True,1,False,edit3.Text,2);
WordApp.Selection.Find.Execute('-Date-',True,False,False,False,False,True,1,False,Maskedit3.Text,2);
WordApp.Selection.Find.Execute('-dater-',True,False,False,False,False,True,1,False,MaskEdit1.EditText,2);
if DataModule2.OpenDialog1.FileName<>'' then
begin
WordApp.ActiveDocument.Shapes.Item(1).Fill.Visible:=True;
WordApp.ActiveDocument.Shapes.Item(1).Fill.UserPicture(DataModule2.OpenDialog1.FileName);
end;
if DataModule2.OpenDialog1.FileName='' then
begin
ShowMessage('Bu pasiyentin şəkili yoxdur! Şəkili əlavə edin');
DataModule2.OpenDialog1.Execute();
end;
if DataModule2.SaveDialog1.Execute() then
begin
WordApp.ActiveDocument.SaveAs(DataModule2.SaveDialog1.FileName);
end;
if FileExists(DataModule2.OpenDialog1.FileName) then
begin
CopyFile(Pchar(DataModule2.OpenDialog1.FileName),Pchar(DataModule2.SaveDialog1.FileName+'.jpg'),true)
end;
if FileExists(DataModule2.OpenDialog1.FileName) then
begin
DeleteFile(Pchar(DataModule2.OpenDialog1.FileName));
end;
DataModule2.ADOQuery1.Edit;
DataModule2.ADOQuery1Card_code.Value:=strtoint(Edit2.Text);
DataModule2.ADOQuery1Name_AZ.Value:=edit3.Text;
DataModule2.ADOQuery1DOB.Value:=strtodate(MaskEdit3.Text);
DataModule2.ADOQuery1Sex.Value:=edit1.Text;
DataModule2.ADOQuery1Reg_date.Value:=strtodate(MaskEdit2.Text);
DataModule2.ADOQuery1End_date.Value:=strtodate(MaskEdit1.Text);
if Image1.Picture = nil then
begin
DataModule2.ADOQuery1Photo.Value:='';
end;
if Image1.Picture <> nil then
begin
DataModule2.ADOQuery1Photo.Value:=DataModule2.OpenDialog1.FileName;
end;
DataModule2.ADOQuery1.Post;
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.Active:=true;
butsel:=MessageDlg('Yeni pasiyent üçün kart hazırdır. Onu çap etmək istəyirsiniz?',mtInformation, [mbYes,mbNo] , 0) ;
if butsel=mrYes then
begin
ShellExecute(Handle, 'Print', PChar(DataModule2.SaveDialog1.FileName+'.docx'), nil, nil, SW_Show);
end;
if butsel=mrNo then
begin
WordApp.visible:=true;
end;
WordApp := Unassigned;
edit4.Text:='';
edit2.Text:='';
edit3.Text:='';
MaskEdit3.Text:='__.__.____';
edit1.Text:='';
MaskEdit2.Text:='__.__.____';
MaskEdit1.Text:='__.__.____';
Image1.Picture := nil;
DataModule2.OpenDialog1.FileName:='';
Label1.Visible:=true;
Button6.Visible:=false;
Button1.Visible:=true;

end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
Edit4.Text:=inttostr(DataModule2.ADOQuery1CardID.Value);
Edit2.Text:=inttostr(DataModule2.ADOQuery1Card_code.Value);
Edit3.Text:=DataModule2.ADOQuery1Name_AZ.Value;
MaskEdit3.Text:=datetostr(DataModule2.ADOQuery1DOB.Value);
edit1.Text:=DataModule2.ADOQuery1Sex.Value;
MaskEdit2.Text:=datetostr(DataModule2.ADOQuery1Reg_date.Value);
MaskEdit1.Text:=datetostr(DataModule2.ADOQuery1End_date.Value);
if DataModule2.ADOQuery1Photo.Value = '' then
begin
Image1.Visible:=false;
Label1.Visible:=true;
Label1.Caption:='ŞƏKİL YOXDUR';
DataModule2.OpenDialog1.FileName:='';
end;
if DataModule2.ADOQuery1Photo.Value <> '' then
begin
Label1.Visible:=false;
Image1.Visible:=true;
Image1.Picture.LoadFromFile(DataModule2.ADOQuery1Photo.Value);
DataModule2.OpenDialog1.FileName:=DataModule2.ADOQuery1Photo.Value;
end;
button6.Left:=415;
Button6.Visible:=true;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.Active:=true;
DataModule2.ADOQuery2.Active:=false;
DataModule2.ADOQuery2.Active:=true;
MaskEdit2.Text:=datetostr(date());

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form2.Destroy;
end;

procedure TForm2.MaskEdit2Change(Sender: TObject);
var
myDate : TDateTime;
begin
myDate := EncodeDate(YearOf(Date)+1,MonthOf(Date),DayOfTheMonth(Date));
MaskEdit1.Text:=datetostr(myDate);
end;

procedure TForm2.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
myDate : TDateTime;
begin
if key=VK_SPACE then
begin
MaskEdit2.Text:=datetostr(date());
myDate := EncodeDate(YearOf(Date)+1,MonthOf(Date),DayOfTheMonth(Date));
MaskEdit1.Text:=datetostr(myDate);
end;

end;

procedure TForm2.Silmk1Click(Sender: TObject);
begin
DataModule2.ADOQuery1.Edit;
DataModule2.ADOQuery1.DeleteRecords(arCurrent);
DataModule2.ADOQuery1.Active:=false;
DataModule2.ADOQuery1.Active:=true;
DataModule2.ADOQuery2.Active:=false;
DataModule2.ADOQuery2.Active:=true;
edit5.Text:='';
edit6.Text:='';
CheckBox1.Checked:=false;
MaskEdit4.Text:='__.__.____';
MaskEdit5.Text:='__.__.____';
edit7.Text:='';
MaskEdit6.Text:='__.__.____';
MaskEdit7.Text:='__.__.____';
MaskEdit8.Text:='__.__.____';
MaskEdit9.Text:='__.__.____';
end;

end.
