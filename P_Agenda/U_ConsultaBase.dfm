object F_ConsultaBase: TF_ConsultaBase
  Left = 0
  Top = 0
  Caption = 'F_ConsultaBase'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 176
    Width = 447
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alBottom
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 447
    Height = 170
    Align = alTop
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DS_Consulta: TDataSource
    Left = 376
    Top = 96
  end
end
