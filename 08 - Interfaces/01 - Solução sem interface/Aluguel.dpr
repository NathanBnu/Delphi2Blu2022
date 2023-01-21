program Aluguel;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  UVehicle in 'model\entities\UVehicle.pas',
  UCarRental in 'model\entities\UCarRental.pas',
  UInvoice in 'model\entities\UInvoice.pas',
  UBrazilTaxService in 'model\services\UBrazilTaxService.pas',
  URentalService in 'model\services\URentalService.pas', System.SysUtils;

var
  xCarModel: String;
  xStrStart, xStrFinish: String;
  xStart, xFinish: TDateTime;
  xCarRental: TCarRental;
  xStrPricePerHour, xStrPricePerDay: String;
  xPricePerHour, xPricePerDay: Double;
  xRentalService: TRentalService;
begin
  try
    Writeln('Entre com os dados do aluguel: ');
    Write('Modelo do carro: ');
    Readln(xCarModel);

    Write('Retirada (dd/mm/yyyy hh:mm): ');
    Readln(xStrStart);
    xStart := StrToDateTime(xStrStart);

    Write('Retorno (dd/mm/yyyy hh:mm): ');
    Readln(xStrFinish);
    xFinish := StrToDateTime(xStrFinish);

    xCarRental := TCarRental.Create(xStart, xFinish, TVehicle.Create(xCarModel));

    Write('Entre com o pre�o por hora: ');
    Readln(xStrPricePerHour);
    xPricePerHour :=  StrToFloatDef(xStrPricePerHour, 0);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
