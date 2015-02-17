
// global variables

int w = 600;	// size of window
int h = 600;	// size of window

// line weights

float bboxStrokeWeight = 0.5;
float connectStrokeWeight = 1;

// colors

color connectStrokeColor = color (255, 255, 0); 
color backgroundColor = color(124,124,124);
color wireframeColor = color(255);
color particleColor = color(255);


// number of particles

int numParticles = 3;

// array of particles

Particle3D[] particles = new Particle3D[numParticles];
float bounciness = -0.95;

// dimensions of box
int bboxW = 200;
int bboxH = 200;
int bboxD = 200;

// gravity

float gravity = 0.25;


// camera control

float xd, yd;
float theta = radians(90);
float r = 400;
float cameraRotationSpeed = 0;
int zoom;

float eyex = bboxW *(-1);
float eyey = bboxH *(-1);
float eyez = (bboxD *(-1)) + 70;
float targetx = bboxW/2;
float targety = bboxH/2;
float targetz = -1*(bboxD/2);

// framerate

int framerate = 30;

// toggle values

boolean connect = false;      // are the points connected
boolean camerarotate = true;  // is the camera rotating around object

// text settings

PFont myFont;
String f = "Verdana";
float fsize = 10;

int testvar = 0;

// ranges of the speed variable for object initialization

float sr =0;
float speed_range = 5;
