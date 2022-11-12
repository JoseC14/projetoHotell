unit uViewAdcProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TAdcProduto = class(TForm)
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Button5: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdcProduto: TAdcProduto;

implementation

{$R *.dfm}

end.
