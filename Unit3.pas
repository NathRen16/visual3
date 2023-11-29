unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm3 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    l1: TLabel;
    l4: TLabel;
    I_3: TLabel;
    e_1: TEdit;
    e_3: TEdit;
    e_2: TEdit;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    Label1: TLabel;
    e_4: TEdit;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id_pelanggan:string;

implementation

{$R *.dfm}

procedure TForm3.b1Click(Sender: TObject);
begin
b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= True;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
end;

procedure TForm3.b2Click(Sender: TObject);
begin
if e_1.Text='' then
  begin
    ShowMessage('ID PELANGGAN BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('NAMA PELANGGAN BELUM DIISI DENGAN BENAR');
    end else
    if e_3.Text=''then
    begin
     ShowMessage('ALAMAT BELUM DIISI DENGAN BENAR');
     end else
    if e_4.Text=''then
    begin
     ShowMessage('TELEPON BELUM DIISI DENGAN BENAR');
     end else

  if Form3.zqry1.Locate('id_pelanggan',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
   end else
  begin
   zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_pelanggan values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from tbl_pelanggan');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');

end;

end;

procedure TForm3.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or (e_3.Text ='')or (e_4.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[0].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tbl_pelanggan set nm_pelanggan="'+e_2.Text+'"alamat="'+e_3.Text+'"telepon="'+e_4.Text+'" where id_pelanggan="'+id_pelanggan+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_pelanggan');
zqry1.Open;
end;

end;

procedure TForm3.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_pelanggan where id_pelanggan="'+id_pelanggan+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_pelanggan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end;

end;

procedure TForm3.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.b6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TForm3.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
bersih;
b1.Enabled:=true;
b2.Enabled:=false;
b3.Enabled:=false;
b4.Enabled:=false;
b5.Enabled:=false;
b6.Enabled:=false;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
end;

procedure TForm3.posisiawal;
begin
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
id_pelanggan:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;
e_4.Text:= zqry1.Fields[3].AsString;


e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;


b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
end;

end.
