unit inss;

interface

type
  TInss = class
  private
    resultado : double;
    function GetDesconto : Double;
  public
    procedure DescontoInss(Value : Double);
    property resultadoDesconto: Double read GetDesconto;


  end;

implementation

procedure TInss.DescontoInss(Value: Double);
begin
  if value <= 1302.00 then
    begin
      resultado := (value * 0.075);
    end
  else if (value > 1302.00) and (value <= 2571.29) then
    begin
      resultado := 97.65 + ((value - 1302.00) * 0.09);
    end
  else if (value > 2571.29) and (value <= 3856.94) then
    begin
      resultado := 97.65 + 114.3 + ((value - 2571.29) * 0.12);
    end
  else if (value > 3856.94) and (value <= 7507.29) then
    begin
      resultado := 97.65 + 114.3 + 154.28 + ((value - 3856.94) * 0.14);
    end
  else
    resultado := 877.22;

end;

function TInss.GetDesconto: Double;
begin
  result := resultado;
end;

end.
