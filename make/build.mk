directories:
	@if [ ! -d $(BINARY_DIRECTORY) ]; then mkdir -p $(BINARY_DIRECTORY); $(ECHO) "Write | $(BINARY_DIRECTORY)"; fi
	@if [ ! -d $(OBJECT_DIRECTORY) ]; then mkdir -p $(OBJECT_DIRECTORY); $(ECHO) "Write | $(OBJECT_DIRECTORY)"; fi
	@if [ ! -d $(TARGET_PLATFORM_DIRECTORY) ]; then mkdir -p $(TARGET_PLATFORM_DIRECTORY); $(ECHO) "Write | $(TARGET_PLATFORM_DIRECTORY)"; fi

$(OBJECT_DIRECTORY)/%.o: $(PROGRAM_SOURCE_DIRECTORY)/%.c
	@$(CC) $(CC_FLAGS) $(WARNINGS) $(INCLUDES) $(SYSTEM_INCLUDES) -c $< -o $@
	@$(ECHO) "CC    | $@"
-include $(DEPENDENCY_FILES)

$(OUTPUT_FILE): $(OBJECT_FILES)
	@$(CC) $(CC_FLAGS) $(WARNINGS) $(INCLUDES) $(SYSTEM_INCLUDES) $^ $(LIBRARIES) -o $@
	@$(ECHO) "Link  | $^ -> $@"

delete:
	@if [ -d $(OBJECT_DIRECTORY) ]; then rm -r $(OBJECT_DIRECTORY); $(ECHO) "RM    | $(OBJECT_DIRECTORY)"; fi
	@if [ -f $(OUTPUT_FILE) ]; then rm -r $(OUTPUT_FILE); $(ECHO) "RM    | $(OUTPUT_FILE)"; fi
