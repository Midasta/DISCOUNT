unit CorpUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Panel15: TPanel;
    Panel16: TPanel;
    DBGrid9: TDBGrid;
    Panel17: TPanel;
    DBGrid10: TDBGrid;
    ComboBox4: TComboBox;
    Button25: TButton;
    Button26: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Bonus, BunusUpload, Corporation, Datamodule, MainUnit, NIPT, Patients,
  Personal, NIPTUpload;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form8.Destroy;
end;

end.
