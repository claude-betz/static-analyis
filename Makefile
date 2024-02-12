# Define the compiler
CC = gcc

# Define compilation flags
CFLAGS = -Wall -Wextra -std=c11

SRC_DIR = src
BIN_DIR = bin

# Define the source files
SRCS = $(wildcard $(SRC_DIR)/*.c)

# Define the object files
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(BIN_DIR)/%.o)

# Define the target executable
TARGET = $(BIN_DIR)/program

# Build the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Compile each source file into object files
$(BIN_DIR)/%.o: $(SRC_DIR)/%.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Create the bin directory if it doesn't exist
$(BIN_DIR):
	mkdir -p $(BIN_DIR)

# Define the "clean" target to remove generated files
clean:
	rm -rf $(BIN_DIR)

# Define the "run" target to run the compiled program
run: $(TARGET)
	./$(TARGET)

