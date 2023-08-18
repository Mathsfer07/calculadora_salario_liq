unit IR;


interface

type
  TIR = class
  private
    resultado : double;
    function GetDescontoIR : Double;
  public
    procedure DescontoIR(Value : Double);
    property resultadoDescontoIR: Double read GetDescontoIR;


  end;

implementation

procedure TIR.DescontoIR(Value: Double);
begin
  if value <= 1903.98 then
    begin
      resultado := (value * 0);
    end
  else if (value > 1903.98) and (value <= 2826.65) then
    begin
      //resultado := (value - 1903.98) * 0.075;
      resultado := ((value * 0.075) - 142.80);
    end
  else if (value > 2826.65) and (value <= 3751.05) then
    begin
      //resultado := 69 + ((value - 2826.65) * 0.15);
      resultado := ((value * 0.15) - 354.80);
    end
  else if (value > 3751.05) and (value <= 4664.68) then
    begin
      //resultado := 69 + 138.66 + ((value - 3751.05) * 0.225);
      resultado := ((value * 0.225) - 636.13);
    end
  else if (value > 4664.68) then
    begin
      //resultado := 69 + 138.66 + 205.57 + ((value - 4664.68) * 0.275);
      resultado :=  ((value  * 0.275) - 869.36);
    end;

end;

function TIR.GetDescontoIR: Double;
begin
  result := resultado;
end;

end.
