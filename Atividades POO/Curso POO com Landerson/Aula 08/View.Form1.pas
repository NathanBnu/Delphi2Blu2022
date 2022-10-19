unit View.Form1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  SALARIOMINIMO = 1212;
  VALORDIA =  40.40;
  VALORHORA = 5.51;
var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classes.Trabalhador;

procedure TForm1.Button1Click(Sender: TObject);
var
  xTrabalhadorCLT, xTrabalhadorDiarista: TTrabalhador;
begin
  xTrabalhadorCLT := TTrabalhador.Create;
  xTrabalhadorCLT.Salario := xTrabalhadorCLT.CalcularSalario(SALARIOMINIMO, 1);

  Edit1.Text := xTrabalhadorCLT.Salario.ToString;

  xTrabalhadorDiarista := TTrabalhador.Create;
  xTrabalhadorDiarista.Salario := xTrabalhadorDiarista.CalcularSalario(VALORDIA, 10);

  edit2.Text := xTrabalhadorDiarista.Salario.ToString;
end;

end.
