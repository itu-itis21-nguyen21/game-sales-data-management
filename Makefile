CC = g++

all: BST RBT

BST: solution_BST_tree.cpp
	$(CC) solution_BST_tree.cpp -o BST

RBT: solution_RBT_tree.cpp
	$(CC) solution_RBT_tree.cpp -o RBT

run-BST: BST
	./BST VideoGames.csv

run-RBT: RBT
	./RBT VideoGames.csv

clean:
	rm -f BST RBT
