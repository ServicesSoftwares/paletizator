unit uGeraProgramaPalete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvSpin, JvDBSpinEdit, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtons, JvToolEdit, JvDBControls, Vcl.Imaging.pngimage, JvBaseDlg,
  JvSelectDirectory;

type
  TfrmGeraProgramaPalete = class(TfrmPadrao)
    qryPrograma: TFDQuery;
    qryProgramaID: TIntegerField;
    DS: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbspdCodigo: TJvDBSpinEdit;
    dbspdCodRobo: TJvDBSpinEdit;
    Label2: TLabel;
    dblkpRobo: TcxDBLookupComboBox;
    btnBuscarRobo: TcxButton;
    Label3: TLabel;
    dbdtpDataPrograma: TJvDBDateEdit;
    gpDadosPalete: TGroupBox;
    GroupBox2: TGroupBox;
    Image4: TImage;
    Label6: TLabel;
    Image7: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label4: TLabel;
    background_label_Image: TImage;
    YourID_Label: TLabel;
    background_label_Image2: TImage;
    YourPassword_Label: TLabel;
    Image1: TImage;
    Label7: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    JvDBSpinEdit2: TJvDBSpinEdit;
    JvDBSpinEdit3: TJvDBSpinEdit;
    JvDBSpinEdit4: TJvDBSpinEdit;
    JvDBSpinEdit5: TJvDBSpinEdit;
    JvDBSpinEdit6: TJvDBSpinEdit;
    qryRobo: TFDQuery;
    dsRobo: TDataSource;
    qryRoboID: TIntegerField;
    qryRoboIDEMPRESA: TIntegerField;
    qryRoboNOME: TStringField;
    qryRoboTIPO_COMUNICAO: TIntegerField;
    qryRoboHOST_IP: TStringField;
    qryRoboPORTA: TIntegerField;
    qryRoboTIMEOUT: TIntegerField;
    qryRoboAGUARDAR_PC_SENSOR: TStringField;
    qryRoboFECHAR_GARRA: TStringField;
    qryRoboABRIR_GARRA: TStringField;
    qryRoboREPOSICIONA_GARRA: TStringField;
    qryRoboFIM_PALETE: TStringField;
    qryRoboINICIO_PALETE: TStringField;
    qryRoboPONTO0_PALLETE_X: TIntegerField;
    qryRoboPONTO0_PALLETE_Y: TIntegerField;
    qryRoboPONTO0_PALLETE_Z: TIntegerField;
    qryRoboPONTO0_MAGAZINE_X: TIntegerField;
    qryRoboPONTO0_MAGAZINE_Y: TIntegerField;
    qryRoboPONTO_INTERSEG_B_X: TIntegerField;
    qryRoboPONTO_INTERSEG_B_Y: TIntegerField;
    qryRoboPONTO_INTERSEG_B_Z: TIntegerField;
    qryRoboPONTO_INTERSEG_A_X: TIntegerField;
    qryRoboPONTO_INTERSEG_A_Y: TIntegerField;
    qryRoboPONTO_INTERSEG_A_Z: TIntegerField;
    qryRoboPONTO_SEGRET_X: TIntegerField;
    qryRoboPONTO_SEGRET_Y: TIntegerField;
    qryRoboPONTO_SEGRET_Z: TIntegerField;
    qryRoboPONTO_SEGRET_CURVA_Z: TIntegerField;
    qryRoboPONTO_SUPMESA_X: TIntegerField;
    qryRoboPONTO_SUPMESA_Y: TIntegerField;
    qryRoboPONTO_SUPMESA_ESP_ENC: TIntegerField;
    qryRoboPONTO_SUPMESA_CENTROY: TIntegerField;
    qryRoboPONTO_SUPMESA_POS_BATY: TIntegerField;
    qryRoboPONTO_INFMESA_Y: TIntegerField;
    qryRoboPONTO_INFMESA_ROLETES: TIntegerField;
    qryRoboPONTO_INFMESA_LIVRE: TIntegerField;
    qryRoboALTURA_MESA_Z_ALIN: TIntegerField;
    qryRoboALTURA_MESA_Z_MESAMIN: TIntegerField;
    qryRoboALTURA_MESA_OFFSET_UP: TIntegerField;
    qryRoboALTURA_MESA_PONTO_Z: TIntegerField;
    qryRoboALTURA_MESA_CURVA_CICLO: TIntegerField;
    qryRoboOFFSET_ALTURA: TIntegerField;
    qryRoboOFFSET_APPROC: TIntegerField;
    qryRoboOFFSET_GARRA: TIntegerField;
    qryRoboZ_PALETE: TIntegerField;
    qryRoboOS_Z_RETORNO: TIntegerField;
    qryRoboVEL_PEGADA: TIntegerField;
    qryRoboVEL_SOLTURA: TIntegerField;
    qryRoboVEL_LINEAR: TIntegerField;
    qryRoboY_MESA_LIVRE: TIntegerField;
    qryRoboOS_ENCOSTO: TIntegerField;
    qryRoboZ_PEGADA: TIntegerField;
    qryRoboCURVA_PEGADA: TIntegerField;
    qryRoboPOS_BATENTE_Y: TIntegerField;
    qryRoboOFFSET_SUBIDA: TIntegerField;
    qryRoboVEL_SUBIDA: TIntegerField;
    qryRoboCURVA_AFAST: TIntegerField;
    qryRoboDATA_INCLUSAO: TSQLTimeStampField;
    qryRoboIDUSUARIO_INCLUSAO: TIntegerField;
    qryRoboDATA_ULT_ALTERACAO: TSQLTimeStampField;
    qryRoboIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    qryRoboCENTRO_ESTEIRA_Y: TIntegerField;
    SelectDirectory: TJvSelectDirectory;
    qryProgramaIDEMPRESA: TIntegerField;
    qryProgramaIDROBO: TIntegerField;
    qryProgramaDATA_PROG: TDateField;
    qryProgramaPALETE_COMPRIMENTO: TIntegerField;
    qryProgramaPALETE_LARGURA: TIntegerField;
    qryProgramaPALETE_CAMADAS: TIntegerField;
    qryProgramaCAIXA_COMPRIMENTO: TIntegerField;
    qryProgramaCAIXA_LARGURA: TIntegerField;
    qryProgramaCAIXA_ALTURA: TIntegerField;
    qryProgramaPROGRAMA: TBlobField;
    qryProgramaSITUACAO: TIntegerField;
    qryProgramaDATA_INCLUSAO: TSQLTimeStampField;
    qryProgramaIDUSUARIO_INCLUSAO: TIntegerField;
    qryProgramaDATA_ULT_ALTERACAO: TSQLTimeStampField;
    qryProgramaIDUSUARIO_ULT_ALTERACAO: TIntegerField;
    qryRoboTIPO_ROBO: TIntegerField;
    qryRoboTIPO_PALETIZACAO: TIntegerField;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure qryProgramaAfterInsert(DataSet: TDataSet);
    procedure qryProgramaAfterEdit(DataSet: TDataSet);
    procedure dblkpRoboEnter(Sender: TObject);
    procedure btnBuscarRoboClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraProgramaPalete: TfrmGeraProgramaPalete;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais, uGeraProgramaPalete_DesenharCaixas, uFormGerador;

