// Check if the object is still partially transparent
if (image_alpha < 1) {
    image_alpha += fade_speed;
} else {
    image_alpha = 1; // Cap it exactly at 1 to prevent overshoot
}
