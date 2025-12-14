# --- Compiler Settings ---
CC = gcc
CXX = g++
CFLAGS = -Wall -I./include
CXXFLAGS = -Wall -I./include

# --- Directories ---
SRC_DIR = src
BIN_DIR = bin

# --- Targets (What to build) ---
# Add your specific program names here
# Example: If you have src/main.cpp, you want a binary named 'app'
TARGETS = $(BIN_DIR)/app

# Default rule: Build everything listed in TARGETS
all: $(BIN_DIR) $(TARGETS)

# --- Recipes ---

# Create the bin directory if it doesn't exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Rule to compile C++ files (e.g., src/main.cpp -> bin/app)
$(BIN_DIR)/app: $(SRC_DIR)/main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

# Rule to compile C files (Example: src/tool.c -> bin/tool)
# Uncomment and edit the lines below if you have C files
# $(BIN_DIR)/tool: $(SRC_DIR)/tool.c
# 	$(CC) $(CFLAGS) -o $@ $<

# Clean up (delete) all compiled files
clean:
	rm -f $(BIN_DIR)/*
