unit U_CadastroContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_CadastroBase, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Data.FMTBcd, Data.SqlExpr, Data.DBXFirebird, Datasnap.DBClient, SimpleDS;

type
  TF_CadastroContatos = class(TF_CadastroBase)
    grb_Nome: TGroupBox;
    Panel1: TPanel;
    dbe_Nome: TDBEdit;
    grb_DataNascimento: TGroupBox;
    Panel2: TPanel;
    grb_Endereco: TGroupBox;
    pnl_Rua: TPanel;
    dbe_Rua: TDBEdit;
    Label1: TLabel;
    pnl_Bairro: TPanel;
    Label2: TLabel;
    dbe_Bairro: TDBEdit;
    grb_Cidade: TGroupBox;
    pnl_Cidade: TPanel;
    dblc_Cidade: TDBLookupComboBox;
    DS_Cidade: TDataSource;
    sds_Cidade: TSimpleDataSet;
    sds_CidadeCODCID: TIntegerField;
    sds_CidadeNOMCID: TStringField;
    DatasetFirst1: TDataSetFirst;
    grb_Telefones: TGroupBox;
    pnl_telfixo: TPanel;
    Label3: TLabel;
    dbe_telfixo: TDBEdit;
    pnl_Celular: TPanel;
    Label4: TLabel;
    dbe_telcelular: TDBEdit;
    dtp_DataNasc: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastroContatos: TF_CadastroContatos;

implementation

uses U_Data_Modulo;

{$R *.dfm}

procedure TF_CadastroContatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Data_Modulo.CDS_Contatos.Close;
end;

procedure TF_CadastroContatos.FormCreate(Sender: TObject);
begin
  inherited;
  Data_Modulo.CDS_Contatos.Open;
end;

end.
