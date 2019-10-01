unit UCons_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_ConsultaBase, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFCons_Cidades = class(TF_ConsultaBase)
    QR_Cidades: TFDQuery;
    cnx_Agenda: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCons_Cidades: TFCons_Cidades;

implementation

{$R *.dfm}

uses U_Data_Modulo;

procedure TFCons_Cidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QR_Cidades.Close;
end;

procedure TFCons_Cidades.FormCreate(Sender: TObject);
begin
  inherited;
  QR_Cidades.Open;
end;

end.
