object Form2: TForm2
  Left = 184
  Top = 201
  Width = 928
  Height = 480
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 592
    Top = 72
    object Menu1: TMenuItem
      Caption = 'Menu'
      object abelPelanggan1: TMenuItem
        Caption = 'Tabel Pelanggan'
        OnClick = abelPelanggan1Click
      end
      object abelSupplier1: TMenuItem
        Caption = 'Tabel Supplier'
        OnClick = abelSupplier1Click
      end
    end
  end
end
