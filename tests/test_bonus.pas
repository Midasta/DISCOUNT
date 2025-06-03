program test_bonus;

{$mode objfpc}{$H+}

uses
  Classes, SysUtils, fpcunit, testutils, testregistry, simpletestrunner,
  BonusStub;

type
  TEdit49ChangeTest = class(TTestCase)
  private
    FForm: TForm4;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestEdit49Change;
  end;

procedure TEdit49ChangeTest.SetUp;
begin
  FForm := TForm4.Create;
end;

procedure TEdit49ChangeTest.TearDown;
begin
  FForm.Free;
end;

procedure TEdit49ChangeTest.TestEdit49Change;
begin
  FForm.Edit48.Text := '100';
  FForm.Edit49.Text := '25';
  FForm.Edit49Change(nil);
  AssertEquals('75', FForm.Edit50.Text);
end;

var
  Runner: TTestRunner;
begin
  RegisterTest(TEdit49ChangeTest);
  Runner := TTestRunner.Create(nil);
  Runner.Initialize;
  Runner.Run;
  Runner.Free;
end.
