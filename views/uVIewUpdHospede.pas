unit uViewUpdHospede;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask;

type
  TUpdHospede = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtEditHospede: TEdit;
    Label3: TLabel;
    txtCpfHospede: TMaskEdit;
    Label9: TLabel;
    txtFoneHospede: TMaskEdit;
    Label8: TLabel;
    txtCepHospede: TMaskEdit;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label10: TLabel;
    Label6: TLabel;
    txtEditProfissao: TEdit;
    Label7: TLabel;
    intEditIdade: TSpinEdit;
    Button1: TButton;
    txtEditNacionalidade: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdHospede: TUpdHospede;

implementation

{$R *.dfm}

end.
