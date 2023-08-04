x += (x_goto -x)/10;
y += (y_goto - y)/10;
image_xscale += (xscale_goto - image_xscale)/ scalespeed;
image_yscale += (yscale_goto - image_yscale)/ scalespeed;

if (oMacro.level > dlevel) {
	xscale_goto = 0;
	yscale_goto = 0;
}
if (oMacro.level < dlevel) {
	xscale_goto = 15;
	yscale_goto = 15;
	scalespeed = 40;
}
if ( image_xscale <= 0.05) {
	with (instance_create_layer(960,544,"back",oBackground)) {
		dlevel = oMacro.level;
		image_index = dlevel;
		image_yscale = 10;
		image_xscale = 10;
	}
	instance_destroy();
} 
if ( image_xscale >= 11) {
	with (instance_create_layer(960,544,"back",oBackground)) {
		dlevel = oMacro.level;
		image_index = dlevel;
		image_yscale = 0.1;
		image_xscale = 0.1;
	}
	instance_destroy();
}