# UnityBackupGenerator

A Powershell script that copies a target folder's files and packages them up as back-ups to a destination folder

Purpose:

This script is intended for making back ups of Unity projects. The use case is to back-up large amounts of

Unity projects into a network drive for long term storage.

==========================================================================================================

How to use:

Change source and destination variable to match file directory of source folder and destination folders.

This script it designed to handle Unity project folders, tested versions are 6.0 and should work for 

anything under that version (As of June 11th 2026).

NOTE: not all versions have been tested

==========================================================================================================

Process:

When ran, this script will make a copy of all projects and files in source folder to a generated folder (name

of generated folder is {today's date}-back-up)in the destination folder. The copy is packaged with a log of 

the copy process.

The script will ignore the Library, Temp, Logs, .vs and .vscode folders as these auto generate in Unity.

==========================================================================================================

