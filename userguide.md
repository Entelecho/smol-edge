# User Guide for smol-edge Project

## Overview

The `smol-edge` project creates a minimal Fastly Compute service. Here is a breakdown of its components:

### fastly.toml
This is the configuration file for the Fastly Compute service, specifying details like service name and ID.

### smol.wat
A WebAssembly Text (WAT) module with a minimal setup, exporting memory and a start function.

### .gitignore
Specifies files to ignore in version control, such as `package.tar.gz`.

### readme.md
Provides instructions for building and deploying the service.

### scripts/build
A build script that compiles the `smol.wat` file to WebAssembly, strips unnecessary data, packages it, and compresses it into `package.tar.gz`.

### scripts/deploy
A deploy script that uses the Fastly CLI to deploy the packaged service to Fastly Compute.

The project aims to create a very small Fastly Compute package, as indicated by the goal of building a 237B `package.tar.gz` file.
