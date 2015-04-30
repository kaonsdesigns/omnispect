function load_MAT_image_cube(in_cube_file, mat_file, cube_file, image_file, precision) % precision is not used but fits the interface for other load methods.
load(in_cube_file);
img = reshape(img, length(imgY)*length(imgX), length(imgZ));
save(cube_file,'img','imgX','imgY','imgZ','-v7.3');
makeRawImage(cube_file,image_file);

