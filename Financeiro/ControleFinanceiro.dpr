program ControleFinanceiro;

uses
  Vcl.Forms,
  Financeiro in 'Financeiro.pas' {frmPagar},
  Conexao in 'Conexao.pas' {uConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPagar, frmPagar);
  Application.CreateForm(TuConexao, uConexao);
  Application.Run;
end.