procedure TfrmGeraProgramaPalete.btnBuscarRoboClick(Sender: TObject);
var
  R : STRING;
begin
  inherited;

  R := Consultar('Cadastro de Robôs',
                 'SELECT A.ID, A.NOME AS "Nome", CASE(A.TIPO_COMUNICAO) WHEN 0 THEN ''0 - USB'' ELSE ''1 - MODBUS'' END AS "Tipo de Comunicação" FROM TBROBO A', //SELECT
                 '', //WHERE
                 'A.NOME', //ORDER BY
                 'A.NOME; A.ID', //CAMPOS FILTROS
                 'Nome; ID', //LABEL CAMPOS FILTROS
                 'ID');

  IF(LENGTH(TRIM(R)) > 0)THEN
  BEGIN
    qryProgramaIDROBO.AsString := TRIM(R);
    dblkpRoboEnter(SELF);
  END;
end;

procedure TfrmGeraProgramaPalete.btnCancelarClick(Sender: TObject);
begin
  inherited;
  IF(DS.State IN [DSINSERT, DSEDIT])THEN
    qryPrograma.Cancel;

  qryPrograma.Close;
  qryPrograma.Params[0].AsInteger := 0;
  qryPrograma.Open;
  qryPrograma.Append;

  dbspdCodRobo.SetFocus;
