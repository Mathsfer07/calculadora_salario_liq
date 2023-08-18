program Calculo_Salario;

uses
  Vcl.Forms,
  principal in 'principal.pas' {Form1},
  inss in 'inss.pas',
  IR in 'IR.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
