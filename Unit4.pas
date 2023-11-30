unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    l1: TLabel;
    l4: TLabel;
    I_3: TLabel;
    Label1: TLabel;
    e_1: TEdit;
    e_3: TEdit;
    e_2: TEdit;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e_4: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    zqry1: TZQuery;
    con1: TZConnection;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
