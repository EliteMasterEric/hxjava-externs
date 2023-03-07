# hxjava-externs

A project containing generated externs for different Java projects.

Generated using [java-haxe-extern-creator](https://github.com/EliteMasterEric/java-haxe-extern-creator)

## Adding a Project

```bash
cd ./in
git submodule add <URL>

# Edit and run convert.bat to point to the right classpath, package, and destination folder.
# Format generated externs.
# Copy template files, find and replace TEMPLATE=library name and URL=git link to source

# Publish
haxelib submit .
```