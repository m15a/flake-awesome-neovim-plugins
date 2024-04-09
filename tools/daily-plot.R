#!/usr/bin/env Rscript

library(tibble)
library(tidyr)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)

df <- as_tibble(read.csv("data/stats/view/daily.csv"))
df$date <- as.Date(df$date)
df$source <- df$source |>
    ordered(levels = c("nixpkgs", "awesome-neovim", "extra")) |>
    recode(
        "awesome-neovim" = "Awesome Neovim",
        "nixpkgs" = "Nixpkgs",
        "extra" = "In this flake but not in Nixpkgs")
df <- df |>
    filter(site == "total") |>
    select(Date = date, Repository = source, Plugins = plugins)


g <- ggplot(df, aes(Date, Plugins, group = Repository, color = Repository)) +
    geom_line() +
    ylim(c(0, 2e3)) +
    ggtitle("Number of Vim/Neovim plugins contained in each repository")

ggsave("data/stats/plot/daily.png",
    plot = g,
    width=18,
    height = 6,
    units="cm")
