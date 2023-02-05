# Programming Assignment 1
**Instructions:**  Only one notebook/program is needed from a group unless otherwise specified. Please make sure to write well-documented code using good variable names. Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

1. Create an empty Jupyter notebook with a Julia kernel in your group repository. Call it "Prog1.ipynb". Commit with a message "Initial Notebook" and push to github. (5 points)

2. Each person in your group should pull the notebook, add a cell with your name, commit and push with a message "<YOUR_NAME>'s initial commit." (Substitute <YOUR_NAME> with your name.) Resolve merge conflicts if any. (5 points, INDIVIDUAL)

3. In cell 1, load ("use") the packages CSV, DataFrames, Statistics, LinearAlgebra and Dates. (5 points)
 
4. In cell 2, load the provided "4.5_month_earthquakes.csv" on canvas. This file has data on recent earthquakes all over the world with a magnitude of 4.5 or more. You can find code to do this in the Julia tutorial. Print the first few rows of the dataset. (5 points)


5. In cell 3, write Julia code to find and print the maximum, minimum and average magnitude of all earthquakes in the data (the "mag" column). The printed messages should read "Min magnitude: [1234]" then a newline, then "Max magnitude: [1234]" then a newline then "Average magnitude: [1234]". (Substitute [1234] with the output.) (5 points)

6. In cell 4, write Julia code to strip everything including and after the period in the "time" feature from all records in the data. For example, "2023-01-27T20:25:27.038Z" will become "2023-01-27T20:25:27". Show the output for the first 10 records. (5 points)

7. In cell 5, write a Julia function to output the average magnitude of all earthquakes in the past N days, where N is an input. Show the output for N=10, 20, 30, 40, 50. (15 points)

8. In cell 6, write a Julia function to output the average magnitude of all earthquakes within N kilometers of a specified (latitude, longitude) coordinate. For this assignment you can assume that a coordinate displacement of one degree corresponds to 100 kilometers (if you wish, you can find ways to do more accurate conversions on the web, but it is not necessary) . The value of N and the coordinate will be inputs to the function. Show the output for 2 values of N and 2 coordinates that you choose (4 outputs total). (20 points)

9. In cell 7, write a Julia function to find the most seismically active region of radius N kilometers centered on any (latitude, longitude) coordinate in the data. N is an input to this function. Measure seismic activity as the total magnitude of all earthquakes in a region. The output printed should come from the "place" feature of the data, for example if the most active region was centered on (-23.7222, -179.4605), the code should print "south of the Fiji Islands." Show the output for N=500, 1000, 2000, 3000, 4000.(20 points)

10. In cell 8, write a Julia function to find the most seismically active region of radius N kilometers centered on any (latitude, longitude) coordinate in the data, within the past M days. N and M are inputs to this function. Measure seismic activity as the total magnitude of all earthquakes in a region. The output printed should come from the "place" field of the data, for example if the most active region was centered on (-23.7222, -179.4605), the code should print "south of the Fiji Islands." Show the output for N=500, 1000, 2000 and M=10, 20, 30 (9 outputs total). (15 points)



