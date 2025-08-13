# My Student Profile App

## App Description
This iOS app allows users to introduce themselves by filling out personal details such as first name, last name, school, academic year, number of pets, whether they want more pets, age, hobbies, favorite color, and a short bio. The app displays the school logo and generates a fun introduction in an alert box. Users can also personalize the app by changing the background color using the favorite color picker.

---

## App Walk-through

![App Walkthrough]()

---

## Required Features
- [x] App displays an image of a school's logo  
- [x] App has textfields for first name, last name, and school name  
- [x] App has a segmented control that changes student year  
- [x] Number of pets label updates via stepper  
- [x] Switch indicates if user wants more pets (true/false)  
- [x] Introduce Yourself button shows alert box with full introduction  

---

## Optional Features
- [x] User can change the background color of the view via favorite color picker  
- [x] Additional fields for age, hobby, and short bio  
- [x] Customized UI elements (rounded corners, styled buttons, labels, and textviews)  
- [x] School logo image is circular for a polished appearance  
- [x] Stepper for age and number of pets  

---

## How It Works
1. Fill out your personal information in the textfields (first name, last name, school, hobby).  
2. Select your academic year using the segmented control.  
3. Adjust the number of pets and your age using the steppers.  
4. Toggle the switch if you want more pets.  
5. Select your favorite color from the color well to change the background.  
6. Write a short bio about yourself.  
7. Tap "Introduce Yourself" to view a complete introduction in an alert box.  

---

## Technical Notes
- Built using Swift and UIKit.  
- Uses IBOutlets and IBActions to connect UI elements.  
- Favorite color picker uses `UIColorWell` to change the background color dynamically.  
- All textfields and labels have customized styling (rounded corners, border colors, and background transparency).  
