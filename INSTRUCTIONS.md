---
title: "Installation Instructions for NewRcppPackage"
output: html_document
---

# Installation Instructions for NewRcppPackage

This guide will walk you through the installation process for the `NewRcppPackage` on a local machine.

## Prerequisites:
- R installed on your machine.
- RStudio (optional but recommended).
- `devtools` package installed: `install.packages("devtools")`
- RTools (for Windows users).

## Steps:
 
1. **Clone the repository**
Run the following in the bash terminal:

```git clone https://github.com/SeanHersh/NewRcppPackage.git```

2. **Set your working directory**
In RStudio or R, set the working directory to where you cloned the repository. Run the following in your R console:

```setwd("C:/path/to/NewRcppPackage")```

3. **Install the package**
Once you are in the correct directory, install the package using devtools:

```devtools::install()```

This command will build and install the package on your local machine.

4. **Load the package**
After successful installation, load the package using the library() function:

```library(NewRcppPackage)```

5. **Test the sorting function**
To ensure the package is working, you can test the sort_cpp() function. Run the following:

```sorted_vector <- sort_cpp(c(3, 1, 4, 1, 5, 9))```
```print(sorted_vector)```

The output should be the sorted vector [1, 1, 3, 4, 5, 9].

## Troubleshooting:

Permission errors: If you encounter permission-related issues, make sure R and RStudio are running with the necessary permissions to install packages. if prompted to install rtools please say yes, this will allow for ```devtools::install(), test(), document()```, and so on to fully work.

Dependency issues: Ensure that the required packages (devtools, Rcpp) are installed before proceeding.
