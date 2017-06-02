# romclean
## For Windows 
A tool to clean up GoodRoms directories for RetroPie!

-----

***Usage:***

1.  Clone the repository
2.  Extract the tarball
3.  Copy the path where your originals are stored to your Clipboard
4.  Run the tool, paste your pathname.

------

***Capabilities:***

    - The tool converts Windows UTF-8 encoded filenames to ASCII, thereby removing diatonics (by conversion to their closest 
      alphanumeric character).
      
    - The tool strips filename characters which could conflict with ROM scrapers or other tools which transfer roms inline
      (SSH, FTP, etc.)
      
    - The tool region-blacklists a ROM directory to your preference.  (LIMITED*, see below)
    
    - The tool gets rid of interlaced and headered duplicate ROMs, designed to maximize the space available to your RetroPie.

-----

***LIMITS:***

    - The regions are umbrella presets of the major continental areas.  If you would like params or further scripting
      capabilities for specific region blacklisting, send a REQUEST*.

-----

***NOTES:***

   You need Microsoft Powershell >1.0 to use this tool.

-----

***CHANGELOG:***

     1.0.0:
         First release.  Tool works.  (Aaaah hope!~)
         
------

***REQUESTS AND REPORTS***:

Please contact me with bug reports or feture requests at:

loopyd@lupinedream.com

or on Discord as:

LupineDream

-----
