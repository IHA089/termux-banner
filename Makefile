CC = gcc
CFLAGS = -Wall -g

TARGET = termux-banner
SRCS = termux-banner.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)
	@echo "Compilation complete. Type './termux-banner' to run this tool."

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean

