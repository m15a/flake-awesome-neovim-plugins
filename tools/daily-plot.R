#!/usr/bin/env Rscript

library(tibble)
library(tidyr)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)

df <- as_tibble(read.csv("data/stats/view/daily.csv")) |>
    rename(Date = date,
           Source = source,
           GitHub = github.com,
           GitLab = gitlab.com,
           Codeberg = codeberg.org,
           SourceHut = git.sr.ht,
           Total = total) |>
    select(Date, Source, Total) |>
    pivot_longer(cols = !Date & !Source,
                 names_to = "Site",
                 values_to = "Plugins")

df$Source <- df$Source |>
    recode("awesome-neovim" = "Awesome Neovim",
           "nixpkgs" = "Nixpkgs",
           "extra" = "Plugins in this flake but not in Nixpkgs")

g <- ggplot(df, aes(Date, Plugins, group = Source, color = Source)) +
    geom_line() +
    ylim(c(0, 2e3)) +
    ggtitle("Number of Vim/Neovim plugins contained in each repository")

ggsave("data/stats/plot/daily.png",
    plot = g,
    width=18,
    height = 6,
    unit="cm")
