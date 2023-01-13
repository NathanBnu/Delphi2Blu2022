unit ufrmAtividade1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmAtividade1 = class(TForm)
    Label2: TLabel;
    edtAtor: TEdit;
    btnVisualizar: TButton;
    btnExportar: TButton;
    frxDBDataset1: TfrxDBDataset;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade1: TfrmAtividade1;

implementation

{$R *.dfm}

uses udmConexao;

end.
