library(plotly)
library(dplyr)

# Build a scatter plot
scatter_plot <- function(data,
                         xvar,
                         yvar,
                         colorsvar) {
  
  # Create a new dataframe called df With a new xvar and yvar columns,
  # with values equal to the columns we want so we can plot any combination
  df <- data
  names(df)[names(df) == xvar] <- "xvar"
  names(df)[names(df) == yvar] <- "yvar"
  
  # Replace all dots in column names with spaces
  # to later be used for axis titles
  xtitle <- list(
    title = gsub("\\.", " ", xvar)
  )
  ytitle <- list(
    title = gsub("\\.", " ", yvar)
  )
  # Plot it
  plot_ly(iris,
          x = df$xvar,
          y = df$yvar,
          mode = "markers",
          text = df$Species,
          color = df$Species,
          colors = colorsvar
          ) %>%
    layout(xaxis = xtitle,
           yaxis = ytitle,
           title = paste0(xtitle, " vs. ", ytitle)) %>%
    return()
}