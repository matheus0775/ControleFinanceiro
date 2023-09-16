object uConexao: TuConexao
  Height = 331
  Width = 446
  object Servidor: TFDConnection
    Params.Strings = (
      'Database=C:\dados\FINANCEIRO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 80
    Top = 112
  end
end
