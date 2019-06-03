# XCF sample suite


## Introduction

This repository contains a suite of files designated for use with the
XML Checker Framework (XCF), in order to check sample XML files (here:
luggage).

The following files are contained here:
- constraints
- Schematron rules
- rules config file
- example instance


## Related repositories

The actual XCF itself is contained in the [`xcf` Git repository](https://github.com/IRT-Open-Source/xcf) and
provides necessary helper files.


## Details for specific files

The files are described in more detail here.

### /constraints.xml

Contains an XML representation of all constraints that are checked.
A respective XSD exists in the [`xcf` repository](https://github.com/IRT-Open-Source/xcf).

### /rules.sch

This Schematron file contains the implementation for constraint checks.
For more convenient use it should be converted to an XSLT file using the
[Schematron XSLT contained in the `xcf` repository](https://github.com/IRT-Open-Source/xcf/xslt/schematron).

### /rules_config.xml

This XML configuration file contains further properties that are related
to the checked constraints/rules, but affect the actual usage of them.
Currently the config file specifies which specifications from the
constraints file are selected by default. Further properties may be
added in the future. The config file is intended to be used by other
applications that make use of this set of constraints/rules.

### /instance.xml
This XML file contains an actual instance of the type of files that are
intended to be checked against the present constraints/rules.
