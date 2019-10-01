unit U_ConsultaBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TF_ConsultaBase = class(TForm)
    DBNavigator1: TDBNavigator;
    DS_Consulta: TDataSource;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConsultaBase: TF_ConsultaBase;

implementation

{$R *.dfm}

uses U_Data_Modulo;

end.
