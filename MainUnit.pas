unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,Comobj,
  Vcl.ComCtrls, Vcl.ExtDlgs,Jpeg, Vcl.Mask, Data.DB, Vcl.DBCtrls,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,DateUtils,ShellApi,System.UITypes,IniFiles;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Gztkart11: TMenuItem;
    Gztkart12: TMenuItem;
    ibbipersonalkart1: TMenuItem;
    Bonuskart1: TMenuItem;
    Korporativkart1: TMenuItem;
    Sndlr1: TMenuItem;
    sas1: TMenuItem;
    Hkimlrn1: TMenuItem;
    VPpasiyent1: TMenuItem;
    ibbipersonal1: TMenuItem;
    Reprezantlar1: TMenuItem;
    Gztkartlarolanpasiyentlr1: TMenuItem;
    Bonuskartlar1: TMenuItem;
    Korporativ1: TMenuItem;
    NIPTkart1: TMenuItem;
    NIPTkartlar1: TMenuItem;
    procedure Gztkart12Click(Sender: TObject);
    procedure ibbipersonalkart1Click(Sender: TObject);
    procedure Bonuskart1Click(Sender: TObject);
    procedure Korporativkart1Click(Sender: TObject);
    procedure Korporativ1Click(Sender: TObject);
    procedure Bonuskartlar1Click(Sender: TObject);
    procedure NIPTkart1Click(Sender: TObject);
    procedure NIPTkartlar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  sSQL: string;
  filename: string;
  WordApp: OLEVariant;
  butsel: integer;
  cfgFile: TIniFile;

implementation

{$R *.dfm}

uses Bonus, Datamodule, NIPT, Patients, Personal, BunusUpload, Corporation,
  CorpUpload, NIPTUpload;

const
msoSendBehindText=3;
msoTextOrientationHorizontal=1;

procedure TForm1.Bonuskart1Click(Sender: TObject);
begin
Application.CreateForm(TForm4,Form4);
end;

procedure TForm1.Bonuskartlar1Click(Sender: TObject);
begin
Application.CreateForm(TForm6,Form6);
end;

procedure TForm1.Gztkart12Click(Sender: TObject);
begin
Application.CreateForm(Tform2,Form2);
end;

procedure TForm1.ibbipersonalkart1Click(Sender: TObject);
begin
Application.CreateForm(TForm3,Form3);
end;

procedure TForm1.Korporativ1Click(Sender: TObject);
begin
Application.CreateForm(Tform8,Form8);
end;

procedure TForm1.Korporativkart1Click(Sender: TObject);
begin
Application.CreateForm(Tform7,Form7);
end;

procedure TForm1.NIPTkart1Click(Sender: TObject);
begin
Application.CreateForm(Tform5,Form5);
end;

procedure TForm1.NIPTkartlar1Click(Sender: TObject);
begin
Application.CreateForm(Tform9,Form9);
end;

end.
