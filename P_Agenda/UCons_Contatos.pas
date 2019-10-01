unit UCons_Contatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_ConsultaBase, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFCons_Contatos = class(TF_ConsultaBase)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCons_Contatos: TFCons_Contatos;

implementation

{$R *.dfm}

uses U_Data_Modulo;

procedure TFCons_Contatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Data_Modulo.CDS_Contatos.Close;
end;

procedure TFCons_Contatos.FormCreate(Sender: TObject);
begin
  inherited;
  Data_Modulo.CDS_Contatos.Open;
end;

end.
