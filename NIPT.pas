unit NIPT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
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
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Edit2: TEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Bonus, Datamodule, MainUnit, Patients, Personal, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

procedure TForm5.Button1Click(Sender: TObject);
begin
DataModule2.ADOQuery18.Edit;
DataModule2.ADOQuery18Cardid.Value:=strtoint(Edit1.Text);
DataModule2.ADOQuery18Data.Value:=strtodate(MaskEdit1.Text);
DataModule2.ADOQuery18SAA.Value:=Edit2.Text;
DataModule2.ADOQuery18DOB.Value:=strtodate(MaskEdit2.Text);
DataModule2.ADOQuery18Mobil.Value:=Edit3.Text;
DataModule2.ADOQuery18SV.Value:=Edit4.Text;
DataModule2.ADOQuery18Adress.Value:=Edit5.Text;
DataModule2.ADOQuery18Email.Value:=Edit6.Text;
DataModule2.ADOQuery18NİPT_kod.Value:=Edit7.Text;
DataModule2.ADOQuery18NİPT_MEDİS.Value:=Edit8.Text;
DataModule2.ADOQuery18USM_kod.Value:=Edit9.Text;
DataModule2.ADOQuery18USM_MEDİS.Value:=Edit10.Text;
DataModule2.ADOQuery18Sender.Value:=Edit11.Text;
DataModule2.ADOQuery18.Post;
Button3Click(Self);
Button1.Visible:=false;
Button2.Visible:=true;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
DataModule2.ADOQuery18.Insert;
DataModule2.ADOQuery18Cardid.Value:=strtoint(Edit1.Text);
DataModule2.ADOQuery18Data.Value:=strtodate(MaskEdit1.Text);
DataModule2.ADOQuery18SAA.Value:=Edit2.Text;
DataModule2.ADOQuery18DOB.Value:=strtodate(MaskEdit2.Text);
DataModule2.ADOQuery18Mobil.Value:=Edit3.Text;
DataModule2.ADOQuery18SV.Value:=Edit4.Text;
DataModule2.ADOQuery18Adress.Value:=Edit5.Text;
DataModule2.ADOQuery18Email.Value:=Edit6.Text;
DataModule2.ADOQuery18NİPT_kod.Value:=Edit7.Text;
DataModule2.ADOQuery18NİPT_MEDİS.Value:=Edit8.Text;
DataModule2.ADOQuery18USM_kod.Value:=Edit9.Text;
DataModule2.ADOQuery18USM_MEDİS.Value:=Edit10.Text;
DataModule2.ADOQuery18Sender.Value:=Edit11.Text;
DataModule2.ADOQuery18.Next;
Button3Click(Self);
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Edit1.Text:='';
MaskEdit1.Text:='__.__.____';
Edit2.Text:='';
MaskEdit2.Text:='__.__.____';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
Edit10.Text:='';
Edit11.Text:='';
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text:=inttostr(DataModule2.ADOQuery18Cardid.Value);
MaskEdit1.Text:=datetostr(DataModule2.ADOQuery18Data.Value);
Edit2.Text:=DataModule2.ADOQuery18SAA.Value;
MaskEdit2.Text:=datetostr(DataModule2.ADOQuery18DOB.Value);
Edit3.Text:=DataModule2.ADOQuery18Mobil.Value;
Edit4.Text:=DataModule2.ADOQuery18SV.Value;
Edit5.Text:=DataModule2.ADOQuery18Adress.Value;
Edit6.Text:=DataModule2.ADOQuery18Email.Value;
Edit7.Text:=DataModule2.ADOQuery18NİPT_kod.Value;
Edit8.Text:=DataModule2.ADOQuery18NİPT_MEDİS.Value;
Edit9.Text:=DataModule2.ADOQuery18USM_kod.Value;
Edit10.Text:=DataModule2.ADOQuery18USM_MEDİS.Value;
Edit11.Text:=DataModule2.ADOQuery18Sender.Value;
Button2.Visible:=false;
Button1.Visible:=true;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form5.Destroy;
end;

end.
