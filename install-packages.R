# Install pacman if it isn't already installed
if ("pacman" %in% rownames(installed.packages()) == FALSE) install.packages("pacman")
if ("portalr" %in% rownames(installed.packages()) == FALSE) install.packages("portalr")

# Install packages required for analysis
# Add any packages required for you data cleaning and manipulation to the
# `p_load` function call below
# Do not remove the packages already listed here
# they are important for running the livedat repository

pacman::p_load(git2r, httr, semver, yaml, portalr)
