ifeq ($(UNAME), Windows)
  ECHO := echo -e
  TARGET_PLATFORM_DIRECTORY := binary/windows
  OUTPUT_FILE := $(TARGET_PLATFORM_DIRECTORY)/CTemplate.exe
else ifeq ($(UNAME), Linux)
  ECHO := echo
  TARGET_PLATFORM_DIRECTORY := binary/linux
  OUTPUT_FILE := $(TARGET_PLATFORM_DIRECTORY)/CTemplate.out
endif

PROGRAM_SOURCE_DIRECTORY := program/source
PROGRAM_INCLUDE_DIRECTORY := program/include
BINARY_DIRECTORY := binary
OBJECT_DIRECTORY := binary/object
CC_SOURCE_FILES := $(wildcard $(PROGRAM_SOURCE_DIRECTORY)/*.c)
H_SOURCE_FILES := $(wildcard $(PROGRAM_INCLUDE_DIRECTORY)/*.h)
OBJECT_FILES := $(patsubst $(PROGRAM_SOURCE_DIRECTORY)/%.c, $(OBJECT_DIRECTORY)/%.o, $(CC_SOURCE_FILES))
DEPENDENCY_FILES := $(patsubst $(OBJECT_DIRECTORY)/%.o, $(OBJECT_DIRECTORY)/%.d, $(OBJECT_FILES))
