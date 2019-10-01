inherited FCons_Contatos: TFCons_Contatos
  Caption = 'Consulta de Contatos'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBNavigator1: TDBNavigator
    DataSource = DS_Consulta
    Hints.Strings = ()
  end
  inherited DBGrid1: TDBGrid
    DataSource = DS_Consulta
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCON'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCON'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDCON'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAICON'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCID'
        Title.Caption = 'C'#243'd. Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELCON'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELCON'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTANAS'
        Title.Caption = 'Data Nascimento'
        Visible = True
      end>
  end
  inherited DS_Consulta: TDataSource
    DataSet = Data_Modulo.CDS_Contatos
  end
end
