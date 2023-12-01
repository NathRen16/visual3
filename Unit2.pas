unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    abelPelanggan1: TMenuItem;
    abelSupplier1: TMenuItem;
    abelPerangkat1: TMenuItem;
    procedure abelPelanggan1Click(Sender: TObject);
    procedure abelSupplier1Click(Sender: TObject);
    procedure abelPerangkat1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm2.abelPelanggan1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.abelSupplier1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.abelPerangkat1Click(Sender: TObject);
begin
form5.showmodal;
end;

end.
