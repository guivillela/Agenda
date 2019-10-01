unit UCons_Agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_ConsultaBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFCons_Agenda = class(TF_ConsultaBase)
    QR_Agenda: TFDQuery;
    cnx_Agenda: TFDConnection;
    QR_AgendaCODAGE: TIntegerField;
    QR_AgendaTITAGE: TStringField;
    QR_AgendaLOCAGE: TStringField;
    QR_AgendaCODCON: TIntegerField;
    QR_AgendaDIAAGE: TDateField;
    QR_AgendaDIATOD: TStringField;
    QR_AgendaHORINI: TTimeField;
    QR_AgendaHORFIN: TTimeField;
    QR_AgendaREPAGE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edt_DataInicio: TDateTimePicker;
    edt_DataFim: TDateTimePicker;
    btn_Selecionar: TBitBtn;
    dblc_Contato: TDBLookupComboBox;
    QR_Contatos: TFDQuery;
    DS_Contatos: TDataSource;
    QR_ContatosCODCON: TIntegerField;
    QR_ContatosNOMCON: TStringField;
    Contato: TLabel;
    procedure QR_AgendaBeforeOpen(DataSet: TDataSet);
    procedure btn_SelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCons_Agenda: TFCons_Agenda;

implementation

{$R *.dfm}

uses U_Data_Modulo;

procedure TFCons_Agenda.btn_SelecionarClick(Sender: TObject);
begin
  inherited;
  if QR_Agenda.Active then
  begin
    QR_Agenda.Close;
    QR_Agenda.Open;
  end
  else
    QR_Agenda.Open;
end;

procedure TFCons_Agenda.QR_AgendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QR_Agenda.ParamByName('pn_datainicio').Value := edt_DataInicio.Date;
  QR_Agenda.ParamByName('pn_datafim').Value    := edt_DataFim.Date;

  if dblc_Contato.Text <> '' then
  begin
    QR_Agenda.Filter   := 'CODCON = ' + dblc_Contato.Text;
    QR_Agenda.Filtered := true;
  end
  else
  begin
    QR_Agenda.Filtered := false;
  end;

end;

end.
