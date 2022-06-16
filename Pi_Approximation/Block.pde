class Block{
  
  private float x;
  private float y;
  private float w;
  private float v;
  private float m;
  
  public Block(float x,float w,float v, float m){
    this.x = x;
    this.y = 600 - w;
    this.w = w;
    this.v = v;
    this.m = m;
  }
  
  public float getv(){
    return this.v;
  }
  
  public void setv(float v){
    this.v = v;
  }
  
  public boolean colide(Block other){
    return !(this.x + this.w < other.x || this.x > other.x + other.w);
  }
  
  public boolean colideWall(){
    return this.x<=0;
  }
  
  public float collisions(Block other){
    float m1 = this.m;
    float m2 = other.m;
    float u1 = this.v;
    float u2 = other.v;
    float mCombined = m1+m2;
    return ((m1 - m2) / mCombined)*u1 + (2*m2/mCombined)*u2;
  }
  
  
  public void update(){
    this.x += this.v; 
  }
  
  public void show(){
     square(this.x, this.y, this.w);
  }
  
  
  
  
}
