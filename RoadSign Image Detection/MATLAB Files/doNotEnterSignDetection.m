%Final Project
%Bryan Parada SID # 861027456
%Salvatore Macaluso SID # 861266193

addpath('G:\Team Drives\EE 146 Computer Vision\Photos\Stop Signs\stopSignTestCases\');
addpath('G:\Team Drives\EE 146 Computer Vision\Photos\Do_Not_Enter\testCases\');
addpath('G:\Team Drives\EE 146 Computer Vision\MATLAB Files\positiveTables\');

%% Train Stop Sign Detector
% Load the positive samples data from a MAT file. The file contains
% a table specifying bounding boxes for several object categories.
% The table was exported from the Training Image Labeler app.
%%
% Load positive samples.

%Do Not Enter Table
load('DNES.mat');

%Stop Sign Table
% load('stopSignsPositive.mat');

%%
% Select the bounding boxes for stop signs from the table.

% positiveInstances = stopSignsPositive(:,1:2);

%Do Not Enter Tables with directorys and Bounding Box 
%Pre-Set for Learning
positiveInstances = doNotEnterTable(:,1:2);


%%
% Add the image directory to the MATLAB path.
% Full file just creates the path for the images
%Do Not Enter Path
% imDir = fullfile('G:\', 'Team Drives', 'EE 146 Computer Vision', 'Photos', 'Do_Not_Enter', 'Positive');

%Stop Sign Path
imDir = fullfile('G:\', 'Team Drives', 'EE 146 Computer Vision', 'Photos', 'Stop Signs', 'positiveStopSign');

%Add Path adds that directory to the current matlab workspace.
addpath(imDir);
%%
% Specify the foler for negative images.
% negativeFolder = fullfile(matlabroot,'toolbox','vision','visiondata',...
%     'nonStopSigns');
negativeFolder = fullfile('G:\', 'Team Drives', 'EE 146 Computer Vision', 'Photos', 'neggatives');

%%Data store created for collections of data that are to large to fit in
%%memory 
% Create an |imageDatastore| object containing negative images.
negativeImages = imageDatastore(negativeFolder);
%%
% Train a cascade object detector called 'stopSignDetector.xml'
% using HOG features.
% NOTE: The command can take several minutes to run.

% %Stop Sign Detection
% trainCascadeObjectDetector('signDetector.xml',positiveInstances,...  
%     negativeFolder,'FalseAlarmRate',0.1,'NumCascadeStages',6);

%Do Not Enter Sign Detection
 trainCascadeObjectDetector('signDetector.xml',positiveInstances, ...  
     negativeFolder,'FalseAlarmRate',0.09,'NumCascadeStages',6);

%%
% Use the newly trained classifier to detect a stop sign in an image.
detector = vision.CascadeObjectDetector('signDetector.xml');
%%

%StopSignTests
% stopsignTest1 = imread('SST1.jpg');
% %stopsignTest2 = imread('SST2.jpg');
% stopsignTest3 = imread('SST3.jpg');
% stopsignTest4 = imread('SST4.jpg');
% stopsignTest5 = imread('SST5.jpg');
% stopsignTest6 = imread('SST6.jpg');
% stopsignTest7 = imread('SST7.jpg');
% stopsignTest8 = imread('SST8.jpg');
% %stopsignTest9 = imread('SST9.jpg');
% stopsignTest10 = imread('SST10.jpg');
% stopsignTest11 = imread('SST11.jpg');
% stopsignTest12 = imread('SST12.jpg');
% 
% stopsignTest33 = imread('SST33.jpg');
% 
% 
% stopsignTestManySigns = imread('SSTC_ManySS.jpg');


%Do Not Enter Test Cases
doNotEnterTest1 = imread('DNE1.jpg');
doNotEnterTest2 = imread('DNE2.jpg');
doNotEnterTest3 = imread('DNE3.jpg');
doNotEnterTest4 = imread('DNE4.jpg');
doNotEnterTest5 = imread('DNE5.jpg');
doNotEnterTest6 = imread('DNE6.jpg');
doNotEnterTest7 = imread('DNE7.jpg');
doNotEnterTest8 = imread('DNE8.jpg');
doNotEnterTest9 = imread('DNE9.jpg');
doNotEnterTest10 = imread('DNE10.jpg');
doNotEnterTest11 = imread('DNE11.jpg');
doNotEnterTest12 = imread('DNE12.jpg');
doNotEnterTest13 = imread('DNE13.jpg');

%%
% Detect a stop sign.
%StopSignTests
% SSbbox1 = step(detector,stopsignTest1); 
% % SSbbox2 = step(detector,stopsignTest2); 
% SSbbox3 = step(detector,stopsignTest3); 
% SSbbox4 = step(detector,stopsignTest4); 
% SSbbox5 = step(detector,stopsignTest5); 
% SSbbox6 = step(detector,stopsignTest6); 
% SSbbox7 = step(detector,stopsignTest7); 
% SSbbox8 = step(detector,stopsignTest8); 
% % SSbbox9 = step(detector,stopsignTest9); 
% SSbbox10 = step(detector,stopsignTest10); 
% SSbbox11 = step(detector,stopsignTest11); 
% SSbbox12 = step(detector,stopsignTest12); 
% SSbbox33 = step(detector,stopsignTest33); 


% SSbboxManySigns = step(detector,stopsignTestManySigns); 

%Do Not Enter Tests
bbox7 = step(detector,doNotEnterTest1); 
bbox8 = step(detector,doNotEnterTest2); 
bbox9 = step(detector,doNotEnterTest3); 
bbox10 = step(detector,doNotEnterTest4); 
bbox11 = step(detector,doNotEnterTest5); 
bbox12 = step(detector,doNotEnterTest6); 
bbox13 = step(detector,doNotEnterTest7); 
bbox14 = step(detector,doNotEnterTest8); 
bbox15 = step(detector,doNotEnterTest9); 
bbox16 = step(detector,doNotEnterTest10); 
bbox17 = step(detector,doNotEnterTest11); 
bbox18 = step(detector,doNotEnterTest12); 
bbox19 = step(detector,doNotEnterTest13); 



%%

% Insert bounding box rectangles and return the marked image.
%StopSignTests
% SSdetectedImg1 = insertObjectAnnotation(stopsignTest1,'rectangle',SSbbox1,'stop sign');
% % SSdetectedImg2 = insertObjectAnnotation(stopsignTest2,'rectangle',SSbbox2,'stop sign');
% SSdetectedImg3 = insertObjectAnnotation(stopsignTest3,'rectangle',SSbbox3,'stop sign');
% SSdetectedImg4 = insertObjectAnnotation(stopsignTest4,'rectangle',SSbbox4,'stop sign');
% SSdetectedImg5 = insertObjectAnnotation(stopsignTest5,'rectangle',SSbbox5,'stop sign');
% SSdetectedImg6 = insertObjectAnnotation(stopsignTest6,'rectangle',SSbbox6,'stop sign');
% SSdetectedImg7 = insertObjectAnnotation(stopsignTest7,'rectangle',SSbbox7,'stop sign');
% SSdetectedImg8 = insertObjectAnnotation(stopsignTest8,'rectangle',SSbbox8,'stop sign');
% % SSdetectedImg9 = insertObjectAnnotation(stopsignTest9,'rectangle',SSbbox9,'stop sign');
% SSdetectedImg10 = insertObjectAnnotation(stopsignTest10,'rectangle',SSbbox10,'stop sign');
% SSdetectedImg11 = insertObjectAnnotation(stopsignTest11,'rectangle',SSbbox11,'stop sign');
% SSdetectedImg12 = insertObjectAnnotation(stopsignTest12,'rectangle',SSbbox12,'stop sign');
% SSdetectedImg33 = insertObjectAnnotation(stopsignTest12,'rectangle',SSbbox33,'stop sign');
% %SSdetectedImgS = insertObjectAnnotation(stopsignTest12,'rectangle',SSbbox33,'stop sign');
% %SSdetectedImg12 = insertObjectAnnotation(stopsignTest12,'rectangle',SSbbox12,'s');

% SSdetectedImgManySigns = insertObjectAnnotation(stopsignTestManySigns,'rectangle',SSbboxManySigns,'stop sign');

%Do Not Enter Detect
detectedImg7 = insertObjectAnnotation(doNotEnterTest1 ,'rectangle',bbox7,'Do Not Enter');
detectedImg8 = insertObjectAnnotation(doNotEnterTest2 ,'rectangle',bbox8,'Do Not Enter');
detectedImg9 = insertObjectAnnotation(doNotEnterTest3 ,'rectangle',bbox9,'Do Not Enter');
detectedImg10 = insertObjectAnnotation(doNotEnterTest4 ,'rectangle',bbox10,'Do Not Enter');
detectedImg11 = insertObjectAnnotation(doNotEnterTest5 ,'rectangle',bbox11,'Do Not Enter');
detectedImg12 = insertObjectAnnotation(doNotEnterTest6 ,'rectangle',bbox12,'Do Not Enter');
detectedImg13 = insertObjectAnnotation(doNotEnterTest7 ,'rectangle',bbox13,'Do Not Enter');
detectedImg14 = insertObjectAnnotation(doNotEnterTest8 ,'rectangle',bbox14,'Do Not Enter');
detectedImg15 = insertObjectAnnotation(doNotEnterTest9 ,'rectangle',bbox15,'Do Not Enter');
detectedImg16 = insertObjectAnnotation(doNotEnterTest10 ,'rectangle',bbox16,'Do Not Enter');
detectedImg17 = insertObjectAnnotation(doNotEnterTest11 ,'rectangle',bbox17,'Do Not Enter');
detectedImg18 = insertObjectAnnotation(doNotEnterTest12 ,'rectangle',bbox18,'Do Not Enter');
detectedImg19 = insertObjectAnnotation(doNotEnterTest13 ,'rectangle',bbox19,'Do Not Enter');


%%

% % Display the detected stop sign.
% %StopSignTests
% figure; imshow(SSdetectedImg1);
% %figure; imshow(SSdetectedImg2);
% figure; imshow(SSdetectedImg3);
% figure; imshow(SSdetectedImg4);
% figure; imshow(SSdetectedImg5);
% figure; imshow(SSdetectedImg6);
% figure; imshow(SSdetectedImg7);
% figure; imshow(SSdetectedImg8);
% %figure; imshow(SSdetectedImg9);
% figure; imshow(SSdetectedImg10);
% figure; imshow(SSdetectedImg11);
% figure; imshow(SSdetectedImg12);
% figure; imshow(SSdetectedImg33);
% %figure; imshow(S);

% figure; imshow(SSdetectedImgManySigns);


%Do Not Enter Signs
figure; imshow(detectedImg7);
figure; imshow(detectedImg8);
figure; imshow(detectedImg9);
%figure; imshow(detectedImg10);
figure; imshow(detectedImg11);
figure; imshow(detectedImg12);
%figure; imshow(detectedImg13);
%figure; imshow(detectedImg14);
%figure; imshow(detectedImg15);
figure; imshow(detectedImg16);
%figure; imshow(detectedImg17);
%figure; imshow(detectedImg18);
%figure; imshow(detectedImg19);


%%
% Remove the image directory from the path.
rmpath(imDir); 