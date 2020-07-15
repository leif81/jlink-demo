#!/bin/bash
#
# This will make a stand-alone distributable for the app with a launcher script 
# Type "./target/jlink/bin/launch.bat" to run the app.

rm -rf target/jlink

jlink --module-path target/classes/ --add-modules jlinkdemo --output target/jlink --launcher launch=jlinkdemo/ca.leif.jlinkdemo.Hello

