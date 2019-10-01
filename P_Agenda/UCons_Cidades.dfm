inherited FCons_Cidades: TFCons_Cidades
  Caption = 'FCons_Cidades'
  ClientWidth = 507
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    Width = 507
    DataSource = DS_Consulta
    Hints.Strings = ()
  end
  inherited DBGrid1: TDBGrid
    Width = 507
    DataSource = DS_Consulta
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCID'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCID'
        Title.Caption = 'Cidade'
        Visible = True
      end>
  end
  inherited DS_Consulta: TDataSource
    DataSet = QR_Cidades
    Left = 384
    Top = 112
  end
  object QR_Cidades: TFDQuery
    Connection = cnx_Agenda
    SQL.Strings = (
      'select * from cidades')
    Left = 320
    Top = 96
  end
  object cnx_Agenda: TFDConnection
    Params.Strings = (
      'ConnectionDef=Agenda')
    Connected = True
    LoginPrompt = False
    Left = 384
    Top = 64
  end
end
