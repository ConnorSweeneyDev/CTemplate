CC := gcc
ifeq ($(DEBUG), 1)
  CC_FLAGS := -ggdb3 -Og -MD -MP -DDEBUG -D_FORTIFY_SOURCE=2 -fno-common -fstack-protector-strong
else
  CC_FLAGS := -s -O3 -DNDEBUG -fno-common -fstack-protector-strong -ffunction-sections -fdata-sections -flto=auto -Wl,--gc-sections
endif

WARNINGS := -Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wundef -Wclobbered -Wdeprecated -Wmultichar -Wuninitialized -Wunreachable-code -Wstrict-aliasing -Wreturn-type -Wtype-limits -Wformat-security -Wpointer-arith -Wmaybe-uninitialized -Wempty-body -Wdouble-promotion -Wcast-qual -Wcast-align -Wfloat-equal -Wlogical-op -Wduplicated-cond -Wshift-overflow=2 -Wformat=2
INCLUDES := -Iprogram/include
SYSTEM_INCLUDES := -isystemexternal/include
ifeq ($(UNAME), Windows)
  LIBRARIES := -static -lgcc
else ifeq ($(UNAME), Linux)
  LIBRARIES := -static -ldl -lc -lgcc -Wl,-rpath,'$$ORIGIN'
endif
