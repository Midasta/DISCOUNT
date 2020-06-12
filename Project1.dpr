program Project1;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  Datamodule in 'Datamodule.pas' {DataModule2: TDataModule},
  Patients in 'Patients.pas' {Form2},
  Personal in 'Personal.pas' {Form3},
  Bonus in 'Bonus.pas' {Form4},
  NIPT in 'NIPT.pas' {Form5},
  BunusUpload in 'BunusUpload.pas' {Form6},
  Corporation in 'Corporation.pas' {Form7},
  CorpUpload in 'CorpUpload.pas' {Form8},
  NIPTUpload in 'NIPTUpload.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
//  Application.CreateForm(TForm9, Form9);
  //  Application.CreateForm(TForm8, Form8);
//  Application.CreateForm(TForm2, Form2);
//  Application.CreateForm(TForm3, Form3);
//  Application.CreateForm(TForm4, Form4);
//  Application.CreateForm(TForm5, Form5);
//  Application.CreateForm(TForm6, Form6);
//  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
