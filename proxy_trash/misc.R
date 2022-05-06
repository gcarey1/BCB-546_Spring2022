getwd()
library(tidyverse)
library(Biostrings)
library(treeio)
library(XML)
library(methods)
library(ape)
bugxml <- xmlParseDoc("bug_tree.xml")
datx <- 
tree <- bugxml
tree1 <- system.file( bug_tree_x, bug_tree.nex, package = ggtree )
tree <- read.tree(tree1)
install.packages("devtools")
devtools::install_github("USCBiostats/rphyloxml")
library(ape)
library(rphyloxml)


bugtreexml <- xmlParse("/Users/gcarey1/Documents/GitHub/BCB_final_collab/bug_tree.xml")
z <- write_phyloxml(bugtreexml)
tree1 <- system.file( "bugtreexml", package = ggtree )
##
phyloxml <- read.phyloxml("/Users/gcarey1/Documents/GitHub/BCB_final_collab/bug_tree.xml")
###
treeiofile <- system.file("/Users/gcarey1/Documents/GitHub/BCB_final_collab/bug_tree.xml", 
                    "/Users/gcarey1/Documents/GitHub/BCB_final_collab/bug_tree.nex", 
                    package = "treeio")
read.mega(treeiofile)
