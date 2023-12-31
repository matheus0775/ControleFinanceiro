unit Financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids,Conexao,
  Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPagar = class(TForm)
    dbgPagar: TDBGrid;
    Panel1: TPanel;
    btnLancar: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid2: TDBGrid;
    dsPadrao: TDataSource;
    sqlPadrao: TFDQuery;
    sqlPadraoLANCTO: TIntegerField;
    sqlPadraoVALOR: TFloatField;
    sqlPadraoHISTORICO: TStringField;
    sqlPadraoDATA: TDateField;
    btnPesquisar: TButton;
    lblAno: TLabel;
    lblLancamentos: TLabel;
    Label1: TLabel;
    edtTotalDespesas: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure CalcularTotalDespesas();
  public
    { Public declarations }
  end;

var
  frmPagar: TfrmPagar;

implementation

{$R *.dfm}

procedure TfrmPagar.btnPesquisarClick(Sender: TObject);
begin
  sqlPadrao.Open(); // Abre o conjunto de dados
  self.CalcularTotalDespesas();
end;

procedure TfrmPagar.CalcularTotalDespesas;
var
  vTotalDespesas: Double;
begin
  vTotalDespesas := 0.0; // Inicializa o total como zero

  sqlPadrao.First(); // Move para o primeiro registro

  // Percorre todos os registros do dataset
  while not sqlPadrao.EOF do
  begin
    vTotalDespesas := vTotalDespesas + sqlPadrao.FieldByName('Valor').AsCurrency;
    sqlPadrao.Next(); // Move para o pr�ximo registro
  end;

  // Exibe o total no componente edtTotalDespesas
  edtTotalDespesas.Text := FormatFloat('#,##0.00', vTotalDespesas);
end;

end.
