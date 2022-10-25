unit uAluno;

interface


type

  TAluno = class
  private
    FMatricula: Integer;
    FNome: String;
    FProva1, FProva2, FTrabalho: Double;

    function GetMatricula: Integer;
    function GetNome: String;
    function GetProva1: Double;
    function GetProva2: Double;
    function GetTrabalho: Double;

    procedure SetMatricula(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetProva1(const Value: Double);
    procedure SetProva2(const Value: Double);
    procedure SetTrabalho(const Value: Double);

  public

    function alunoMedia: Double;
    function alunoFinal(const aMedia: Double): Double;

    property Matricula: Integer read GetMatricula write SetMatricula;
    property Nome: String read GetNome write SetNome;
    property Prova1: Double read GetProva1 write SetProva1;
    property Prova2: Double read GetProva2 write SetProva2;
    property Trabalho: Double read GetTrabalho write SetTrabalho;
  end;

implementation

{ TAluno }

function TAluno.alunoFinal(const aMedia: Double): Double;
var
  xMedia: Double;
begin
  xMedia := aMedia;

  if xMedia >= 7 then
    Result := 0
  else
    xMedia := xMedia - 7;

  Result := xMedia;
end;

function TAluno.alunoMedia: Double;
begin
  Result := ((prova1 + prova2) * 3 + trabalho * 4)/10;
end;

function TAluno.GetMatricula: Integer;
begin
  Result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  Result := FNome;
end;

function TAluno.GetProva1: Double;
begin
  Result := FProva1;
end;

function TAluno.GetProva2: Double;
begin
  Result := FProva2;
end;

function TAluno.GetTrabalho: Double;
begin
  Result := FTrabalho;
end;

procedure TAluno.SetMatricula(const Value: Integer);
begin
  FMatricula := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAluno.SetProva1(const Value: Double);
begin
  FProva1 := Value;
end;

procedure TAluno.SetProva2(const Value: Double);
begin
  FProva2 := Value;
end;

procedure TAluno.SetTrabalho(const Value: Double);
begin
  FTrabalho := Value;
end;

end.
