unit BonusStub;

{$mode objfpc}{$H+}

interface

uses SysUtils, Classes;

type
  TEdit = class
  public
    Text: string;
  end;

  TForm4 = class
  public
    Edit48, Edit49, Edit50: TEdit;
    constructor Create;
    destructor Destroy; override;
    procedure Edit49Change(Sender: TObject);
  end;

implementation

constructor TForm4.Create;
begin
  Edit48 := TEdit.Create;
  Edit49 := TEdit.Create;
  Edit50 := TEdit.Create;
end;

destructor TForm4.Destroy;
begin
  Edit48.Free;
  Edit49.Free;
  Edit50.Free;
  inherited Destroy;
end;

procedure TForm4.Edit49Change(Sender: TObject);
begin
  Edit50.Text := FloatToStr(StrToFloat(Edit48.Text) - StrToFloat(Edit49.Text));
end;

end.
