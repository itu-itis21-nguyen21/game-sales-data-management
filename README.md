# Video Game Sales Data Management: Binary Search Tree vs. Red-Black Tree

This project designs and implements a system for managing and querying video game sales data, comparing the efficiency of two fundamental tree data structures: **Binary Search Trees (BST)** and **Red-Black Trees (RBT)**. The system is designed to handle sales data for various video game publishers across different regions, updating cumulative sales for each publisher efficiently.

## Purpose of the Project

The primary objectives of this project are to:

*   **Implement Tree Data Structures:** Develop a Binary Search Tree (BST) and a Red-Black Tree (RBT) to store and manage video game sales data, using the publisher's name as the key.
*   **Efficient Data Insertion and Updates:** Implement insertion logic that not only adds new publishers but also correctly updates cumulative sales data for existing publishers across North America (NA), Europe (EU), and Other Regions.
*   **Analyze Performance:** Measure and compare the time efficiency of data insertion and search operations for both BST and RBT under various conditions (random and ordered input).
*   **Identify Best-Selling Publishers:** Implement functionality to query and list best-selling publishers by region at the end of specific decades (1990, 2000, 2010, 2020).
*   **Evaluate Tree Balance:** Assess and compare the balance of the constructed BST and RBT, demonstrating the self-balancing properties of Red-Black Trees.
*   **Provide Data Management Recommendation:** Based on empirical performance analysis and theoretical understanding, recommend which tree structure is better suited for managing the sales dataset efficiently.

## Project Structure and Algorithms

The project is structured around two main tree implementations and several supporting classes:

### Classes:

*   **`Publisher` Class:** Represents a publisher, storing its name and cumulative sales data across three regions (NA Sales, EU Sales, Other Sales).
*   **`Node` Class:** A generic class used to represent a node within both BST and RBT, holding a `Publisher` object and references to child nodes. In the RBT context, it also includes a color attribute (red/black).
*   **`BST_tree` Class:** Implements the core functionality of the Binary Search Tree, managing operations like `BST_insert()` for adding/updating nodes and searching for best-selling publishers.
*   **`RB_tree` Class:** Implements the core functionality of the Red-Black Tree, including `RB_insert()` for insertion, `RB_insert_fixup()` for maintaining Red-Black properties, and `RB_left_rotate()`/`RB_right_rotate()` for balancing the tree.

### Key Functions & Operations:

*   **Data Insertion:** Both `BST_insert()` and `RB_insert()` handle the insertion of new video game sales data. They update cumulative sales for existing publishers or insert new `Publisher` nodes if the publisher is new. The time taken for all insertions is recorded.
*   **Search Efficiency:** The project performs random search operations (e.g., for specific publishers) on both tree types and measures their average search times.
*   **Best-Selling Publishers (`find_best_seller()`):** This function traverses the tree to identify and list the best-selling publisher in each region at specific decade checkpoints, utilizing a pre-order traversal for RBT to display node depth and color.

## How to Run the Project

1.  **Run the Binary Search Tree (BST) Version:**
    To compile and execute the BST implementation, use the following command:
    ```bash
    make run-BST
    ```

2.  **Run the Red-Black Tree (RBT) Version:**
    To compile and execute the RBT implementation, use the following command:
    ```bash
    make run-RBT
    ```

The project comes with a sample `VideoGames.csv` dataset. The `VideoGames.csv` dataset lists information about 16,000 video games, including publishers, year of release, and worldwide sales data. Compiling and executing code will process the `VideoGames.csv` dataset, perform insertions, searches, identify best-sellers, and output performance metrics and tree structure details to the console.

### Sample Output

![alt_text]{./BST_output.png}

*Searching for best-selling game publishers per area*

![alt_text]{./RBT_output2.png}

*Data stored as a RBT*