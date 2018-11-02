translate([191.5,25,0.1])
import("/Users/ryanstonebraker/Downloads/Flying_PLA_Paper_Plane_watch_the_movie/files/plane.stl");

color([0,0,1])
for(i=[-1:2:1])
linear_extrude(0.5)
translate([60*i,-35,0.3])
scale([0.02,0.02,0.2])
import("/Users/ryanstonebraker/Documents/University/CSC/Hackathon/hackathon-logo-0.svg");

difference() {
linear_extrude(.1)
translate([0, 2.8, 0])
square([165,121], center=true);

for(i=[-1:2:1])
linear_extrude(3)
rotate(43*i)
translate([0, 2.8 + 104, -3])
square([165,121], center=true);
}