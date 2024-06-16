# Define compiler and flags
CC = clang
CFLAGS = -framework Cocoa

# Define source files
SOURCES = example1.m ../../Utilities/*/*.m

# Define output executable
OUTPUT = exec

# Define app directories
APP_DIR = ./example1.app/Contents/MacOS/
RESOURCES_DIR = ./example1.app/Contents/Resources/
INFO_PLIST = ./example1.app/Contents/Info.plist

# Default target
all: $(OUTPUT)

# Compile and link the application
$(OUTPUT): $(SOURCES)
    $(CC) $(CFLAGS) -o $@ $^
    if [ ! -d "$(APP_DIR)" ]; then mkdir -p $(APP_DIR); fi
    cp $(OUTPUT) $(APP_DIR)
    if [ ! -d "$(RESOURCES_DIR)" ]; then mkdir -p $(RESOURCES_DIR); fi
    cp ../../DefaultApp/default.app/Resources/icon.icns $(RESOURCES_DIR)
    cp ../../DefaultApp/default.app/Info.plist $(INFO_PLIST)

# Clean target
clean:
    rm -f $(OUTPUT)

# Phony targets
.PHONY: all clean