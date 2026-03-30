# Constraint-Based Timetable Generator (Prolog)

## Overview
This project is a timetable generator built using Prolog. I created it based on a problem I personally faced during my semester — managing subjects in a way that avoids clashes and keeps the schedule balanced.

Instead of arranging everything manually, this system uses logical rules to automatically generate a valid timetable while satisfying a set of constraints.

## Problem Statement
Creating a proper timetable is not as simple as it looks. While trying to plan my own schedule, I noticed issues like:
- Subjects overlapping in the same time slot  
- Too many heavy subjects on a single day  
- Poor distribution of workload  
- Difficulty placing lab sessions properly  

This project aims to solve these problems using a rule-based approach.

## Approach
The problem is modeled using Prolog as a constraint satisfaction problem.

- Subjects are defined with categories such as heavy, medium, and light  
- Days and time slots are represented as facts  
- Constraints are implemented using rules  
- Prolog uses backtracking to explore possible schedules and find a valid one  

## Features
- Generates a conflict-free timetable  
- Limits the number of heavy subjects per day  
- Handles lab sessions (requires consecutive slots)  
- Uses logical inference and backtracking  
- Modular design for easy understanding  

## Project Structure
timetable-prolog/
│── main.pl
│── facts.pl
│── rules.pl
│── README.md
│── timetable_project_report.docx

## Requirements
- SWI-Prolog (recommended)

## How to Run

1. Open Terminal and navigate to project folder:
   cd timetable-prolog

2. Start Prolog:
   swipl

3. Load the project:
   [main].

4. Generate timetable:
   generate.

## Example Output
[(mon,1,math), (mon,2,ai), (tue,1,dbms), (wed,2,se)]

## Concepts Used
- Constraint Satisfaction  
- Logical Inference  
- Backtracking  
- Rule-Based Systems  

## Challenges Faced
- Designing constraints without making the system too restrictive  
- Debugging Prolog rules  
- Managing multiple conditions together  

## Future Improvements
- Add user input for preferences  
- Improve timetable optimization  
- Better output formatting  
- Add a simple interface  

## Author
Aryan Singh Chauhan
