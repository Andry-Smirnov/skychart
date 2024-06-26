unit fu_config_time;

{$MODE Delphi}{$H+}

{
Copyright (C) 2005 Patrick Chevalley

http://www.ap-i.net
pch@ap-i.net

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
}

interface

uses
  u_help, u_translation, u_constant, u_util, u_projection, cu_tz, cu_radec,
  cu_database,
  LCLIntf, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Math,
  StdCtrls, CheckLst, Buttons, ExtCtrls, enhedits, ComCtrls, LResources,
  ButtonPanel, jdcalendar, Spin, LazHelpHTML_fix, EditBtn;

const
  maxcombo = 500;

type

  { Tf_config_time }

  Tf_config_time = class(TFrame)
    AsteroidFilter: TEdit;
    AsteroidList: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SPKbox: TComboBox;
    BitBtn1: TBitBtn;
    btnAstFilter: TButton;
    btnCometFilter: TButton;
    ButtonDefGreg: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    BitBtn4: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox3: TCheckBox;
    CometFilter: TEdit;
    CometList: TComboBox;
    dt_ut: TFloatEdit;
    JDEdit: TFloatSpinEdit;
    Label12: TLabel;
    GregY: TLongEdit;
    GregM: TLongEdit;
    GregD: TLongEdit;
    Label13: TLabel;
    PanelBody: TPanel;
    PanelAst: TPanel;
    PanelCom: TPanel;
    stepmark: TCheckBox;
    CheckGroup1: TCheckGroup;
    CheckGroup2: TCheckGroup;
    ComboBox1: TComboBox;
    Label11: TLabel;
    dterr: TLabel;
    LongEdit1: TLongEdit;
    fpsedit: TLongEdit;
    nbstep: TLongEdit;
    stepsize: TLongEdit;
    TZComboBox: TComboBox;
    DirectoryEdit1: TDirectoryEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    FileNameEdit1: TFileNameEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    UpDown1: TMouseUpDown;
    UpDown2: TMouseUpDown;
    UpDown3: TMouseUpDown;
    UTLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    d_yearEdit: TLongEdit;
    Page3: TTabSheet;
    TrackBar1: TTrackBar;
    t_hour: TMouseUpDown;
    d_monthEdit: TEdit;
    d_dayEdit: TEdit;
    t_min: TMouseUpDown;
    t_hourEdit: TEdit;
    Label1: TLabel;
    tzLabel: TLabel;
    MainPanel: TPanel;
    Page1: TTabSheet;
    Page2: TTabSheet;
    Label142: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    Panel8: TPanel;
    Label135: TLabel;
    Tdt_Ut: TLabel;
    Label136: TLabel;
    Label150: TLabel;
    CheckBox4: TCheckBox;
    LongEdit2: TLongEdit;
    Panel9: TPanel;
    Label137: TLabel;
    Label139: TLabel;
    Label141: TLabel;
    Label138: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label140: TLabel;
    ADBC: TRadioGroup;
    stepreset: TSpeedButton;
    Label178: TLabel;
    Label179: TLabel;
    Label56: TLabel;
    stepunit: TRadioGroup;
    stepline: TCheckBox;
    SimObj: TCheckListBox;
    AllSim: TButton;
    NoSim: TButton;
    PageControl1: TPageControl;
    d_year: TMouseUpDown;
    d_month: TMouseUpDown;
    d_day: TMouseUpDown;
    t_sec: TMouseUpDown;
    t_minEdit: TEdit;
    t_secEdit: TEdit;
    procedure AsteroidListChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAstFilterClick(Sender: TObject);
    procedure btnCometFilterClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDefGregClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckGroup1ItemClick(Sender: TObject; Index: integer);
    procedure CheckGroup2ItemClick(Sender: TObject; Index: integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure CometListChange(Sender: TObject);
    procedure DateEditChange(Sender: TObject);
    procedure DateClick(Sender: TObject; Button: TUDBtnType);
    procedure DirectoryEdit1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FileNameEdit1AcceptFileName(Sender: TObject; var Value: string);
    procedure FileNameEdit1Change(Sender: TObject);
    procedure fpseditChange(Sender: TObject);
    procedure GregChange(Sender: TObject);
    procedure JDEditChange(Sender: TObject);
    procedure LongEdit1Change(Sender: TObject);
    procedure LongEdit2Change(Sender: TObject);
    procedure DateChange(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SimObjItemClick(Sender: TObject; Index: longint);
    procedure SPKboxChange(Sender: TObject);
    procedure stepmarkClick(Sender: TObject);
    procedure TimeChange(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure dt_utChange(Sender: TObject);
    procedure nbstepChanged(Sender: TObject);
    procedure stepsizeChanged(Sender: TObject);
    procedure stepunitClick(Sender: TObject);
    procedure stepresetClick(Sender: TObject);
    procedure steplineClick(Sender: TObject);
    procedure AllSimClick(Sender: TObject);
    procedure NoSimClick(Sender: TObject);
    procedure TimeEditChange(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TZComboBoxChange(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
    cometid: array[0..maxcombo] of string;
    astid : array[0..maxcombo] of integer;
    LockChange, LockJD: boolean;
    FApplyConfig: TNotifyEvent;
    JDCalendarDialog1: TJDCalendarDialog;
    FGetTwilight: TGetTwilight;
    procedure ShowTime;
    procedure ShowUTTime;
  public
    { Public declarations }
    cdb: Tcdcdb;
    mycsc: Tconf_skychart;
    myccat: Tconf_catalog;
    mycshr: Tconf_shared;
    mycplot: Tconf_plot;
    mycmain: Tconf_main;
    csc: Tconf_skychart;
    ccat: Tconf_catalog;
    cshr: Tconf_shared;
    cplot: Tconf_plot;
    cmain: Tconf_main;
    procedure SetLang;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Init;  // old formshow
    procedure Lock;  // old formclose
    property onGetTwilight: TGetTwilight read FGetTwilight write FGetTwilight;
    property onApplyConfig: TNotifyEvent read FApplyConfig write FApplyConfig;
  end;

implementation

{$R *.lfm}

procedure Tf_config_time.SetLang;
var
  Alabels: TDatesLabelsArray;
begin
  Caption := rsDateTime;
  Page1.Caption := rsTime;
  Label142.Caption := rsSeconds;
  CheckBox2.Caption := rsAutoRefreshE;
  Label135.Caption := rsTTUT;
  Label136.Caption := rsSeconds;
  Label150.Caption := rsDifferenceBe;
  CheckBox4.Caption := rsUseAnotherTT;
  Label137.Caption := rsTime;
  Label138.Caption := rsSHour;
  Label139.Caption := rsSMinute;
  Label141.Caption := rsSSecond;
  Label143.Caption := rsSYear;
  Label144.Caption := rsSMonth;
  Label145.Caption := rsSDay;
  Label140.Caption := rsDate;
  Label1.Caption := rsJD;
  Label11.Caption := rsTimeZone;
  Button8.Caption := rsTonight;
  BitBtn4.Caption := rsActualSystem;
  Button5.Caption := '0h';
  Button6.Caption := '0h ' + rsUT;
  CheckBox1.Caption := rsUseSystemTim + blank + '(' + rsUT + ')';
  Label12.Caption := rsGregorianCal;
  ButtonDefGreg.Caption := rsDefault;
  Page2.Caption := rsSimulation;
  stepreset.Caption := rsReset;
  Label178.Caption := rsEvery;
  Label179.Caption := rsNumberOfStep;
  Label56.Caption := rsPlotThePosit;
  stepunit.Caption := rsStepUnit;
  stepunit.items[0] := rsDay;
  stepunit.items[1] := rsHour;
  stepunit.items[2] := rsMinute;
  stepunit.items[3] := rsSecond;
  stepline.Caption := rsConnectionLi;
  stepmark.Caption := rsReplaceByTic;
  SimObj.items[0] := rsSun;
  SimObj.items[1] := rsMercury;
  SimObj.items[2] := rsVenus;
  SimObj.items[3] := rsMoon;
  SimObj.items[4] := rsMars;
  SimObj.items[5] := rsJupiter;
  SimObj.items[6] := rsSaturn;
  SimObj.items[7] := rsUranus;
  SimObj.items[8] := rsNeptune;
  SimObj.items[9] := rsPluto;
  SimObj.items[10] := rsAsteroid;
  SimObj.items[11] := rsComet;
  SimObj.items[12] := rsSPICEEphemer;
  Label13.Caption:=rsObject;
  AllSim.Caption := rsAll;
  NoSim.Caption := rsNone1;
  JDCalendarDialog1.Caption := rsJDCalendar;
  Alabels.Mon := rsMonday;
  Alabels.Tue := rsTuesday;
  Alabels.Wed := rsWednesday;
  Alabels.Thu := rsThursday;
  Alabels.Fri := rsFriday;
  Alabels.Sat := rsSaturday;
  Alabels.Sun := rsSunday;
  Alabels.jd := rsJulianDay;
  Alabels.today := rsToday;
  JDCalendarDialog1.labels := Alabels;
  RadioGroup1.Caption := rsShowLabels;
  RadioGroup1.Items[0] := rsNone1;
  RadioGroup1.Items[1] := rsOnlyTheFirst;
  RadioGroup1.Items[2] := rsOnlyTheLast;
  RadioGroup1.Items[3] := rsEveryPositio;
  RadioGroup1.Items[4] := rsOneEvery + ':';
  CheckGroup1.Caption := rsLabelText;
  CheckGroup1.Items[0] := rsObjectName;
  CheckGroup1.Items[1] := rsCurrentDate;
  CheckGroup1.Items[2] := rsMagnitude;
  CheckGroup2.Caption := rsDateFormat;
  CheckGroup2.Items[0] := rsYear;
  CheckGroup2.Items[1] := rsMonth;
  CheckGroup2.Items[2] := rsDay;
  CheckGroup2.Items[3] := rsHour;
  CheckGroup2.Items[4] := rsMinute;
  CheckGroup2.Items[5] := rsSecond;
  ADBC.Items[0] := rsAD;
  ADBC.Items[1] := rsBC;
  Button4.Caption := rsMoreOptions;
  SetHelp(self, hlpCfgDate);
  Page3.Caption := rsAnimation;
  Button9.Caption := rsDefault;
  GroupBox1.Caption := rsRealTimeOpti;
  Label2.Caption := rsDelayBetween;
  GroupBox2.Caption := rsRecordingOpt;
  CheckBox3.Caption := rsRecordAnimat;
  Label3.Caption := rsRecordingDir;
  Label4.Caption := rsRecordingPre;
  Label9.Caption := rsRecordingExt;
  Label5.Caption := rsFramesPerSec;
  Label7.Caption := rsFramesSize;
  Label6.Caption := rsAdditionalFf;
  Label10.Caption := rsFfmpegProgra;
  ComboBox1.Items[0] := rsNoChange;
  ComboBox1.Items[5] := rsFreeSize;
end;

constructor Tf_config_time.Create(AOwner: TComponent);
begin
  mycsc := Tconf_skychart.Create;
  myccat := Tconf_catalog.Create;
  mycshr := Tconf_shared.Create;
  mycplot := Tconf_plot.Create;
  mycmain := Tconf_main.Create;
  csc := mycsc;
  ccat := myccat;
  cshr := mycshr;
  cplot := mycplot;
  cmain := mycmain;
  inherited Create(AOwner);
  LockChange := True;
  JDCalendarDialog1 := TJDCalendarDialog.Create(nil);
  SetLang;
end;

destructor Tf_config_time.Destroy;
begin
  JDCalendarDialog1.Free;
  mycsc.Free;
  myccat.Free;
  mycshr.Free;
  mycplot.Free;
  mycmain.Free;
  inherited Destroy;
end;

procedure Tf_config_time.Init;
var
  i,j: integer;
  buf: string;
begin
  d_year.Height := d_yearEdit.Height;
  LockJD := False;
  LockChange := True;
  if csc.ShowPluto and (SimObj.Items[9] <> rsPluto) then
    SimObj.Items.Insert(9, rsPluto);
  if (not csc.ShowPluto) and (SimObj.Items[9] = rsPluto) then
    SimObj.Items.Delete(9);
  if not csc.ShowPluto then
    csc.SimObject[9] := False;
  ShowTime;
  if csc.SimAsteroidName<>'' then begin
    AsteroidFilter.Text:=csc.SimAsteroidName;
    btnAstFilterClick(nil);
  end;
  if csc.SimCometName<>'' then begin
    CometFilter.Text:=csc.SimCometName;
    btnCometFilterClick(nil);
  end;
  // fill body list
  SPKbox.Clear;
  j:=0;
  for i:=0 to csc.BodiesNb-1 do begin
    SPKbox.Items.Add(csc.SPKNames[i]);
    if csc.SPKBodies[i]=csc.SimBody then j:=i;
  end;
  SPKbox.ItemIndex:=j;
  // fill time zone
  TZComboBox.Clear;
  TZComboBox.ItemIndex := -1;
  TZComboBox.Sorted := True;
  for i := 0 to csc.tz.ZoneTabCnty.Count - 1 do
  begin
    buf := csc.tz.ZoneTabZone[i];
    if copy(buf, 1, 3) <> 'Etc' then
    begin
      if csc.tz.ZoneTabComment[i] > '' then
        buf := buf + ' (' + csc.tz.ZoneTabComment[i] + ')';
      TZComboBox.Items.Add(buf);
    end;
  end;
  // Put Etc time zone at the end of the list
  TZComboBox.Sorted := False;
  for i := 0 to csc.tz.ZoneTabCnty.Count - 1 do
  begin
    buf := csc.tz.ZoneTabZone[i];
    if copy(buf, 1, 3) = 'Etc' then
    begin
      if csc.tz.ZoneTabComment[i] > '' then
        buf := buf + ' (' + csc.tz.ZoneTabComment[i] + ')';
      buf := TzGMT2UTC(buf);
      TZComboBox.Items.Add(buf);
    end;
  end;
  if copy(csc.ObsTZ, 1, 3) = 'Etc' then
    TZComboBox.ItemIndex := TZComboBox.Items.IndexOf(TzGMT2UTC(csc.ObsTZ))
  else
    for i:=0 to TZComboBox.Items.Count-1 do begin
      if copy(TZComboBox.Items[i],1,length(csc.ObsTZ))=csc.ObsTZ then begin
        TZComboBox.ItemIndex := i;
        break;
      end;
    end;
  Application.ProcessMessages;
  LockChange := False;
end;

procedure Tf_config_time.ShowUTTime;
var
  y, m, d: integer;
  h, err: double;
  s: string;
begin
  djd(TruncDecimal(JDEdit.Value,6), y, m, d, h);
  UTlabel.Caption := date2str(y, m, d) + blank + timtostr(h) + blank + rsUT;
  h := csc.tz.SecondsOffset / 3600;
  if h = 0 then
    s := ''
  else if h > 0 then
    s := '+'
  else
    s := '-';
  tzlabel.Caption := TzGMT2UTC(csc.tz.ZoneName) + blank + '(' + rsUT + s + timtostr(abs(h)) + ')';
  err := DTminusUTError(y, m, d, csc);
  if abs(err) > 0 then
  begin
    dterr.Caption := rsDeltaTError + ': ' + plusminus + trim(ARtoStr(err / 3600));
    dterr.Visible := True;
  end
  else
  begin
    dterr.Visible := False;
  end;
end;

procedure Tf_config_time.ShowTime;
var
  h, n, s: string;
  y, m, d, i, j, gr: integer;
begin
  if not lockJD then
    JDEdit.Value := Jd(csc.curyear, csc.curmonth, csc.curday, csc.curtime - csc.timezone);
  y := csc.curyear;
  m := csc.curmonth;
  d := csc.curday;
  checkbox1.Checked := csc.UseSystemTime;
  checkbox2.Checked := csc.AutoRefresh;
  longedit2.Value := cmain.AutoRefreshDelay;
  CheckBox2.Enabled := checkbox1.Checked;
  LongEdit2.Enabled := checkbox1.Checked;
  label142.Enabled := checkbox1.Checked;
  if y > 0 then
  begin
    d_yearEdit.Value := y;
    adbc.ItemIndex := 0;
  end
  else
  begin
    d_yearEdit.Value := 1 - y;
    adbc.ItemIndex := 1;
  end;
  d_month.Position := m;
  d_day.Position := d;
  artostr2(csc.curtime, h, n, s);
  t_hour.Position := StrToInt(h);
  t_min.Position := StrToInt(n);
  t_sec.Position := StrToInt(s);
  Tdt_Ut.Caption := formatfloat(f4, (csc.DT_UT * 3600));
  checkbox4.Checked := csc.Force_DT_UT;
  if not csc.Force_DT_UT then
    csc.DT_UT_val := csc.DT_UT;
  dt_ut.Value := csc.DT_UT_val * 3600;
  gr := GregorianStart;
  GregD.Value := round(frac(gr / 100) * 100);
  gr := trunc(gr / 100);
  GregM.Value := round(frac(gr / 100) * 100);
  gr := trunc(gr / 100);
  GregY.Value := gr;
  nbstep.Value := csc.Simnb;
  if csc.SimD <> 0 then
  begin
    stepsize.Value := csc.SimD;
    stepunit.ItemIndex := 0;
  end;
  if csc.SimH <> 0 then
  begin
    stepsize.Value := csc.SimH;
    stepunit.ItemIndex := 1;
  end;
  if csc.SimM <> 0 then
  begin
    stepsize.Value := csc.SimM;
    stepunit.ItemIndex := 2;
  end;
  if csc.SimS <> 0 then
  begin
    stepsize.Value := csc.SimS;
    stepunit.ItemIndex := 3;
  end;
  stepline.Checked := csc.SimLine;
  stepmark.Checked := csc.SimMark;
  stepmark.Enabled := csc.SimLine;
  for i := 0 to SimObj.Items.Count - 1 do
  begin
    case i of
      0: j := 10;   // sun
      3: j := 11;   // moon
      9: if csc.ShowPluto then
          j := 9
        else
          j := 12; // pluto / asteroid
      10: if csc.ShowPluto then
          j := 12
        else
          j := 13;   // asteroid / comet
      11: if csc.ShowPluto then
          j := 13
        else
          j := 14;   // comet / spk
      12: j := 14;   // spk
      else
        j := i;
    end;
    SimObj.Checked[i] := csc.SimObject[j];
  end;
  if csc.SimObject[12] or csc.SimObject[13] or csc.SimObject[14] then
  begin
    nbstep.MaxValue := 100;
    UpDown1.Max := 100;
    nbstepChanged(nil);
  end
  else
  begin
    nbstep.MaxValue := 500;
    UpDown1.Max := 500;
  end;
  panelast.Visible:=csc.SimObject[12];
  panelcom.Visible:=csc.SimObject[13];
  PanelBody.Visible:=csc.SimObject[14];
  if csc.SimLabel >= 0 then
  begin
    if csc.SimLabel > 3 then
      csc.SimLabel := 3;
    RadioGroup1.ItemIndex := csc.SimLabel;
    LongEdit1.Enabled := False;
  end
  else
  begin
    RadioGroup1.ItemIndex := 4;
    LongEdit1.Value := abs(csc.SimLabel);
    LongEdit1.Enabled := True;
  end;
  CheckGroup1.Checked[0] := csc.SimNameLabel;
  CheckGroup1.Checked[1] := csc.SimDateLabel;
  CheckGroup2.Checked[0] := csc.SimDateYear;
  CheckGroup2.Checked[1] := csc.SimDateMonth;
  CheckGroup2.Checked[2] := csc.SimDateDay;
  CheckGroup2.Checked[3] := csc.SimDateHour;
  CheckGroup2.Checked[4] := csc.SimDateMinute;
  CheckGroup2.Checked[5] := csc.SimDateSecond;
  TrackBar1.Position := cmain.AnimDelay;
  CheckBox3.Checked := cmain.AnimRec;
  DirectoryEdit1.Directory := cmain.AnimRecDir;
  Edit1.Text := cmain.AnimRecPrefix;
  Edit5.Text := cmain.AnimRecExt;
  fpsedit.Value := round(cmain.AnimFps);
  edit3.Text := IntToStr(cmain.AnimSx);
  edit4.Text := IntToStr(cmain.AnimSy);
  ComboBox1.ItemIndex := cmain.AnimSize;
  ComboBox1Change(nil);
  edit2.Text := cmain.AnimOpt;
  FileNameEdit1.FileName := cmain.Animffmpeg;
  ShowUTTime;
end;

procedure Tf_config_time.CheckBox1Click(Sender: TObject);
begin
  d_year.Enabled := not checkbox1.Checked;
  d_yearEdit.Enabled := d_year.Enabled;
  d_month.Enabled := d_year.Enabled;
  d_monthEdit.Enabled := d_year.Enabled;
  d_day.Enabled := d_year.Enabled;
  d_dayEdit.Enabled := d_year.Enabled;
  ADBC.Enabled := d_year.Enabled;
  t_hour.Enabled := d_year.Enabled;
  t_hourEdit.Enabled := d_year.Enabled;
  t_min.Enabled := d_year.Enabled;
  t_minEdit.Enabled := d_year.Enabled;
  t_sec.Enabled := d_year.Enabled;
  t_secEdit.Enabled := d_year.Enabled;
  bitbtn4.Enabled := d_year.Enabled;
  JDedit.Enabled := d_year.Enabled;
  BitBtn1.Enabled := d_year.Enabled;
  Button5.Enabled := d_year.Enabled;
  Button6.Enabled := d_year.Enabled;
  Button8.Enabled := d_year.Enabled;
  if LockChange then
    exit;
  try
    LockChange := True;
    csc.UseSystemTime := checkbox1.Checked;
    SetCurrentTime(csc);
    csc.DT_UT := DTminusUT(csc.CurYear, csc.CurMonth, csc.CurDay, csc);
    ShowTime;
    Application.ProcessMessages;
  finally
    LockChange := False;
  end;
end;

procedure Tf_config_time.Button4Click(Sender: TObject);
begin
  panel8.Visible := not panel8.Visible;
end;

procedure Tf_config_time.BitBtn1Click(Sender: TObject);
begin
  JDCalendarDialog1.JD := TruncDecimal(JDEdit.Value,6);
  if JDCalendarDialog1.Execute then
  begin
    JDEdit.Value := JDCalendarDialog1.JD + csc.CurTime / 24 - csc.timezone / 24;
   {$ifdef darwin}
    JDEditChange(Sender);
   {$endif}
  end;
end;

procedure Tf_config_time.JDEditChange(Sender: TObject);
var newjd: double;
begin
  if LockChange or LockJD then
    exit;
  try
    LockChange := True;
    LockJD := True;
    newjd := TruncDecimal(JDEdit.Value,6);
    csc.tz.JD := newjd;
    csc.TimeZone := csc.tz.SecondsOffset / 3600;
    Djd(newjd + csc.timezone / 24, csc.curyear, csc.curmonth, csc.curday, csc.CurTime);
    ShowTime;
    ShowUTTime;
    Application.ProcessMessages;
  finally
    LockChange := False;
    LockJD := False;
  end;
end;

procedure Tf_config_time.CheckBox2Click(Sender: TObject);
begin
  csc.AutoRefresh := checkbox2.Checked;
end;

procedure Tf_config_time.CheckBox3Change(Sender: TObject);
begin
  cmain.AnimRec := CheckBox3.Checked;
end;

procedure Tf_config_time.CheckGroup1ItemClick(Sender: TObject; Index: integer);
begin
  if (not CheckGroup1.Checked[0]) and (not CheckGroup1.Checked[1]) and
    (not CheckGroup1.Checked[2]) then
    CheckGroup1.Checked[abs(Index - 1)] := True;
  csc.SimNameLabel := CheckGroup1.Checked[0];
  csc.SimDateLabel := CheckGroup1.Checked[1];
  csc.SimMagLabel := CheckGroup1.Checked[2];
end;

procedure Tf_config_time.CheckGroup2ItemClick(Sender: TObject; Index: integer);
begin
  csc.SimDateYear := CheckGroup2.Checked[0];
  csc.SimDateMonth := CheckGroup2.Checked[1];
  csc.SimDateDay := CheckGroup2.Checked[2];
  csc.SimDateHour := CheckGroup2.Checked[3];
  csc.SimDateMinute := CheckGroup2.Checked[4];
  csc.SimDateSecond := CheckGroup2.Checked[5];
end;

procedure Tf_config_time.ComboBox1Change(Sender: TObject);
begin
  cmain.AnimSize := ComboBox1.ItemIndex;
  if ComboBox1.ItemIndex = 5 then
  begin
    edit3.Enabled := True;
    edit4.Enabled := True;
  end
  else
  begin
    edit3.Enabled := False;
    edit4.Enabled := False;
  end;
  case ComboBox1.ItemIndex of
    0:
    begin
      edit3.Text := '-1';
      edit4.Text := '-1';
    end;
    1:
    begin
      edit3.Text := '640';
      edit4.Text := '480';
    end;
    2:
    begin
      edit3.Text := '852';
      edit4.Text := '480';
    end;
    3:
    begin
      edit3.Text := '1280';
      edit4.Text := '720';
    end;
    4:
    begin
      edit3.Text := '1920';
      edit4.Text := '1080';
    end;
  end;
end;

procedure Tf_config_time.Lock;
begin
  LockChange := True;
end;


procedure Tf_config_time.LongEdit2Change(Sender: TObject);
begin
  if LockChange then
    exit;
  cmain.AutoRefreshDelay := longedit2.Value;
end;

procedure Tf_config_time.DirectoryEdit1Change(Sender: TObject);
begin
  cmain.AnimRecDir := DirectoryEdit1.Directory;
end;

procedure Tf_config_time.Edit1Change(Sender: TObject);
begin
  cmain.AnimRecPrefix := Edit1.Text;
end;

procedure Tf_config_time.Edit2Change(Sender: TObject);
begin
  cmain.AnimOpt := edit2.Text;
end;

procedure Tf_config_time.Edit3Change(Sender: TObject);
var
  i, n: integer;
begin
  val(edit3.Text, i, n);
  if n = 0 then
    cmain.AnimSx := i;
end;

procedure Tf_config_time.Edit4Change(Sender: TObject);
var
  i, n: integer;
begin
  val(edit4.Text, i, n);
  if n = 0 then
    cmain.AnimSy := i;
end;

procedure Tf_config_time.Edit5Change(Sender: TObject);
begin
  cmain.AnimRecExt := edit5.Text;
  if copy(cmain.AnimRecExt, 1, 1) <> '.' then
    cmain.AnimRecExt := '.' + cmain.AnimRecExt;
end;

procedure Tf_config_time.FileNameEdit1AcceptFileName(Sender: TObject;
  var Value: string);
begin
  cmain.Animffmpeg := Value;
end;

procedure Tf_config_time.FileNameEdit1Change(Sender: TObject);
begin
  cmain.Animffmpeg := FileNameEdit1.FileName;
end;

procedure Tf_config_time.fpseditChange(Sender: TObject);
begin
  cmain.AnimFps := fpsedit.Value;
end;

procedure Tf_config_time.GregChange(Sender: TObject);
begin
  GregorianStart := GregY.Value * 10000 + GregM.Value * 100 + GregD.Value;
  GregorianStartJD := round(Jd(GregY.Value, GregM.Value, GregD.Value, 6));
end;

procedure Tf_config_time.DateChange(Sender: TObject);
begin
{$ifdef darwin}
  DateEditChange(Sender);
{$endif}
end;

procedure Tf_config_time.PageControl1Changing(Sender: TObject;
  var AllowChange: boolean);
begin
  if parent is TForm then
    TForm(Parent).ActiveControl := PageControl1;
end;

procedure Tf_config_time.DateClick(Sender: TObject; Button: TUDBtnType);
begin
  // this trick because TUpDown position is limited to smallint but year need to go to 200000
  case button of
    btNext: if d_yearEdit.Value < d_yearEdit.MaxValue then
        d_yearEdit.Value := d_yearEdit.Value + 1;
    btPrev: if d_yearEdit.Value > d_yearEdit.MinValue then
        d_yearEdit.Value := d_yearEdit.Value - 1;
  end;
end;

procedure Tf_config_time.DateEditChange(Sender: TObject);
var jd1,h: double;
    y,m,d,d1,d2: integer;
begin
  if LockChange then
    exit;
  try
    LockChange := True;
    if d_yearEdit.Value=GregY.Value then begin
      // check for invalid date in Gregorian calendar
      d1:=d_yearEdit.Value * 10000 + d_month.Position * 100 + d_day.Position;
      jd1:=jd(d_yearEdit.Value,d_month.Position,d_day.Position,12);
      djd(jd1,y,m,d,h);
      d2:=y * 10000 + m * 100 + d;
      if d1<>d2 then begin
        LockChange:=true;
        if d2<=GregorianStart then
          djd(GregorianStartJD,y,m,d,h)
        else
          djd(GregorianStartJD-1,y,m,d,h);
        d_yearEdit.Value:=y;
        d_month.Position:=m;
        d_day.Position:=d;
        LockChange:=false;
      end;
    end;
    if adbc.ItemIndex = 0 then
      csc.curyear := d_yearEdit.Value
    else
      csc.curyear := 1 - d_yearEdit.Value;
    csc.curmonth := d_month.Position;
    d_day.max := MonthDays[leapYear(csc.curyear), csc.curmonth];
    csc.curday := d_day.Position;
    csc.tz.JD := Jd(csc.curyear, csc.curmonth, csc.curday, csc.curtime - csc.timezone);
    csc.TimeZone := csc.tz.SecondsOffset / 3600;
    csc.DT_UT := DTminusUT(csc.CurYear, csc.CurMonth, csc.CurDay, csc);
    Tdt_Ut.Caption := formatfloat(f4, (csc.DT_UT * 3600));
    dt_ut.Text := Tdt_Ut.Caption;
    JDEdit.Value := Jd(csc.curyear, csc.curmonth, csc.curday, csc.curtime - csc.timezone);
    ShowUTTime;
    Application.ProcessMessages;
  finally
    LockChange := False;
  end;
end;

procedure Tf_config_time.TimeEditChange(Sender: TObject);
begin
  if LockChange then
    exit;
  try
    LockChange := True;
    csc.curtime := t_hour.Position + t_min.Position / 60 + t_sec.Position / 3600;
    csc.tz.JD := jd(csc.curyear, csc.curmonth, csc.curday, csc.curtime - csc.timezone);
    csc.TimeZone := csc.tz.SecondsOffset / 3600;
    JDEdit.Value := Jd(csc.curyear, csc.curmonth, csc.curday, csc.curtime - csc.timezone);
    ShowUTTime;
    Application.ProcessMessages;
  finally
    LockChange := False;
  end;
end;

procedure Tf_config_time.TrackBar1Change(Sender: TObject);
begin
  cmain.AnimDelay := TrackBar1.Position;
end;

procedure Tf_config_time.TZComboBoxChange(Sender: TObject);
var
  buf: string;
  i: integer;
begin
  buf := trim(TZComboBox.Text);
  if buf = '' then
    exit;
  i := pos(' ', buf);
  if i > 0 then
    buf := Copy(buf, 1, i - 1);
  if copy(buf, 1, 3) = 'UTC' then
    buf := TzUTC2GMT(buf);
  csc.ObsTZ := buf;
  if copy(buf, 1, 3) = 'Etc' then
    csc.countrytz := False
  else
    csc.countrytz := True;
  csc.tz.TimeZoneFile := ZoneDir + StringReplace(buf, '/', PathDelim, [rfReplaceAll]);
  csc.timezone := csc.tz.SecondsOffset / 3600;
  CheckBox1Click(Sender);
end;

procedure Tf_config_time.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
{$ifdef darwin}
  nbstepChanged(Sender);
{$endif}
end;

procedure Tf_config_time.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
if UpDown2.Position=0 then
  case Button of
    btNext : UpDown2.Position := 1;
    btPrev : UpDown2.Position := -1;
  end;
{$ifdef darwin}
  stepsizeChanged(Sender);
{$endif}
end;

procedure Tf_config_time.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
{$ifdef darwin}
  fpseditChange(Sender);
{$endif}
end;

procedure Tf_config_time.TimeChange(Sender: TObject; Button: TUDBtnType);
begin
{$ifdef darwin}
  TimeEditChange(Sender);
{$endif}
end;

procedure Tf_config_time.RadioGroup1Click(Sender: TObject);
begin
  if LockChange then
    exit;
  if RadioGroup1.ItemIndex < 4 then
  begin
    csc.SimLabel := RadioGroup1.ItemIndex;
    LongEdit1.Enabled := False;
  end
  else
  begin
    csc.SimLabel := -LongEdit1.Value;
    LongEdit1.Enabled := True;
  end;
end;

procedure Tf_config_time.LongEdit1Change(Sender: TObject);
begin
  if LockChange then
    exit;
  csc.SimLabel := -LongEdit1.Value;
end;

procedure Tf_config_time.BitBtn4Click(Sender: TObject);
var
  y, m, d, h, n, s, ms: word;
begin
  ADBC.ItemIndex := 0;
  decodedate(csc.tz.NowLocalTime, y, m, d);
  d_yearEdit.Value := y;
  d_month.Position := m;
  d_day.Position := d;
  decodeTime(csc.tz.NowLocalTime, h, n, s, ms);
  t_hour.Position := h;
  t_min.Position := n;
  t_sec.Position := s;
  DateEditChange(Sender);
  TimeEditChange(Sender);
end;

procedure Tf_config_time.Button5Click(Sender: TObject);
var
  y, m, d : integer;
  h, n, s, ms: word;
  hh:double;
begin
  csc.tz.JD := Jd(csc.curyear, csc.curmonth, csc.curday, 0);
  djd(csc.tz.JD,y,m,d,hh);
  if y > 0 then
  begin
    d_yearEdit.Value := y;
    adbc.ItemIndex := 0;
  end
  else
  begin
    d_yearEdit.Value := 1 - y;
    adbc.ItemIndex := 1;
  end;
  d_month.Position := m;
  d_day.Position := d;
  decodeTime(hh/24, h, n, s, ms);
  t_hour.Position := h;
  t_min.Position := n;
  t_sec.Position := s;
  DateEditChange(Sender);
  TimeEditChange(Sender);
end;

procedure Tf_config_time.Button6Click(Sender: TObject);
var
  y, m, d : integer;
  h, n, s, ms: word;
  hh:double;
  day: integer;
begin
  LockChange := True;
  try
    if csc.timezone > 0 then
      day := csc.curday
    else
      day := csc.curday + 1;
    csc.tz.JD := Jd(csc.curyear, csc.curmonth, day, csc.timezone);
    djd(csc.tz.JD,y,m,d,hh);
    if y > 0 then
    begin
      d_yearEdit.Value := y;
      adbc.ItemIndex := 0;
    end
    else
    begin
      d_yearEdit.Value := 1 - y;
      adbc.ItemIndex := 1;
    end;
    d_month.Position := m;
    d_day.Position := d;
    decodeTime(hh/24, h, n, s, ms);
    t_hour.Position := h;
    t_min.Position := n;
    t_sec.Position := s;
  finally
    LockChange := False;
  end;
  DateEditChange(Sender);
  TimeEditChange(Sender);
end;

procedure Tf_config_time.Button8Click(Sender: TObject);
var
  ht: double;
  h, n, s: string;
  y, m, d: word;
begin
  if assigned(FGetTwilight) then
  begin
    ADBC.ItemIndex := 0;
    decodedate(csc.tz.NowLocalTime, y, m, d);
    d_yearEdit.Value := y;
    d_month.Position := m;
    d_day.Position := d;
    FGetTwilight(jd(y, m, d, 0), ht);
    if abs(ht) < 90 then
    begin
      artostr2(ht, h, n, s);
      t_hour.Position := StrToInt(h);
      t_min.Position := StrToInt(n);
      t_sec.Position := StrToInt(s);
    end
    else
      ShowMessage(rsNoAstronomic);
  end;
end;

procedure Tf_config_time.Button9Click(Sender: TObject);
begin
  CheckBox3.Checked := False;
  DirectoryEdit1.Directory := HomeDir;
  Edit1.Text := 'skychart';
  Edit5.Text := '.avi';
  fpsedit.Value := 10;
  ComboBox1.ItemIndex := 0;
  Edit2.Text := DefaultffmpegOptions;
end;

procedure Tf_config_time.ButtonDefGregClick(Sender: TObject);
begin
  GregorianStart := DefaultGregorianStart;
  GregorianStartJD := DefaultGregorianStartJD;
  ShowTime;
end;

procedure Tf_config_time.CheckBox4Click(Sender: TObject);
begin
  csc.Force_DT_UT := checkbox4.Checked;
  dt_ut.Enabled := csc.Force_DT_UT;
  csc.DT_UT := DTminusUT(csc.CurYear, csc.CurMonth, csc.CurDay, csc);
  Tdt_Ut.Caption := formatfloat(f4, (csc.DT_UT * 3600));
  dt_ut.Text := Tdt_Ut.Caption;
end;

procedure Tf_config_time.dt_utChange(Sender: TObject);
begin
  if LockChange then
    exit;
  csc.DT_UT_val := dt_ut.Value / 3600;
  csc.DT_UT := csc.DT_UT_val;
  Tdt_ut.Caption := dt_ut.Text;
end;

procedure Tf_config_time.btnAstFilterClick(Sender: TObject);
var
  list: TStringList;
begin
  list := TStringList.Create;
  list.Add(rsAll);
  try
    Cdb.GetAsteroidList(AsteroidFilter.Text,maxcombo,list,astid);
    AsteroidList.Items.Assign(list);
    if list.Count>1 then
      AsteroidList.ItemIndex:=1
    else
      AsteroidList.ItemIndex:=0;
    AsteroidListChange(nil);
  finally
    List.Free
  end;
end;

procedure Tf_config_time.btnCometFilterClick(Sender: TObject);
var
  list: TStringList;
begin
  list := TStringList.Create;
  list.Add(rsAll);
  try
    Cdb.GetCometList(CometFilter.Text,maxcombo,list,cometid);
    CometList.Items.Assign(list);
    if list.Count>1 then
      CometList.ItemIndex:=1
    else
      CometList.ItemIndex:=0;
    CometListChange(nil);
  finally
    list.Free;
  end;
end;

procedure Tf_config_time.AsteroidListChange(Sender: TObject);
begin
  if AsteroidList.ItemIndex<=0 then begin
    csc.SimAsteroid:=-1;
    csc.SimAsteroidName:='';
  end
  else begin
    csc.SimAsteroid:=astid[AsteroidList.ItemIndex-1];
    csc.SimAsteroidName:=AsteroidList.Text;
  end;
end;

procedure Tf_config_time.CometListChange(Sender: TObject);
begin
  if CometList.ItemIndex<=0 then begin
    csc.SimComet:='';
    csc.SimCometName:='';
  end
  else begin
    csc.SimComet:=cometid[CometList.ItemIndex-1];
    csc.SimCometName:=CometList.Text;
  end;
end;

procedure Tf_config_time.SPKboxChange(Sender: TObject);
begin
  if SPKbox.ItemIndex<=0 then begin
    csc.SimBody:=-1;
  end
  else begin
    csc.SimBody:=csc.SPKBodies[SPKbox.ItemIndex];
  end;
end;

procedure Tf_config_time.SimObjItemClick(Sender: TObject; Index: longint);
var
  j: integer;
  simok: boolean;
begin
  case index of
    0: j := 10;   // sun
    3: j := 11;   // moon
    9: if csc.ShowPluto then
        j := 9
      else
        j := 12; // pluto / asteroid
    10: if csc.ShowPluto then
        j := 12
      else
        j := 13;   // asteroid / comet
    11: if csc.ShowPluto then
        j := 13
      else
        j := 14;   // comet ( spk
    12: j := 14;   // spk
    else
      j := index;
  end;
  csc.SimObject[j] := SimObj.Checked[index];
  panelast.Visible:=csc.SimObject[12];
  if not csc.SimObject[12] then begin
    AsteroidList.Clear;
    AsteroidListChange(nil);
  end;
  panelcom.Visible:=csc.SimObject[13];
  if not csc.SimObject[13] then begin
    CometList.Clear;
    CometListChange(nil);
  end;
  PanelBody.Visible:=csc.SimObject[14];
  if not csc.SimObject[14] then begin
    csc.SimBody:=-1;
  end;
  if csc.SimObject[12] or csc.SimObject[13] or csc.SimObject[14] then
  begin
    nbstep.MaxValue := MaxAstSim;
    UpDown1.Max := MaxAstSim;
    nbstepChanged(Sender);
  end
  else
  begin
    nbstep.MaxValue := MaxPlSim;
    UpDown1.Max := MaxPlSim;
  end;
  simok:=false;
  for j:=0 to SimObj.Count-1 do
    simok := simok or SimObj.Checked[j];
  if not simok then stepreset.Click;
end;


procedure Tf_config_time.AllSimClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to SimObj.Items.Count - 1 do
  begin
    SimObj.Checked[i] := True;
  end;
  for i := 0 to SimObj.Items.Count - 1 do
    SimObjItemClick(Sender, i);
end;

procedure Tf_config_time.NoSimClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to SimObj.Items.Count - 1 do
  begin
    SimObj.Checked[i] := False;
  end;
  for i := 0 to SimObj.Items.Count - 1 do
    SimObjItemClick(Sender, i);
end;

procedure Tf_config_time.stepunitClick(Sender: TObject);
begin
  case stepunit.ItemIndex of
    0:
    begin
      csc.SimD := stepsize.Value;
      csc.SimH := 0;
      csc.SimM := 0;
      csc.SimS := 0;
    end;
    1:
    begin
      csc.SimH := stepsize.Value;
      csc.SimD := 0;
      csc.SimM := 0;
      csc.SimS := 0;
    end;
    2:
    begin
      csc.SimM := stepsize.Value;
      csc.SimD := 0;
      csc.SimH := 0;
      csc.SimS := 0;
    end;
    3:
    begin
      csc.SimS := stepsize.Value;
      csc.SimD := 0;
      csc.SimH := 0;
      csc.SimM := 0;
    end;
  end;
end;

procedure Tf_config_time.steplineClick(Sender: TObject);
begin
  csc.SimLine := stepline.Checked;
  stepmark.Enabled := csc.SimLine;
end;

procedure Tf_config_time.stepmarkClick(Sender: TObject);
begin
  csc.SimMark := stepmark.Checked;
end;

procedure Tf_config_time.stepresetClick(Sender: TObject);
begin
  nbstep.Value := 1;
  nbstepChanged(Sender);
  stepsize.Value := 1;
  stepunit.ItemIndex := 0;
  stepunitClick(Sender);
  AsteroidList.Clear;
  CometList.Clear;
  AsteroidListChange(nil);
  CometListChange(nil);
end;

procedure Tf_config_time.nbstepChanged(Sender: TObject);
begin
  if LockChange then
    exit;
  csc.Simnb := nbstep.Value;
  if csc.SimObject[12] then
  begin
    csc.Simnb := min(csc.Simnb, MaxAstSim);
    Setlength(csc.AsteroidLst, csc.Simnb);
    SetLength(csc.AsteroidName, csc.SimNb);
  end
  else
  begin
    Setlength(csc.AsteroidLst, 1);
    SetLength(csc.AsteroidName, 1);
  end;
  if csc.SimObject[13] then
  begin
    csc.Simnb := min(csc.Simnb, MaxAstSim);
    SetLength(csc.CometLst, csc.SimNb);
    SetLength(csc.CometName, csc.SimNb);
  end
  else
  begin
    SetLength(csc.CometLst, csc.SimNb);
    SetLength(csc.CometName, csc.SimNb);
  end;
  if csc.SimObject[14] then
  begin
    csc.Simnb := min(csc.Simnb, MaxAstSim);
    Setlength(csc.BodiesLst, csc.Simnb);
    SetLength(csc.BodiesName, csc.SimNb);
  end
  else
  begin
    Setlength(csc.BodiesLst, 1);
    SetLength(csc.BodiesName, 1);
  end;
end;

procedure Tf_config_time.stepsizeChanged(Sender: TObject);
begin
  if LockChange then
    exit;
  stepunitClick(Sender);
end;

end.
