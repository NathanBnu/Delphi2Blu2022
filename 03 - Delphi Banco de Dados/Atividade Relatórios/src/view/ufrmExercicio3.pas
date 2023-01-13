unit ufrmExercicio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, udmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmExercicio3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    edtFilme: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio3: TfrmExercicio3;

implementation

{$R *.dfm}

end.
