unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, uBombaCombustivel;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cmbCombustiveis: TComboBox;
    bntEscolher: TButton;
    rdAbastecer: TRadioGroup;
    edtValor: TEdit;
    bntAbastecer: TButton;
    mmResultado: TMemo;
    procedure bntEscolherClick(Sender: TObject);
    procedure rdAbastecerClick(Sender: TObject);
    procedure Abastecer;
    procedure bntAbastecerClick(Sender: TObject);
  private
    { Private declarations }
  public
    xBomba: TBombaCombustivel;
  end;

var
  Form1: TForm1;

implementation

uses
   Vcl.Dialogs;

{$R *.dfm}


procedure TForm1.Abastecer;
var
  xValor: Double;
  xBomba: TBombaCombustivel;
begin
  xBomba := TBombaCombustivel.Create;
  TRY
  xValor:= StrToFloat(edtValor.Text);
  mmResultado.Lines.Add('Valor Abastecido: R$' + FloatToStr(xValor) + CurrToStr(xBomba.ValorLitro));
  FINALLY
    FreeAndNil(xBomba);
  END;
end;

procedure TForm1.bntAbastecerClick(Sender: TObject);
begin
  Abastecer;
end;

procedure TForm1.bntEscolherClick(Sender: TObject);
begin
  rdAbastecer.Enabled := True;
end;

procedure TForm1.rdAbastecerClick(Sender: TObject);
begin
  bntAbastecer.Enabled := True;
  edtValor.Enabled := True;
end;

end.
