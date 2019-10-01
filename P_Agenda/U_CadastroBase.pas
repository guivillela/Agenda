unit U_CadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Vcl.DBActns, System.Actions, Vcl.ActnList, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TF_CadastroBase = class(TForm)
    tlb_Cadastro: TToolBar;
    iml_Habilitados: TImageList;
    iml_Desabilitados: TImageList;
    iml_Hot: TImageList;
    btn_Inserir: TToolButton;
    btn_Buscar: TToolButton;
    btn_Confirmar: TToolButton;
    btn_Remover: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton6: TToolButton;
    btn_Sair: TToolButton;
    DS_Cadastro: TDataSource;
    acl_Cadastro: TActionList;
    acl_Inserir: TDataSetInsert;
    acl_Remover: TDataSetDelete;
    acl_Post: TDataSetPost;
    acl_Cancelar: TDataSetCancel;
    acl_Buscar: TAction;
    acl_Sair: TAction;
    grb_Codigo: TGroupBox;
    pnl_Codigo: TPanel;
    dbe_Codigo: TDBEdit;
    procedure acl_SairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadastroBase: TF_CadastroBase;

implementation

{$R *.dfm}

procedure TF_CadastroBase.acl_SairExecute(Sender: TObject);
begin
  Close();
end;

procedure TF_CadastroBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
