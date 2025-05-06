<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="SimConnect" Source="Interface.SimConnect.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Automatic" Source="Automatic.Automatic.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MainProgra" Source="MainModules.MainProgram.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Program2" Source="OptionalModules.Program.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Auxillary" Source="Auxillary.Auxillary.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
</SwConfiguration>