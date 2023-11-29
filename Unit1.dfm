object Form1: TForm1
  Left = 299
  Top = 174
  Width = 928
  Height = 480
  Caption = 'Tabel Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClick = Button1Click
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 368
    Top = 14
    Width = 123
    Height = 42
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 88
    Width = 231
    Height = 26
    Caption = 'Masukkan Username :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 112
    Top = 152
    Width = 226
    Height = 26
    Caption = 'Masukkan Password :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object e_1: TEdit
    Left = 352
    Top = 96
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 352
    Top = 160
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 312
    Top = 224
    Width = 105
    Height = 41
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object zqry: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 40
    Top = 32
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 40
    Top = 104
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_elektro'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\rendy\kuliah\semester 5\visual 3\elektro\libmysql.dll'
    Left = 40
    Top = 176
  end
end
