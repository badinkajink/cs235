CC = g++
LFLAGS = -std=c++11
CFLAGS = -c -Wall

# Set the EXECUTABLE_NAME variable to the preferred generated executable name
# Set the SOURCES variable to a space-separated list of all the .cpp files to compile
EXECUTABLE_NAME = StackOverdue
SOURCES = Book.h Account.h Time.h BookFileReader.h BookFileReader.cpp BookManager.h BookManager.cpp AccountFileReader.h AccountFileReader.cpp AccountManager.h AccountManager.cpp Administrator.h Administrator.cpp Library.h Library.cpp StackOverdueSimulator.cpp
OBJECTS = $(SOURCES:.cpp=.o)

all: $(EXECUTABLE_NAME)

$(EXECUTABLE_NAME): $(OBJECTS)
	$(CC) $(LFLAGS) -o $(EXECUTABLE_NAME) $(OBJECTS)

.cpp.o:
	$(CC) $(CFLAGS) $(LFLAGS) $< -o $@

clean:
	$(RM) *.o *~ $(EXECUTABLE_NAME)

