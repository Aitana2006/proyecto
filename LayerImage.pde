class LayerImage {

  private PVector velocidad;
  private PVector posicion;
  private PImage imagen;

  public LayerImage(PVector velocidad, PVector posicion, String pathImage) {
    this.velocidad = velocidad;
    this.posicion = posicion;
    this.imagen = loadImage(pathImage);
    this.image.resize(width + 4, height);
  }

  public void display() {
    imageMode(CORNER);
    image(this.image, this.posicion.x, this.posicion.y);
  }

  public void updatePosition() {
    println(this.posicion.x);
    float framesPorSegundos = round(frameRate);
    float deltaTime = 1.0/framesPorSegundos;
    this.posicion.x -= (this.velocidad.x*deltaTime);
    if (this.posicion.x <- width) {
      this.posicion.x = width;
    }
  }
}
