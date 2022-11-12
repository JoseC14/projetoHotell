unit uVIewAdcServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TAdcServico = class(TForm)
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Button5: TButton;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdcServico: TAdcServico;

implementation

{$R *.dfm}

end.
