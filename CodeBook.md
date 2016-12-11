# Codebook


This describes the variables, the data, and any transformations or work performed to clean up the data called

### Variables 

The first variable - integer, ranging from 1 to 30 - is the subject.ID - it identifies the person that has been wearing the device for the experiment. 

The second variable - activity  - is character string with six activity names (1 WALKING, 2 WALKING_UPSTAIRS,3 WALKING_DOWNSTAIRS,4 SITTING,5 STANDING,6 LAYING) 

All the other variables has been selected if their name contains "mean" or "std" in all three dimentions (X,Y,Z).After that the data has been summarized by taking only the average of the variable grouping by subject.ID and activity. The columns has been renamed by adding the word "Mean" in front to reflect the above summarization.

"tBodyAcc.mean...X"               
"tBodyAcc.mean...Y" 
"tBodyAcc.mean...Z"               
"tBodyAcc.std...X"                
"tBodyAcc.std...Y"                
"tBodyAcc.std...Z"               
"tGravityAcc.mean...X"            
"tGravityAcc.mean...Y"            
"tGravityAcc.mean...Z"            
"tGravityAcc.std...X"            
"tGravityAcc.std...Y"             
"tGravityAcc.std...Z"             
"tBodyAccJerk.mean...X"           
"tBodyAccJerk.mean...Y"          
"tBodyAccJerk.mean...Z"           
"tBodyAccJerk.std...X"            
"tBodyAccJerk.std...Y"            
"tBodyAccJerk.std...Z"           
"tBodyGyro.mean...X"              
"tBodyGyro.mean...Y"              
"tBodyGyro.mean...Z"              
"tBodyGyro.std...X"              
"tBodyGyro.std...Y"               
"tBodyGyro.std...Z"               
"tBodyGyroJerk.mean...X"          
"tBodyGyroJerk.mean...Y"         
"tBodyGyroJerk.mean...Z"          
"tBodyGyroJerk.std...X"           
"tBodyGyroJerk.std...Y"           
"tBodyGyroJerk.std...Z"          
"tBodyAccMag.mean.."              
"tBodyAccMag.std.."               
"tGravityAccMag.mean.."           
"tGravityAccMag.std.."           
"tBodyAccJerkMag.mean.."          
"tBodyAccJerkMag.std.."           
"tBodyGyroMag.mean.."             
"tBodyGyroMag.std.."             
"tBodyGyroJerkMag.mean.."         
"tBodyGyroJerkMag.std.."          
"fBodyAcc.mean...X"               
"fBodyAcc.mean...Y"              
"fBodyAcc.mean...Z"               
"fBodyAcc.std...X"                
"fBodyAcc.std...Y"                
"fBodyAcc.std...Z"               
"fBodyAcc.meanFreq...X"           
"fBodyAcc.meanFreq...Y"           
"fBodyAcc.meanFreq...Z"           
"fBodyAccJerk.mean...X"          
"fBodyAccJerk.mean...Y"           
"fBodyAccJerk.mean...Z"           
"fBodyAccJerk.std...X"            
"fBodyAccJerk.std...Y"           
"fBodyAccJerk.std...Z"            
"fBodyAccJerk.meanFreq...X"       
"fBodyAccJerk.meanFreq...Y"       
"fBodyAccJerk.meanFreq...Z"      
"fBodyGyro.mean...X"              
"fBodyGyro.mean...Y"              
"fBodyGyro.mean...Z"              
"fBodyGyro.std...X"              
"fBodyGyro.std...Y"               
"fBodyGyro.std...Z"               
"fBodyGyro.meanFreq...X"          
"fBodyGyro.meanFreq...Y"         
"fBodyGyro.meanFreq...Z"          
"fBodyAccMag.mean.."              
"fBodyAccMag.std.."               
"fBodyAccMag.meanFreq.."         
"fBodyBodyAccJerkMag.mean.."      
"fBodyBodyAccJerkMag.std.."       
"fBodyBodyAccJerkMag.meanFreq.."  
"fBodyBodyGyroMag.mean.."        
"fBodyBodyGyroMag.std.."          
"fBodyBodyGyroMag.meanFreq.."     
"fBodyBodyGyroJerkMag.mean.."     
"fBodyBodyGyroJerkMag.std.."     
"fBodyBodyGyroJerkMag.meanFreq.."


## The data 
The describes 30 persons taking part in the experiment in 6 activity types - totaling in 180 summarized (average) observations. 


## Transformations
All the columns not containing "mean"" or "std"" has been removed from the final result set.
The data has been summarized by taking only the average of any variable grouping by subject.ID and activity.
The columns has been renamed by adding the word "Mean" in front to reflect the above summarization.
