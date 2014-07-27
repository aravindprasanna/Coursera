## run_Analysis.R Script for tidying the Human Activity Recognition Using Smartphones Dataset
The run_analysis.R script obtains the following inputs from the Human Activtity Recognition using Smartphone Dataset

Input:

1.'features.txt': which contains a List of all features.
2. Train Dataset:
  1.'X_train.txt': Training set containing the measurements
  2.'y_train.txt': Training labels associated with the measurements from the training set above.
  3.'subject_train.txt': The subjects whose activities were measured as part of test group.
3. Test Dataset
  1.'X_test.txt': Test set containing the measurements
  2.'y_test.txt': Test labels associated with the measurements from the test set above.
  3.'subject_test.txt': The subjects whose activities were measured as part of test group.
4. 'activity_labels.txt': Descriptive activity names associated with the numeric values of labels.

Output:

A tidy dataset obtained with the above inputs.

Notes to Remember:

1. The Human Activity Recognition Using Smartphones Dataset is available as a zip file for download [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
2. The required input files can be located from the zip file and must be moved to the same working  directory as the run_analysis.R
3.WARNING!!!! The resultant tidy dataset will be writtent to the same directory as a text file with the name "output.txt". There is no checking to ensure the same file does not exist. Ensure a file is not present to prevent overwriting.