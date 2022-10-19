unit CapacitacaoPOO.Classes.Cliente;

interface
uses CapacitacaoPOO.Classes.Pessoa;

 type
  TCliente = class(TPessoa)
  CNPJ: String;
  RazaoSocial: String;
 end;

implementation

end.
