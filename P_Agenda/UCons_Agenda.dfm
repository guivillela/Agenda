inherited FCons_Agenda: TFCons_Agenda
  Caption = 'Consulta Agendamentos'
  ClientHeight = 376
  ClientWidth = 540
  ExplicitWidth = 556
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 21
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Data Inicio'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 40
    Width = 64
    Height = 13
    Caption = 'Data Termino'
  end
  object Contato: TLabel [2]
    Left = 33
    Top = 72
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  inherited DBNavigator1: TDBNavigator
    Top = 351
    Width = 540
    DataSource = DS_Consulta
    Hints.Strings = ()
    ExplicitTop = 351
    ExplicitWidth = 540
  end
  inherited DBGrid1: TDBGrid
    Top = 134
    Width = 540
    Height = 217
    Align = alBottom
    DataSource = DS_Consulta
  end
  object edt_DataInicio: TDateTimePicker [5]
    Left = 75
    Top = 4
    Width = 94
    Height = 21
    Date = 43739.046351828700000000
    Time = 43739.046351828700000000
    TabOrder = 2
  end
  object edt_DataFim: TDateTimePicker [6]
    Left = 75
    Top = 36
    Width = 94
    Height = 21
    Date = 43739.000000000000000000
    Time = 43739.000000000000000000
    TabOrder = 3
  end
  object btn_Selecionar: TBitBtn [7]
    Left = 441
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 4
    OnClick = btn_SelecionarClick
  end
  object dblc_Contato: TDBLookupComboBox [8]
    Left = 75
    Top = 68
    Width = 145
    Height = 21
    DropDownWidth = 250
    KeyField = 'CODCON'
    ListField = 'CODCON;NOMCON'
    ListSource = DS_Contatos
    NullValueKey = 46
    TabOrder = 5
  end
  inherited DS_Consulta: TDataSource
    DataSet = QR_Agenda
  end
  object QR_Agenda: TFDQuery
    BeforeOpen = QR_AgendaBeforeOpen
    Filtered = True
    Filter = 'CODCON = 2'
    Connection = cnx_Agenda
    SQL.Strings = (
      'select * from agenda'
      'where diaage between :pn_datainicio and :pn_datafim')
    Left = 320
    Top = 96
    ParamData = <
      item
        Name = 'PN_DATAINICIO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'PN_DATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QR_AgendaCODAGE: TIntegerField
      FieldName = 'CODAGE'
      Origin = 'CODAGE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_AgendaTITAGE: TStringField
      FieldName = 'TITAGE'
      Origin = 'TITAGE'
      Size = 50
    end
    object QR_AgendaLOCAGE: TStringField
      FieldName = 'LOCAGE'
      Origin = 'LOCAGE'
      Size = 30
    end
    object QR_AgendaCODCON: TIntegerField
      FieldName = 'CODCON'
      Origin = 'CODCON'
    end
    object QR_AgendaDIAAGE: TDateField
      FieldName = 'DIAAGE'
      Origin = 'DIAAGE'
    end
    object QR_AgendaDIATOD: TStringField
      FieldName = 'DIATOD'
      Origin = 'DIATOD'
      FixedChar = True
      Size = 1
    end
    object QR_AgendaHORINI: TTimeField
      FieldName = 'HORINI'
      Origin = 'HORINI'
    end
    object QR_AgendaHORFIN: TTimeField
      FieldName = 'HORFIN'
      Origin = 'HORFIN'
    end
    object QR_AgendaREPAGE: TStringField
      FieldName = 'REPAGE'
      Origin = 'REPAGE'
      FixedChar = True
      Size = 7
    end
  end
  object cnx_Agenda: TFDConnection
    Params.Strings = (
      'ConnectionDef=Agenda')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 56
  end
  object QR_Contatos: TFDQuery
    Active = True
    Connection = cnx_Agenda
    SQL.Strings = (
      'select codcon, nomcon from contatos')
    Left = 320
    Top = 56
    object QR_ContatosCODCON: TIntegerField
      FieldName = 'CODCON'
      Origin = 'CODCON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_ContatosNOMCON: TStringField
      FieldName = 'NOMCON'
      Origin = 'NOMCON'
      Size = 50
    end
  end
  object DS_Contatos: TDataSource
    DataSet = QR_Contatos
    Left = 376
    Top = 24
  end
end
