#!/usr/bin/env Rscript

library(dplyr, warn.conflicts = FALSE)
library(ggplot2)
library(lubridate, warn.conflicts = FALSE)
library(readr)
library(tibble)
library(tidyr)

daily_stats <- read_csv(
    file.path("data", "stats", "view", "daily.csv"),
    col_types = c(date = "D", repository = "c", site = "c", plugins = "i")
) |>
    filter(site == "total") |>
    select(date, repository, plugins)

df <- daily_stats |>
    mutate(
        repository = repository |>
            ordered(levels = c("nixpkgs", "awesome-neovim", "extra")) |>
            recode(
                "awesome-neovim" = "Awesome Neovim plugins",
                "nixpkgs" = "Nixpkgs Vim/Neovim plugins",
                "extra" = "In this flake but not in Nixpkgs"
            )
    ) |>
    select(Date = date, Repository = repository, Plugins = plugins)

g <- ggplot(df, aes(Date, Plugins, color = Repository)) +
    geom_line() +
    # geom_point(size = .01) +
    scale_color_manual(values = c("#5277C3", "#57A143", "#FF5F00")) +
    scale_x_date(date_breaks = "month") +
    scale_y_continuous(labels = scales::label_number(suffix = "K", scale = 1e-3)) +
    ggtitle("Number of Vim/Neovim plugins contained in each repository") +
    theme(axis.text.x = element_text(angle = 30, vjust = 1, hjust = 0.98))

ggsave(
    file.path("data", "stats", "plot", "daily.png"),
    plot = g,
    width = 18,
    height = 6,
    units = "cm"
)
