unit uFrmPrimeiraClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrimeiraClasse = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtAX: TEdit;
    edtBX: TEdit;
    edtCX: TEdit;
    edtAY: TEdit;
    edtBY: TEdit;
    edtCY: TEdit;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    lblX: TLabel;
    lblY: TLabel;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Calcular;
  public
  end;

var
  frmPrimeiraClasse: TfrmPrimeiraClasse;

implementation

{$R *.dfm}

procedure TfrmPrimeiraClasse.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TfrmPrimeiraClasse.Calcular;
var
  xAx, xBx, xCx, xPx, xPy, xAreax, xAreaY, xAy, xBy, xCy: Double;
begin
  //Triangulo X
  xAx := StrToFloat(edtAX.Text);
  xBx := StrToFloat(edtBX.Text);
  xCx := StrToFloat(edtCX.Text);

  xPx := (xAx + xBx + xCx) / 2;

  xAreax := Sqrt(xPx*(xPx-xAx)*(xPx-xBx)*(xPx-xCx));

  lblX.Caption := 'Triangulo X Área: ' + FloatToStr(xAreax);

  //Triangulo Y
  xAy := StrToFloat(edtAy.Text);
  xBy := StrToFloat(edtBy.Text);
  xCy := StrToFloat(edtCy.Text);

  xPy := (xAy + xBy + xCy) / 2;

  xAreay := Sqrt(xPy*(xPy-xAy)*(xPy-xBy)*(xPy-xCy));

  lblY.Caption := 'Triangulo Y Área: ' + FormatFloat('0.00', xAreay);

  //Qual triangulo é maior
  if xAreaX > xAreaY then
    lblResultado.Caption := 'A área do triangulo X é maior!'
  else
    lblResultado.Caption := 'A área do triangulo Y é maior!'
end;

end.