end;

procedure TfrmGeraProgramaPalete.btnPesquisarClick(Sender: TObject);
var
  R, PSELECT, PWHERE : STRING;
begin
  inherited;
  PSELECT := 'SELECT A.ID AS "ID", '+
             '       B.NOME AS "Robô", '+
             '       CASE(B.TIPO_COMUNICAO) WHEN 1 THEN ''MODBUS'' ELSE ''USB'' END AS "Tipo Comunicação", '+
             '       A.DATA_PROG AS "Data do programa",'+
             '       A.PALETE_COMPRIMENTO AS "Comprimento Palete",'+
             '       A.PALETE_LARGURA AS "Largura Palete", '+
             '       A.PALETE_CAMADAS AS "Camadas", '+
             '       A.CAIXA_COMPRIMENTO AS "Comprimento da Caixa", '+
             '       A.CAIXA_LARGURA AS "Lagura da Caixa",'+
             '       A.CAIXA_ALTURA AS "Altura da Caixa" '+
             '  FROM TBPROGRAMACAO A, TBROBO B ';
  PWHERE :=  ' A.IDEMPRESA = ' + INTTOSTR(CodEmpresa) + ' AND B.ID  = A.IDROBO';


  R := Consultar('Programas',
                 PSELECT, //SELECT
                 PWHERE, //WHERE
                 'A.DATA_PROG DESC', //ORDER BY
                 'B.NOME;A.ID', //CAMPOS FILTROS
                 'Robô;ID', //LABEL CAMPOS FILTROS
                 'ID');

  IF(LENGTH(TRIM(R)) > 0)THEN
  BEGIN
    qryPrograma.Cancel;
    qryPrograma.Close;
    qryPrograma.Params[0].AsString := R;
    qryPrograma.Open;
    IF NOT(qryPrograma.IsEmpty)THEN
      qryPrograma.Edit;

    dbspdCodRobo.SetFocus;
  END;
end;

procedure TfrmGeraProgramaPalete.btnSalvarClick(Sender: TObject);
var
  SDIRETORIO, SNOMEARQ : STRING;
