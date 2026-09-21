/*
Program name: student_profile.dart   
Purpose     : This program creates a list of student profiles, calculates their average marks, and assigns grades based on the average. 
              It then prints a report of all students with their details.
Author      : Tenjiwe November
Date        : 2026-09-18
*/

// list of student maps with 5 students, each with name, age, three subject marks 
List<Map<String, dynamic>> student = [
    {
      "name": "Alice",      
      "age": 20,
      "marks": [85, 90, 78]
    },
    {
      "name": "Bob",
      "age": 22,
      "marks": [65, 48, 72]
    },
    {
      "name": "Charlie",
      "age": 21,
      "marks": [55, 58, 68]
    },
    {
      "name": "Diana",
      "age": 22,
      "marks": [48, 53, 61]
    },
    { 
      "name": "Eve",
      "age": 20,
      "marks": [82, 79, 85]
    }
]; // list of student maps

// Function to calculate average for each student using the marks list
double calculateAverage(List<int> marks) {
  
  int totalMarks = marks.reduce((a, b) => a + b);
  double average = totalMarks / marks.length;
  
  return average;
} //calculateAverage

// Function to get each student's grade by average
String getGrade(double average) {
  if (average >= 80) {
    
    return "A";
  } else if (average >= 70 && average <= 79) {
    return "B";
  } else if (average >= 60 && average <= 69) {
    return "C";
  } else if (average >= 50 && average <= 59) {
    return "D";
  } else {
    return "F";
  }
} //getGrade

void main() {

  // Print the report header with total number of students
  print("        Student Profiles Report. Total Students:  ${student.length} Students");
  print("Name       Age   Marks        Average Grade");

  
  // Loop through each student in the list and print their details
  for (int cntStudent = 1; cntStudent <= student.length; cntStudent++) {
    List<int> studentmarks = List<int>.from(student[cntStudent - 1]["marks"]);
    
    // Pad with trailing spaces
    student[cntStudent - 1]["name"] = student[cntStudent - 1]["name"].padRight(10, ' ');
        
    // Call the calculateAverage function to get the average marks for each student
    double avg = calculateAverage(studentmarks);
    String formattedAvg = avg.toStringAsFixed(2);    // Format the average to 2 decimal places
     
    // Call the getGrade function to get the grade based on the average marks
    String grade = getGrade(avg);
    
    // Print the student details in a formatted manner
    print("${student[cntStudent - 1]["name"]} ${student[cntStudent - 1]["age"]}  "     "  ${studentmarks} $formattedAvg   $grade" );
    
  } // for loop   
  
}  // void main