import saito.objloader.*;

// arc497i OBJ loader example
// based on code by
// http://thequietvoid.com/client/objloader/#examples Saito (thequietvoid.com)
// using their obj loader library
// tested with Processing 2.0b5

OBJModel model;

float rotX, rotY;

void setup()
{
    size(800, 600, P3D);
    frameRate(30);

    // these settings worked with an OBJ file exported from Rhino as a 
    // Polygon mesh, with no texture or material attributes (see attached
    // screenshot in sketch folder) . If you switch POLYGON to TRIANGLES
    // results could be weird (see attached also).

    model = new OBJModel(this, "prism+sphere.obj", "absolute", POLYGON);
    model.enableDebug();

    model.scale(20);
    model.translateToCenter();

    stroke(255);
    noStroke();
}

void draw()
{
    background(255);
    lights();
    pushMatrix(); // creates a new transformation matrix for current view
    translate(width/2, height/2, 0);
    rotateX(rotY);
    rotateY(rotX);
    model.draw();
    popMatrix(); // 'sheds' the transformation matrix
}

boolean bTexture = true;
boolean bStroke = false;

void keyPressed()
{
    if(key == 't') {
        if(!bTexture) {
            model.enableTexture();
            bTexture = true;
        } 
        else {
            model.disableTexture();
            bTexture = false;
        }
    }

    if(key == 's') {
        if(!bStroke) {
            stroke(0);
            bStroke = true;
        } 
        else {
            noStroke();
            bStroke = false;
        }
    }

    else if(key=='1')
        model.shapeMode(POINTS);
    else if(key=='2')
        model.shapeMode(LINES);
    else if(key=='3')
        model.shapeMode(TRIANGLES);
}

void mouseDragged()
{
    rotX += (mouseX - pmouseX) * 0.01;
    rotY -= (mouseY - pmouseY) * 0.01;
}
