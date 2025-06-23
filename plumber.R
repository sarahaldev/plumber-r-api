# plumber.R – minimal API for linear regression
library(plumber)
library(jsonlite)

#* Linear regression: returns coefficients
#* @post /linreg
function(req, res, data = "") {
  df  <- fromJSON(data)
  fit <- lm(y ~ ., data = df)
  as.list(coef(fit))
}
