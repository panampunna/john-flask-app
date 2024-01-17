#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a value for the variable."
  exit 1
fi

# Assign the value of the variable
a="$1"
b=$(date +"%d-%m-%Y  %H:%M")
PP="/home/john/Vimal/2023-ubuntu/DOCKER-folder/hub.docker.com/panampunna-kerala"
# Generate the HTML content
html_content="<html>
<!DOCTYPE html>
<html>
<head>
	<title>Lion Photos and Contact Information</title>
	<style>
		body {
			background-color: #f5f5f5;
			color: #333333;
			font-family: Arial, sans-serif;
		}
		h1 {
			color: #FF0000;
			font-weight: bold;
		}
		p {
			color: #FF0000;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<h1>Varghese John $a ||  $b  </h1>
	<h1>Build V: $a | $PP  </h1>
	<img src=\"mountains-1.jpg\" alt=\"mountains-1.jpg\" width=\"300\" height=\"200\">
	<img src=\"vjp.jpg\" alt=\"Lion 2\" width=\"300\" height=\"200\">
	<img src=\"mountains-1.jpg\" alt=\"mountains-1.jpg\" width=\"300\" height=\"200\">
	<p>Varghese John Panampunna, Malloossery P.O,</p>
	<p>Kottayam,</p>
	<p>Kerala,</p>
	<p>India</p>
	<p>johnhr@gmail.com</p>
	<p>#################</p>
	<img src=\"vjp.jpg\" alt=\"Varghese\" width=\"300\" height=\"200\">
</body>
</html>"

# Generate a unique file name based on the current timestamp
#timestamp=$(date +"%Y%m%d%H%M%S")
#filename="output_${timestamp}.html"
filename="index.html"

# Create the new HTML file
echo "$html_content" > "$filename"

echo "HTML file '$filename' has been created with the variable '$a'."

