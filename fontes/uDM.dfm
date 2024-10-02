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
    Connected = True
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
  object QRYLOG: TFDQuery
    Connection = FDCONN
    SQL.Strings = (
      'SELECT * FROM TBLOG A'
      ' WHERE A.ID = :PID')
    Left = 256
    Top = 72
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYLOGID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYLOGIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      Required = True
    end
    object QRYLOGDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object QRYLOGHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object QRYLOGFORMULARIO: TStringField
      FieldName = 'FORMULARIO'
      Origin = 'FORMULARIO'
      Required = True
      Size = 100
    end
    object QRYLOGACAO: TStringField
      FieldName = 'ACAO'
      Origin = 'ACAO'
      Required = True
      Size = 100
    end
  end
end
