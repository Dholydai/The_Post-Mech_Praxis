//TXT
translate([110,85,0])
rotate([0,0,90])
linear_extrude(3.5)
text("Lft",size=10,font="Open Sans:style=bold");
//BASE
$fn=24;
//Deck and Towers
difference() {
    union() {
        translate([5,5,0])
            cube([142,179.2,2.2]);
        translate([5,0,0])
            cube([142,5,2.2]);
        translate([0,5,0])
            cube([5,179.2,2.2]);
        translate([147,5,0])
            cube([5,179.2,2.2]);    
        translate([5,5,0])
            cylinder(h=2.2,r1=5,r2=5);
        translate([147,5,0])
            cylinder(h=2.2,r1=5,r2=5);
        translate([7,7,0])
            cylinder(h=18.2,r1=3.5,r2=3.5);
        translate([7,125,0])
            cylinder(h=18.2,r1=3.5,r2=3.5);
        translate([145,125,0])
            cylinder(h=18.2,r1=3.5,r2=3.5);
        translate([145,7,0])
            cylinder(h=18.2,r1=3.5,r2=3.5);
    }
    translate([7,7,-4])
        cylinder(d=3,h=26);
    translate([7,125,-4])
        cylinder(d=3,h=26);
    translate([145,125,-4])
        cylinder(d=3,h=26);
    translate([145,7,-4])
        cylinder(d=3,h=26);
}
//Tower Supports
//Trigon0Y
translate([6,10.4,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,0,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,0,15.5]];//5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top    
    [2,1,4,5],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon0Yright
translate([10.4,6,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [5,0,0],//1
    [0,0,15.5],//2
    [0,2,0],//3
    [5,2,0],//4
    [0,2,15.5]]; //5
    TrigonFaces = [
    [0,2,1],//outside
    [0,1,4,3],//bottom
    [0,3,5,2],//top
    [1,2,5,4],//back
    [3,4,5]];//inside
polyhedron(TrigonPoints,TrigonFaces);}//
//Trigon1Y
translate([6,128.4,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,0,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,0,15.5]];//5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top
    [2,1,4,5],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon1Yrev
translate([6,116.6,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,5,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,5,15.5]]; //5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top
    [1,4,5,2],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon2Y
translate([144,128.4,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,0,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,0,15.5]]; //5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top
    [2,1,4,5],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon2Yrev
translate([144,116.6,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,5,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,5,15.5]]; //5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top
    [1,4,5,2],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon3Y
translate([144,10.4,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [0,5,0],//1
    [0,0,15.5],//2
    [2,0,0],//3
    [2,5,0],//4
    [2,0,15.5]]; //5
    TrigonFaces = [
    [0,1,2],//outside
    [0,3,4,1],//bottom
    [0,2,5,3],//top
    [2,1,4,5],//back
    [3,5,4]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Trigon3Yleft
translate([136.6,6,2.2])
    {TrigonPoints = [
    [0,0,0],//0
    [5,0,0],//1
    [5,0,15.5],//2
    [0,2,0],//3
    [5,2,0],//4
    [5,2,15.5]]; //5
    TrigonFaces = [
    [0,2,1],//outside
    [0,1,4,3],//bottom
    [0,3,5,2],//top
    [1,2,5,4],//back
    [3,4,5]];//inside
polyhedron(TrigonPoints,TrigonFaces);}
//Ribs
translate([3.1,20,2.2])
    cube([2,150,2]);
translate([75,20,2.2])
    cube([2,150,4]);
translate([146.9,20,2.2])
    cube([2,150,2]);
translate([20,3.1,2.2])
    cube([112,2,2]);
translate([20,130,2.2])
    cube([112,2,4]);
translate([20,55,2.2])
    cube([112,2,4]);
//Corner and Mid Supports
translate([16.5,13,2.2])
    cylinder(h=7,r1=3,r2=3);
translate([138.5,13,2.2])
    cylinder(h=7,r1=3,r2=3);
translate([77.5,65,2.2])
    cylinder(h=7,r1=3,r2=3);
translate([77.5,150,2.2])
    cylinder(h=7,r1=3,r2=3);
//PCB Side
translate([45,6.6,2.2])
    cube([13,6,7]);
translate([45,6.6,9.2])
    cube([13,3,2]);
translate([95,6.6,2.2])
    cube([13,6,7]);
translate([95,6.6,9.2])
    cube([13,3,2]);
//PCB Top Left
translate([10.5,64,2.2])
    cube([6,13,7]);
translate([10.5,64,9.2])
    cube([3,13,2]);
translate([10.5,152,2.2])
    cube([6,13,7]);
translate([10.5,152,9.2])
    cube([3,13,2]);
//PCB Bottom Left
translate([137.5,59,2.2])
    cube([6,13,7]);
translate([140.5,59,9.2])
    cube([3,13,2]);
translate([137.5,161,2.2])
    cube([6,13,7]);
translate([140.5,161,9.2])
    cube([3,13,2]);
    