begin
  inherited;
  if(ds.State in [dsInsert])then
  begin
    Application.CreateForm(TfrmDesenharPalete, frmDesenharPalete);
    frmDesenharPalete.PIDROBO         := qryProgramaIDROBO.AsInteger;
    frmDesenharPalete.PLARGURACXA     := qryProgramaCAIXA_LARGURA.AsInteger;
    frmDesenharPalete.PCOMPRIMENTOCXA := qryProgramaCAIXA_COMPRIMENTO.AsInteger;
    frmDesenharPalete.PCOMPRIMENTOPLT := qryProgramaPALETE_COMPRIMENTO.AsInteger;
    frmDesenharPalete.PLARGURAPLT     := qryProgramaPALETE_LARGURA.AsInteger;
    frmDesenharPalete.PCAMADAS        := qryProgramaPALETE_CAMADAS.AsInteger;
    frmDesenharPalete.PALTURACXA      := qryProgramaCAIXA_ALTURA.AsInteger;
    frmDesenharPalete.ShowModal;
    if(frmDesenharPalete.ModalResult = mrok)then
    begin
      qryProgramaPROGRAMA.AsString := frmFormGerador.Memo2.Lines.Text;

      //SALVA O PROGRAMA
      qryPrograma.Post;

      //salvar arquivo em um local determinado pelo usuario
      SNOMEARQ := qryProgramaID.AsString + FormatDateTime('DDMMYYYY-HHMMSS',qryProgramaDATA_PROG.AsDateTime) + qryProgramaIDROBO.AsString + '.PRL';

      SelectDirectory.InitialDir := ExtractFileName(Application.ExeName);
      IF(SelectDirectory.Execute)THEN
      BEGIN
        SDIRETORIO := SelectDirectory.Directory + '\';

        frmFormGerador.Memo2.Lines.SaveToFile(SDIRETORIO + SNOMEARQ);

        Application.MessageBox('Arquivo ".PRL" gerado com sucesso.','Informação',MB_OK+MB_ICONINFORMATION);
      END;

    end;

    frmDesenharPalete.Release;
    frmDesenharPalete.Free;
  end
  else
  begin
    //SALVA O PROGRAMA
    qryPrograma.Post;


    //salvar arquivo em um local determinado pelo usuario
    SNOMEARQ := qryProgramaID.AsString + FormatDateTime('DDMMYYYY-HHMMSS',qryProgramaDATA_PROG.AsDateTime) + qryProgramaIDROBO.AsString + '.PRL';

    SelectDirectory.InitialDir := ExtractFileName(Application.ExeName);
    IF(SelectDirectory.Execute)THEN
    BEGIN
      SDIRETORIO := SelectDirectory.Directory + '\';

      frmFormGerador.Memo1.Lines.Clear;
      frmFormGerador.Memo1.Lines.Text := qryProgramaPROGRAMA.AsString;
      frmFormGerador.Memo1.Lines.SaveToFile(SDIRETORIO + SNOMEARQ);

      Application.MessageBox('Arquivo ".PRL" gerado com sucesso.','Informação',MB_OK+MB_ICONINFORMATION);
    END;
  end;


  qryPrograma.Close;
  qryPrograma.Params[0].AsInteger := 0;
  qryPrograma.Open;
  qryPrograma.Append;
end;

procedure TfrmGeraProgramaPalete.dblkpRoboEnter(Sender: TObject);
begin
  inherited;
  qryRobo.Close;
  qryRobo.Params[0].AsInteger := CodEmpresa;
  qryRobo.Open;
  qryRobo.FetchAll;
end;

procedure TfrmGeraProgramaPalete.FormShow(Sender: TObject);
begin
  inherited;
  qryPrograma.Close;
  qryPrograma.Params[0].AsInteger := 0;
  qryPrograma.Open;
  qryPrograma.Append;
end;

procedure TfrmGeraProgramaPalete.qryProgramaAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryProgramaDATA_ULT_ALTERACAO.AsDateTime     := now;
  qryProgramaIDUSUARIO_ULT_ALTERACAO.AsInteger := CodUsuario;
end;

procedure TfrmGeraProgramaPalete.qryProgramaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryProgramaIDEMPRESA.AsInteger          := CodEmpresa;
  qryProgramaDATA_PROG.AsDateTime         := now;
  qryProgramaPALETE_COMPRIMENTO.AsInteger := 2200;
  qryProgramaPALETE_LARGURA.AsInteger     := 2200;
  qryProgramaPALETE_CAMADAS.AsInteger     := 1;
  qryProgramaDATA_INCLUSAO.AsDateTime     := now;
  qryProgramaIDUSUARIO_INCLUSAO.AsInteger := CodUsuario;
  qryProgramaSITUACAO.AsInteger := 1;
end;

end.
