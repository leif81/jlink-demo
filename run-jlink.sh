#!/bin/bash

echo jlink start

jlink --module-path target/classes/ --add-modules jlinkdemo --output target/jlink --launcher launch=jlinkdemo/ca.leif.jlinkdemo.Hello

echo jlink done