
import grafica.*;

void setup() {
  size(500, 350);
  background(150);

  // Prepare the points for the plot
  int nPoints = 100;
  GPointsArray points = new GPointsArray(nPoints);

  for (int i = 0; i < nPoints; i++) {
    points.add(i, 10*noise(0.1*i));
  }

  // Create a new plot and set its position on the screen
  GPlot plot = new GPlot(this);
  plot.setPos(25, 25);
  // or all in one go
  // GPlot plot = new GPlot(this, 25, 25);

  // Set the plot title and the axis labels
  plot.setTitleText("APU Radar");
  plot.getXAxis().setAxisLabelText("Frequency");
  plot.getYAxis().setAxisLabelText("Spectrum Analysis");

  // Add the points
  plot.setPoints(points);

  // Draw it!
  plot.defaultDraw();
 
}
