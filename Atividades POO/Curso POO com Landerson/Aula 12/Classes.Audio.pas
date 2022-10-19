unit Classes.Audio;

interface

uses Classes.Midia, Modelo.Player;

type TAudio = class (TMidia, IPlayer)
     private
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }
       function Tocar: Boolean;
       function Avancar: Boolean;
       function Pause: Boolean;
       function Localizar: Integer;
       function Retroceder: Boolean;
       function Play: Boolean;
       function Stop: Boolean;


     published
       { published declarations }
     end;

implementation

{ TAudio }

function TAudio.Avancar: Boolean;
begin

end;

function TAudio.Localizar: Integer;
begin

end;

function TAudio.Pause: Boolean;
begin

end;

function TAudio.Play: Boolean;
begin

end;

function TAudio.Retroceder: Boolean;
begin

end;

function TAudio.Stop: Boolean;
begin

end;

function TAudio.Tocar: Boolean;
begin
  Result := true;
end;

end.
