the_image= imread('2.jpg');
[width,height]=size(the_image);

if width>500
    the_image= imresize(the_image, [500 NaN]);
end

face_detector= vision.CascadeObjectDetector();
location_of_face= step(face_detector, the_image);

detected_image= insertShape(the_image,'Rectangle', location_of_face);

figure;
imshow(detected_image);