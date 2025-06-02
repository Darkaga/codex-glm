# Makefile for Codex GLM

CC := gcc
CFLAGS := -Wall -Wextra -std=c11 -Iinclude
LDFLAGS := -mwindows `pkg-config --cflags --libs gtk4`

SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin
TARGET := $(BIN_DIR)/glm

# Find all .c files in src/, assign corresponding .o files
SRCS := $(shell find $(SRC_DIR) -name '*.c')
OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

# Create list of directories to make
DIRS := $(sort $(dir $(OBJS)))

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

run: all
	$(TARGET)

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
