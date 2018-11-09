
module captain_america_shield() {
    import("../images/shield.svg");
}

module inverse_captain_america_shield(scaleFactor=2) {
    
    scale(scaleFactor, scaleFactor, scaleFactor)
    color("DarkTurquoise", 1.0)
    difference() {
        hull()
            captain_america_shield();
        scale(1.01, 1.01)
        captain_america_shield();
    }
    
}

module hackathon_logo_svg() {
    import("../logo/3d-printable-hackathon-logo.svg");
}

module hackathon_logo(scaleFactor=0.1) {
    
    scale(scaleFactor, scaleFactor, scaleFactor)
    hackathon_logo_svg();
    
}

module logo_and_shield() {
    
    translate([0, 0, -5]) {
        linear_extrude(2) {
            circle(d=494);
        }
    }
    
    color("DarkTurquoise", 1.0)
    linear_extrude(4, center=true)
    captain_america_shield(2);
    
    color("OrangeRed", 1.0)
    linear_extrude(6, center=true)
    hackathon_logo(0.07);
    
}

logo_and_shield();

