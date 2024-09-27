object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 321
  Width = 335
  object FDCONN: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\paletizator\bin\database\DATABASE.FDB'
      'User_Name=SYSDBA'
      'Password=Ed180324.'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTRS
    Left = 32
    Top = 16
  end
  object FDTRS: TFDTransaction
    Connection = FDCONN
    Left = 64
    Top = 16
  end
  object qryAux: TFDQuery
    Connection = FDCONN
    Left = 256
    Top = 16
  end
end
