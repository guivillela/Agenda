unit U_CadastroCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_CadastroBase, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TF_CadastroCidade = class(TF_CadastroBase)
    grb_Cidade: TGroupBox;
    Panel1: TPanel;
    dbe_Cidade: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastroCidade: TF_CadastroCidade;

implementation

{$R *.dfm}

uses U_Data_Modulo;

procedure TF_CadastroCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Data_Modulo.CDS_Cidades.Close;
end;

procedure TF_CadastroCidade.FormCreate(Sender: TObject);
begin
  inherited;
  Data_Modulo.CDS_Cidades.Open;
end;

end.
