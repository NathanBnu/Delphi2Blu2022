unit UService.Match;

interface

uses
  UEntity.Matchs,
  Uservice.base,
  Generics.Collections;

type
  TServiceMatch = class(TServiceBase)
    private
      TMatch: TMatch;
      TMatchs: TObjectlist<TMatch>;

      function GetMatchs: TObjectList<TMatch>;
      procedure PreencherMatchs(const aJSONMatchs: String);

    public
      constructor Create; overload;
      constructor Create(aMatch: TMatch); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar; override;
      procedure Excluir; override;

      function ObterRegistro (const aId: Integer): TObject; override;

      property Matchs: TObjectList<TMatch> read GetMatchs;
  end;

implementation

{ TServiceMatch }

constructor TServiceMatch.Create;
begin

end;

constructor TServiceMatch.Create(aMatch: TMatch);
begin

end;

destructor TServiceMatch.Destroy;
begin

  inherited;
end;

procedure TServiceMatch.Excluir;
begin
  inherited;

end;

function TServiceMatch.GetMatchs: TObjectList<TMatch>;
begin

end;

procedure TServiceMatch.Listar;
begin
  inherited;

end;

function TServiceMatch.ObterRegistro(const aId: Integer): TObject;
begin

end;

procedure TServiceMatch.PreencherMatchs(const aJSONMatchs: String);
begin

end;

procedure TServiceMatch.Registrar;
begin
  inherited;

end;

end.
