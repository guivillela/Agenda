program P_Agenda;

uses
  Vcl.Forms,
  U_Principal in '..\..\..\..\..\..\Documents\Embarcadero\Studio\Projects\U_Principal.pas' {F_Principal},
  U_Data_Modulo in '..\..\..\..\..\..\Documents\Embarcadero\Studio\Projects\U_Data_Modulo.pas' {Data_Modulo: TDataModule},
  U_CadastroBase in 'U_CadastroBase.pas' {F_CadastroBase},
  U_CadastroCidade in 'U_CadastroCidade.pas' {F_CadastroCidade},
  U_CadastroContatos in 'U_CadastroContatos.pas' {F_CadastroContatos},
  U_CadastroAgenda in 'U_CadastroAgenda.pas' {F_CadastroAgenda},
  U_ConsultaBase in 'U_ConsultaBase.pas' {F_ConsultaBase},
  UCons_Contatos in 'UCons_Contatos.pas' {FCons_Contatos},
  UCons_Cidades in 'UCons_Cidades.pas' {FCons_Cidades},
  UCons_Agenda in 'UCons_Agenda.pas' {FCons_Agenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TData_Modulo, Data_Modulo);
  Application.Run;
end.
