#make file 

target_file=test
cpp_compiler=g++
cpp_version=-std=c++14
optimization_level=-O3
#include_path=
#link_path=

./bin/$(target_file) : ./src/main.cpp ./bin
	$(cpp_compiler) $(cpp_version) $(optimization_level) ./src/main.cpp -o ./bin/$(target_file)

./bin:
	mkdir bin

clean:
#	rm ./bin/*.o
	rm ./bin/$(target_file)
