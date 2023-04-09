#!/bin/bash

# Define the file to monitor
file=/app/resume.tex

# Define the command to execute when the file changes
command_to_run="echo 'File changed!'"

# Monitor the file for changes
while true; do
  # Get the current timestamp
  current_timestamp=$(stat -c %Y "$file")

  # Wait for 1 second
  sleep 1

  # Get the timestamp of the file again
  new_timestamp=$(stat -c %Y "$file")

  # Compare the timestamps to see if the file has changed
  if [[ "$new_timestamp" -gt "$current_timestamp" ]]; then
    # File has changed, execute the command
    sh -c "latexmk -pdf -xelatex -interaction=nonstopmode -synctex=1 -file-line-error -outdir=/app/output /app/resume.tex"
    # sh -c "pdflatex -output-directory=/app/output -interaction=nonstopmode /app/resume.tex"

  fi
done