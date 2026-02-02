class Escenario {

  private LayerImage[] capas;

  public Escenario() {
    capas = new LayerImage[5];
    capas[0] = new LayerImage(new PVector(), new PVector(), "fondoprin.png");
    capas[1] = new LayerImage(new PVector(100, 0), new PVector(), "nubes.png");
    capas[2] = new LayerImage(new PVector(100, 0), new PVector(), "nubes.png");
    capas[3] = new LayerImage(new PVector(150, 0), new PVector(), "nubesAde.png");
    capas[4] = new LayerImage(new PVector(150, 0), new PVector(), "nubesAde.png");
  }
  public void display() {
    for (LayerImage layer : capas) {
      layer.display();
      layer.updatePosition();
    }
  }
}
