unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uAluno;

type
  TForm1 = class(TForm)
    btnComecar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnComecarClick(Sender: TObject);
  private
    FAluno: TAluno;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnComecarClick(Sender: TObject);
begin
  //FAluno.Matricula := StrToInt(inputbox('Matrícular', 'Informe sua matrícula', ''));
  FAluno.Nome := inputbox('Nome', 'Digite seu nome', '');
  FAluno.Prova1 := StrToInt(inputbox('Avaliação', 'Informe a nota de sua prova 1', ''));
  FAluno.Prova2 := StrToInt(inputbox('Avaliação', 'Informe a nota desua prova 2', ''));
  FAluno.trabalho := StrToInt(inputbox('Avaliação', 'Informe a nota de seu trabalho', ''));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FAluno);
end;

end.
