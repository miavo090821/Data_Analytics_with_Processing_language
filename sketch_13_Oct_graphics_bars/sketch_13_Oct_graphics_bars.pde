String[] elevationData;

void setup() {
  size(1700, 800); // Set the canvas size
  fill(0);
  textSize(12);

  // Load the elevation data from the file
  elevationData = loadStrings("elevationData.txt");
}

void draw() {
  background(255); // Clear the background

  float xPos = 20; // Starting X position for text and rectangles
  float yPos = height - 20; // Starting Y position for text and rectangles
  float rectWidth = 5; // Width of the rectangles (smaller size)
  
  // Scale factor for the height of the rectangles
  float rectHeightScale = 0.2; // Adjust as needed

  // Add a title
  fill(0);
  textAlign(CENTER);
  text("Elevation Data Visualization", width / 2, 30);

  // Add labels for elevation and time
  textAlign(LEFT);
  text("Elevation (meters)", 20, height - 10);
  textAlign(CENTER);
  text("Time", width / 2, height - 10);

  // Initialize color variables for gradient
  color ascendingColor = color(0, 255, 0); // Green for ascending
  color descendingColor = color(255, 0, 0); // Red for descending

  // Loop through the elevation data
  for (int i = 0; i < elevationData.length; i++) {
    // Split each line into elevation and time using token split
    String[] parts = split(elevationData[i], ',');
    
    // Extract elevation and time
    float elevation = float(parts[0]);
    String time = parts[1];
    
    // Check if elevation is a valid number
    if (!Float.isNaN(elevation)) {
      // Map the elevation to a smaller rectangle height for visualization
      float rectHeight = map(elevation, 203.7, 214.8, 10, height - 80) * rectHeightScale; // Adjust the range as needed
      
      // Determine the trend and interpolate color accordingly
      color rectColor = lerpColor(ascendingColor, descendingColor, map(elevation, 203.7, 214.8, 0, 1));
      fill(rectColor);
      
      // Draw a rectangle to represent the elevation
      rect(xPos, yPos - rectHeight, rectWidth, rectHeight);
      
      // Update the X position for the next data point
      xPos += rectWidth + 2; // Adjust the spacing as needed
    }
  }
}
