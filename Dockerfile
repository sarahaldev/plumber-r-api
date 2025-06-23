FROM rstudio/plumber

# Copy your plumber file into the image
COPY plumber.R /plumber.R

# Expose port 8000 (default for Plumber APIs)
EXPOSE 8000

# Run the API
ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
