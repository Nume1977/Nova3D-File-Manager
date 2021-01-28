# Nova3D-File-Manager - V1.0.2101270 (Updated 2021-01-27)
Simple File Manager for Nova3D Printers (Only tested on ELFIN 1 with firmware version 3.5.0)

#### Known firmware bugs (v3.5.0), not related to File Manager
- Pause does not work (the printer receives the order, but will only pause when it likes!)
- Stopping a print will cause the firmware to output lighton=true (uv light on) the next time your start a new print even if the light is off!
  This will make the first layer image to fail loading on the manager, there is no solution for this on the manager side.
- If when starting a print the file parsing fails, the firmware will always output lighton=false for the entire print.
- There is a firewall/bug? on the firmware HTTP server that will block your access if there are too many requests (printer reboot needed!)
  The solution was to only download every other layer image, and limit the minimum time between requests to 5seconds.

#### Features
- Easy to use interface
- Drag & Drop support for uploading cws files (only supports 1 file at a time)
- Used space calculation
- Basic print functions
- MultiOS
- Free :)

#### Requirements
Java runtime enviroment

#### Screenshots

![preform_diagnostics_mode](https://raw.githubusercontent.com/Nume1977/Nova3D-File-Manager/master/imgs/image.png)

![preform_diagnostics_mode](https://raw.githubusercontent.com/Nume1977/Nova3D-File-Manager/master/imgs/image1.png)

![preform_diagnostics_mode](https://raw.githubusercontent.com/Nume1977/Nova3D-File-Manager/master/imgs/image2.png)

#### Download

Download Nova3D File Manager.jar, that's it!

Other files are the source code, programmed in B4J, you can also download them and make your own contributions.
