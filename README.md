This repository contains an example Java project configured to use Jlink
which bundles a minimized Java 11 runtime with the app so that the Java runtime
is not required to be installed on the OS in the traditional sense (i.e. it ignores
JAVA_HOME and instead uses the JRE that comes with the app).

Jlink includes only the parts of the JRE which the app requires. This can be a
significant savings in disk space. The full JRE is aprox 300MB, whereas the jlink'd
JRE for this demo is around 30MB.

The `run-jlink.bat` in the root of the repository is responsible for building
the runtime image which outputs to `target/jlink/`. To run the jlink'd app run
the `bin\launch.bat` in that folder.

TODO

- Demonstrate how this is used with third party dependencies (jars). In particular
ones that are not Java 9 modules. But both would be good examples.
- Demonstrate how this integrates with WiX to produce an MSI.