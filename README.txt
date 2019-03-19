Salvatore Macaluso
Bryan Parada 
--------------------------------------------------------------------------
--------------------------------------------------------------------------
 
Progress:
Managed to get most images to work and recognize the type of sign it is. We managed to get several road signs of different shape and color to be identified.
Issues & Bugs:
Running on different copies of matlab causes the function to request different type of data type. So running the code would create a syntax error between different versions. Depending on malab version we provided instructions on how to run.

Different Aspect Ratio photos that were not contained in the positive sample would cause the program not to identify the object. (Fail the recognition).

To run the program: Final Submission\MATLAB Files\DoNotEnterSignDetection.m

1. Change the locations of addpath() to the where the test case, positive, and negative files are located for 
each of the signs. The Folder containing the photos is called photos.

2. Press Run and the program should begin the training.

3. The program will then locate the sign of the given image on the detectimage function after some time.
(roughtly 45 seconds to train cascade).

4. Figures should appear and signs should be boxed with the right name label.
Important Notes:
These code works for matlab 2017a.  

If using earlier versions.

-Before running code , open the training image labeler app.
-Add all the positive case images in the training image labeler app from the folder provider.(positive_test_case)
-Select the sign you want to detect on all the photos imported.
-Export ROI, give it the name of the sign in lower_case.
-Next change the line trainCascadeObjectDetector('signDetector.xml', ROI_EXPORT_NAME_GIVEN_FROM_PREVIOUS_STEP, ... 
negativeFolder,'FalseAlarmRate',.085,'NumCascadeStages,6);
-Should fix the compiler error if any occur.
This is due to the 2016 version only accepting structs and 2017 accepts tables.

NOTE: Submission photos are reduced to help save file space. File space is otherwise to large
Photos used:https://drive.google.com/open?id=1n3O2tFp-qYOg6r7Yf56V4cRE86v98aT3
