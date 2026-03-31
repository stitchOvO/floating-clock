#!/usr/bin/env sh

set -e

# This script is used to invoke the Gradle wrapper.
# It is copied from the Gradle distribution and modified to work with this project.

APP_BASE_NAME=$(basename "$0")
APP_HOME=$(cd "$(dirname "$0")" && pwd)

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"

# Find java.exe
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/bin/java.exe" ] ; then
        JAVA_EXE="$JAVA_HOME/bin/java.exe"
    else
        JAVA_EXE="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVA_EXE" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
        echo "Please set the JAVA_HOME variable in your environment to match the"
        echo "location of your Java installation."
        exit 1
    fi
else
    JAVA_EXE="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
        echo "Please set the JAVA_HOME variable in your environment to match the"
        echo "location of your Java installation."
        exit 1
    }
fi

# Collect all arguments
GRADLE_OPTS="$GRADLE_OPTS" "-Dorg.gradle.appname=$APP_BASE_NAME"

# Execute Gradle
"$JAVA_EXE" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS "-classpath" "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"