#!/usr/bin/env Rscript

library(dplyr, warn.conflicts = FALSE)
library(ggplot2)
library(lubridate, warn.conflicts = FALSE)
library(readr)
library(tibble)
library(tidyr)

daily_stats <- read_csv(
    file.path("data", "stats", "view", "daily.csv"),
    col_types = c(
        date = "D",
        repository = "c",
        site = "c",
        plugins = "i"
    )
) |>
    filter(site == "total") |>
    select(date, repository, plugins)

monthly_stats <- daily_stats |>
    mutate(month = floor_date(date, "month")) |>
    group_by(month, repository) |>
    filter(date == max(date)) |>
    ungroup() |>
    select(
        date = date,
        repository = repository,
        plugins = plugins
    )

df <- monthly_stats |>
    mutate(
        repository = repository |>
            ordered(
                levels = c(
                    "nixpkgs",
                    "awesome-neovim",
                    "extra"
                )
            ) |>
            recode(
                "awesome-neovim" = "Awesome Neovim",
                "nixpkgs" = "Nixpkgs",
                "extra" = "In this flake but not in Nixpkgs"
            )
    ) |>
    select(
        Date = date,
        Repository = repository,
        Plugins = plugins,
    )

g <- df |>
    ggplot(
        aes(
            Date,
            Plugins,
            group = Repository,
            color = Repository,
            label = Plugins
        )
    ) +
    geom_line() +
    geom_point() +
    geom_text(
        vjust = ifelse(df$Date == max(df$Date), -.6, 1.6),
        size = 3,
        show.legend = FALSE,
    ) +
    scale_color_manual(
        values = c("#5277C3", "#57A143", "#FF5F00")
    ) +
    scale_x_date(
        date_breaks = "1 month",
        date_minor_breaks = "1 week",
    ) +
    ylim(c(0, 2e3)) +
    ggtitle("Number of Vim/Neovim plugins contained in each repository")

ggsave(
    file.path("data", "stats", "plot", "daily.png"),
    plot = g,
    width = 18,
    height = 6,
    units = "cm"
)
