unit ufrmExercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmExercicio1 = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnVisualizar: TButton;
    btnExportar: TButton;
    Label2: TLabel;
    Label3: TLabel;
    edtAtor: TEdit;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio1: TfrmExercicio1;

implementation

{$R *.dfm}

end.
