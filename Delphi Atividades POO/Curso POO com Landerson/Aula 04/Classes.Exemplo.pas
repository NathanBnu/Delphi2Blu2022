unit Classes.Exemplo;

interface

type
  TExemplo = class

  strict private
    FPrivado: String; //Estritamente privado, sem acesso das classes amigas
  private
    { private declarations VISIVEL PARA A CLASSE E CLASSES AMIGAS(classes geradas na mesma unit)}
  strict protected
    {Estritamente protegido}
    FProtegido: String;
  protected
    { protected declarations VISIVEL PARA A CLASSE, CLASSES AMIGAS E TAMBEM OS HERDEIROS DA CLASSE}

  public
    { public declarations VISIVEL PARA A QUALQUER UM QUE REFENRECIE A CLASSE}
    FPublico: String;
    FPublicada: String;
    procedure SetPublicada(const Value: String);
    function GetPrivado: String;
    function Heranca: String;
  published
    { published declarations VISIVEL E PUBLICADO NO OBJECT INSPECTOR}
    property Publicada: String read FPublicada write SetPublicada;
  end;

  TSubExemplo = class(TExemplo)
    public
      function GetProtegidoExemplo: String;
      function VerPrivadoExemplo: String;
      function Heranca: String;
  end;

    TAmiga = class
      Exe: TExemplo;
    public

    end;

implementation

{ TExemplo }

function TExemplo.GetPrivado: String;
begin
  Result := FPrivado;
end;

function TExemplo.Heranca: String;
begin
  FPublico := FPublico + ' Implementado na classe ancestral ';
end;

procedure TExemplo.SetPublicada(const Value: String);
begin
  FPublicada := Value;
end;

{ TSubExemplo }

function TSubExemplo.GetProtegidoExemplo: String;
begin
  result := FProtegido;
end;

{function TSubExemplo.VerPrivadoExemplo: String;
begin
  Result := FPrivado;
end;}

function TSubExemplo.Heranca: String;
begin
  inherited;
  FPublico := FPublico + ' Implementado na classe descendente ';
  Result := FPublico;
end;

function TSubExemplo.VerPrivadoExemplo: String;
begin

end;

{ TAmiga }



end.
