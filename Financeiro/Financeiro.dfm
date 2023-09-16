object frmPagar: TfrmPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Contas '#225' Pagar'
  ClientHeight = 432
  ClientWidth = 528
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object lblAno: TLabel
    Left = 8
    Top = 1
    Width = 41
    Height = 23
    Caption = 'ANO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblLancamentos: TLabel
    Left = 111
    Top = 1
    Width = 125
    Height = 23
    Caption = 'LAN'#199'AMENTOS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 353
    Top = 282
    Width = 89
    Height = 23
    Caption = 'Total Desp.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgPagar: TDBGrid
    Left = 111
    Top = 28
    Width = 410
    Height = 245
    DataSource = dsPadrao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LANCTO'
        ReadOnly = True
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 528
    Height = 50
    Align = alBottom
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 398
    ExplicitWidth = 628
    object btnLancar: TButton
      Left = 4
      Top = 4
      Width = 75
      Height = 41
      Caption = 'Lan'#231'ar'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 85
      Top = 4
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 366
      Top = 5
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 447
      Top = 4
      Width = 75
      Height = 41
      Caption = 'Fechar'
      TabOrder = 3
    end
    object btnPesquisar: TButton
      Left = 200
      Top = 4
      Width = 75
      Height = 41
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 28
    Width = 97
    Height = 344
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtTotalDespesas: TEdit
    Left = 448
    Top = 279
    Width = 73
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object dsPadrao: TDataSource
    DataSet = sqlPadrao
    Left = 280
    Top = 192
  end
  object sqlPadrao: TFDQuery
    Connection = uConexao.Servidor
    SQL.Strings = (
      'select lancto, '
      '       valor, '
      '       historico, '
      '       data'
      'from contas_pagar')
    Left = 376
    Top = 192
    object sqlPadraoLANCTO: TIntegerField
      FieldName = 'LANCTO'
      Origin = 'LANCTO'
    end
    object sqlPadraoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object sqlPadraoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 240
    end
    object sqlPadraoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
end
