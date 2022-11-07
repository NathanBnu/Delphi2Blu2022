unit Modelo.Player;

interface

type
  IPlayer = Interface
  ['{F415EF67-F6DE-41CF-B90E-8F134C493EB9}']
    function Play: Boolean;
    function Avancar: Boolean;
    function Retroceder: Boolean;
    function Stop: Boolean;
    function Pause: Boolean;
    function Localizar: Integer;

  End;

implementation

end.
