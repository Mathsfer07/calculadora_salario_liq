unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Memo1: TMemo;
    Label13: TLabel;
    calcular: TButton;
    procedure calcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    ValorHora : Double;
    HorasTrabalhadas : Double;
    HorasDeDescanso : Double;
    HorasExtras50 : Double;
    HorasExtras100  : Double;
    AuxilioHomeOffice : Double;
    AdicTempoServ : Double;
    PlanoSaude  : Double;
    PlanoOdonto : Double;
    Alimentacao : Double;
    Transporte  : Double;
    OutrosDesc  : Double;
  end;

var
  Form1: TForm1;

implementation
  uses
    inss,
    IR;

{$R *.dfm}

procedure TForm1.calcularClick(Sender: TObject);
  var
    Descsalario : TInss;
    SalarioBruto : Double;
    SalarioSemInss : Double;
    DescSalarioIR : TIR;
    SalarioLiquido :  Double;
    Descontos : Double;
  begin
    Memo1.Clear;

    //conversão de string para Double
    ValorHora := StrToFloat(Edit1.Text);
    HorasTrabalhadas := StrToFloat(Edit2.Text);
    HorasDeDescanso := StrToFloat(Edit3.Text);
    HorasExtras50 := StrToFloat(Edit4.Text) * 1.5;
    HorasExtras100  := StrToFloat(Edit5.Text) * 2;
    AuxilioHomeOffice := StrToFloat(Edit6.Text);
    AdicTempoServ := StrToFloat(Edit7.Text);
    PlanoSaude  := StrToFloat(Edit8.Text);
    PlanoOdonto := StrToFloat(Edit9.Text);
    Alimentacao := StrToFloat(Edit10.Text);
    Transporte  := StrToFloat(Edit11.Text);
    OutrosDesc  := StrToFloat(Edit12.Text);

    SalarioBruto := (ValorHora*(HorasTrabalhadas + HorasDeDescanso + HorasExtras50 + HorasExtras100) + AdicTempoServ);
    Descontos :=  PlanoSaude + PlanoOdonto + Alimentacao + Transporte + OutrosDesc;



    Descsalario := TInss.Create;
    try
      Descsalario.DescontoInss(SalarioBruto);
      SalarioSemInss := SalarioBruto - (Descsalario.resultadoDesconto);


    finally
      Descsalario.DisposeOf;
    end;
    DescSalarioIR := TIR.Create;
    try
      DescSalarioIR.DescontoIR(SalarioSemInss);
      SalarioLiquido := SalarioSemInss - (DescSalarioIR.resultadoDescontoIR);
    finally
      DescSalarioIR.DisposeOf;
    end;

    Memo1.Lines.Add(FloatToStr(SalarioLiquido + AuxilioHomeOffice - Descontos));
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;

  Edit1.Text := '0';
  Edit2.Text := '0';
  Edit3.Text := '0';
  Edit4.Text := '0';
  Edit5.Text := '0';
  Edit6.Text := '0';
  Edit7.Text := '0';
  Edit8.Text := '0';
  Edit9.Text := '0';
  Edit10.Text := '0';
  Edit11.Text := '0';
  Edit12.Text := '0';
end;

end.
