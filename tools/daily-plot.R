#!/usr/bin/env Rscript

library(dplyr, warn.conflicts = FALSE)
library(ggplot2)
library(readr)
library(tibble)
library(tidyr)

df <- read_csv("data/stats/view/daily.csv",
    col_types = c(date = "D",
                  repository = "c",
                  site = "c",
                  plugins = "i"))
df <- df |>
    mutate(repository = repository |>
        ordered(levels = c("nixpkgs", "awesome-neovim", "extra")) |>
        recode("awesome-neovim" = "Awesome Neovim",
               "nixpkgs" = "Nixpkgs",
               "extra" = "In this flake but not in Nixpkgs"))
df <- df |>
    filter(site == "total") |>
    select(Date = date, Repository = repository, Plugins = plugins)

g <- df |>
    ggplot(aes(Date, Plugins,
               group = Repository,
               color = Repository,
               label = Plugins)) +
    geom_line() +
    geom_point() +
    geom_text(vjust = -.6, size = 3, show.legend = FALSE) +
    scale_color_manual(values = c("#5277C3", "#57A143", "#FF5F00")) +
    ylim(c(0, 2e3)) +
    ggtitle("Number of Vim/Neovim plugins contained in each repository")

ggsave("data/stats/plot/daily.png",
    plot = g,
    width=18,
    height = 6,
    units="cm")
