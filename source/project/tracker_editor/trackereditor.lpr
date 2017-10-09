program trackereditor;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, bencode, decodetorrent, controlergridtorrentdata, 
controler_trackerlist_online, trackerlist_online;

{$R *.res}

begin
//  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TFormTrackerModify, FormTrackerModify);
  Application.Run;
end.

