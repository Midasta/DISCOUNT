unit Bonus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,Comobj,Vcl.Menus,Vcl.ComCtrls,System.UITypes,INIFILES,Data.Win.ADODB;


type
  TForm4 = class(TForm)
    Panel6: TPanel;
    Panel7: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Edit33: TEdit;
    Edit53: TEdit;
    Button31: TButton;
    Panel20: TPanel;
    Edit54: TEdit;
    Button32: TButton;
    Button33: TButton;
    Panel8: TPanel;
    Panel12: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    PopupMenu2: TPopupMenu;
    Silmk2: TMenuItem;
    N1: TMenuItem;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button1: TButton;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label8: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label9: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Button2: TButton;
    Panel1: TPanel;
    Panel19: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Button29: TButton;
    Button30: TButton;
    DBGrid4: TDBGrid;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure Edit49Change(Sender: TObject);
    procedure Edit53KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit54KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Silmk2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Ssql: string;

implementation

{$R *.dfm}

uses Datamodule, MainUnit, NIPT, Patients, Personal, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

procedure TForm4.Button1Click(Sender: TObject);
begin
sSQL :=  ' SELECT * FROM Bonus where  ID>0 ';


 if (MaskEdit1.EditText<>'__.__.____') and (MaskEdit2.EditText='__.__.____') then
 begin
  sSQL := sSQL+ ' AND Cdate(Tarix)='''+MaskEdit1.Text+'''';
 end;

  if (MaskEdit1.EditText<>'__.__.____') and (MaskEdit2.EditText<>'__.__.____') then
 begin
  sSQL := sSQL+ ' AND Tarix between Format("'+MaskEdit1.EditText+'","dd.mm.yyyy") AND Format("'+MaskEdit2.EditText+'","dd.mm.yyyy")';
 end;

if edit33.Text>'' then
begin
 sSQL := sSQL+ ' and  Kart_№ like '+edit33.Text+'';
end;

if edit1.Text>'' then
begin
 sSQL := sSQL+ ' and  SAA like '''+edit33.Text+'''';
end;

if DBLookupComboBox1.Text>'' then
begin
 sSQL := sSQL+ ' and  Göndərən_həkim like '''+DBLookupComboBox1.Text+'''';
end;

if edit2.Text>'' then
begin
 sSQL := sSQL+ ' and  Bonus between '+edit2.Text+' and '+edit3.Text+'';
end;

if edit4.Text>'' then
begin
 sSQL := sSQL+ ' and  Güzəşt_AZN between '+edit4.Text+' and '+edit5.Text+'';
end;

if edit6.Text>'' then
begin
 sSQL := sSQL+ ' and  Borc_AZN between '+edit6.Text+' and '+edit7.Text+'';
end;

if edit8.Text>'' then
begin
 sSQL := sSQL+ ' and  Ç_B between '+edit8.Text+' and '+edit9.Text+'';
end;

if edit10.Text>'' then
begin
 sSQL := sSQL+ ' and  Q_B between '+edit10.Text+' and '+edit11.Text+'';
end;

DataModule2.ADOQuery20.SQL.Clear;
DataModule2.ADOQuery20.SQL.Add(sSQL + ' order by Tarix asc');
DataModule2.ADOQuery20.Open;
DataModule2.ADOQuery9.SQL.Clear;
DataModule2.ADOQuery9.SQL.Add('Select sum(Məbləğ_AZN) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery9.open;
DataModule2.ADOQuery10.SQL.Clear;
DataModule2.ADOQuery10.SQL.Add('Select sum(ƏDV) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery10.Open;
DataModule2.ADOQuery11.SQL.Clear;
DataModule2.ADOQuery11.SQL.Add('Select round(sum(Bonus),2) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery11.Open;
DataModule2.ADOQuery12.SQL.Clear;
DataModule2.ADOQuery12.SQL.Add('Select round(sum(Ç_B),2) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery12.Open;
DataModule2.ADOQuery13.SQL.Clear;
DataModule2.ADOQuery13.SQL.Add('Select round(sum(Q_B),2) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery13.Open;
DataModule2.ADOQuery14.SQL.Clear;
DataModule2.ADOQuery14.SQL.Add('Select round(sum(Əlavə_Bonus),2) from Bonus where Kart_№ like '+floattostr(DataModule2.ADOQuery20Kart_.Value)+'');
DataModule2.ADOQuery14.Open;
end;

procedure TForm4.Button29Click(Sender: TObject);
var
i: integer;
begin
DataModule2.ADOQuery20.First;
for I := 1 to DataModule2.ADOQuery20.RecordCount do
begin
  DataModule2.ADOQuery20.Edit;
  DataModule2.ADOQuery20Ç_B.Value:=DataModule2.ADOQuery20Ç_B.Value+strtofloat(Edit49.Text)/strtofloat(DBEdit1.Text);
  DataModule2.ADOQuery20Q_B.Value:=strtofloat(Edit50.Text)/strtofloat(DBEdit1.Text);
  DataModule2.ADOQuery20.Post;
  DataModule2.ADOQuery20.Next;
end;
DataModule2.ADOQuery7.Active:=false;
DataModule2.ADOQuery7.Active:=true;
end;

procedure TForm4.Button30Click(Sender: TObject);
begin
Edit47.Text:='0';
Edit48.Text:='0';
Edit49.Text:='0';
Edit50.Text:='0';
Edit51.Text:='0';

Panel19.Visible:=false;
end;

procedure TForm4.Button31Click(Sender: TObject);
begin
edit54.Clear;
Panel20.Visible:=true;
end;

procedure TForm4.Button32Click(Sender: TObject);
begin
if edit54.Text='24081995' then
begin
  edit53.Enabled:=true;
  panel20.Visible:=false;
end;
if edit54.Text<>'24081995' then
begin
  edit53.Enabled:=false;
  panel20.Visible:=true;
  ShowMessage('Parol səhvdir');
end;
end;

procedure TForm4.Button33Click(Sender: TObject);
begin
Panel20.Visible:=false;
end;

procedure TForm4.DBGrid4CellClick(Column: TColumn);
begin
DataModule2.ADOQuery22.SQL.Clear;
DataModule2.ADOQuery22.SQL.ADD('Select count(Kart_№) from Bonus where Kart_№ ='+floattostr(DataModule2.ADOQuery7Kart_.Value)+' ');
DataModule2.ADOQuery22.open;
DataModule2.ADOQuery20.SQL.Clear;
DataModule2.ADOQuery20.SQL.ADD('Select * from Bonus where Kart_№ ='+floattostr(DataModule2.ADOQuery7Kart_.Value)+' ');
DataModule2.ADOQuery20.open;
end;

procedure TForm4.DBGrid4DblClick(Sender: TObject);
begin
Edit47.Text:=floattostr(DataModule2.ADOQuery7Kart_.Value);
if DataModule2.ADOQuery7Qalan_Bonus.Value<>0 then
begin
Edit48.Text:=floattostr(DataModule2.ADOQuery7Qalan_Bonus.Value+DataModule2.ADOQuery7Elave_Bonus.Value);
end;
if DataModule2.ADOQuery7Qalan_Bonus.Value=0 then
begin
Edit48.Text:=floattostr(DataModule2.ADOQuery7Bonus.Value);
end;
Edit49.Text:=floattostr(0);
Edit50.Text:=floattostr(0);
Edit51.Text:=floattostr(0);
Panel19.Visible:=true;
end;

procedure TForm4.Edit33KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
  Button1Click(self);
end;
end;

procedure TForm4.Edit49Change(Sender: TObject);
begin
Edit50.Text:=floattostr(strtofloat(Edit48.Text)-strtofloat(Edit49.Text));
end;

procedure TForm4.Edit53KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
cfgFile:= TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'config.dat');
cfgFile.WriteString('general','AZN',edit53.Text);
cfgFile.Free;
edit53.Enabled:=false;
end;
end;

procedure TForm4.Edit54KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
  Button32.Click();
end;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
DataModule2.ADOQuery7.Active:=false;
DataModule2.ADOQuery7.Active:=true;
DataModule2.ADOQuery20.Active:=false;
DataModule2.ADOQuery20.Active:=true;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.Destroy;
end;

procedure TForm4.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_space then
begin
MaskEdit1.Text:=datetostr(now);
end;
end;

procedure TForm4.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_space then
begin
MaskEdit2.Text:=datetostr(now);
end;
end;

procedure TForm4.Silmk2Click(Sender: TObject);
begin
DataModule2.ADOQuery20.Edit;
DataModule2.ADOQuery20.DeleteRecords(arCurrent);
DataModule2.ADOQuery20.Active:=false;
DataModule2.ADOQuery20.Active:=true;
end;

end.
