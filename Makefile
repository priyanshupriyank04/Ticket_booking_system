# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall -I. -I./service -I./entities -I./external
LDFLAGS = 

# Source files
SRCS = main.cpp \
       service/bookingservice.cpp \
       service/fileIO.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Target executable
TARGET = booking_system

# Default build target
all: $(TARGET)

# Linking object files to create executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)

# Compiling source files to object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Cleanup
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
