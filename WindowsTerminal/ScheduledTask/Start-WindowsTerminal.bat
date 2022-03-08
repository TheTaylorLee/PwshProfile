@echo off
rem NEWER VERSIONS OF TERMINAL DON'T REQUIRE THIS METHOD TO LAUNCH AS ADMIN ON STARTUP
rem This batch file allows for launching windows terminal with admin rights on login.
rem Create a scheduled task to run this batch file on login.
rem Be sure to specify this to run only for specific user
rem Use own login and configure the task to run with highest privleges
wt.exe
