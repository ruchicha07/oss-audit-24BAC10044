#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Author: ruchicha_bharti | Course: OSS (Unit 5)
# Purpose: Interactive tool to generate a personalized FOSS philosophy.

# --- Concept: Aliases (Requirement: Demonstrated via comment)
# In a real shell environment, I would set an alias for this script:
# alias manifesto='./script5.sh'
# This allows the user to run the audit quickly from any directory.

MANIFESTO_FILE="philosophy_statement.txt"

echo "======================================================"
echo "      OPEN SOURCE PHILOSOPHY GENERATOR (UNIT 5)       "
echo "======================================================"

# --- Concept: User Input (Requirement: read)
read -p "1. What is the most important value in Open Source? (e.g. Freedom): " VAL_1
read -p "2. Why does this value matter for a student at VIT?: " VAL_2
read -p "3. How will you contribute back to Python in the future?: " VAL_3

# --- Concept: String Concatenation & date (Requirement: built-in variables)
# Building a structured paragraph by joining the user's answers
STATEMENT="As of $(date +%F), my FOSS philosophy is built on $VAL_1. This is vital at VIT because $VAL_2. To ensure the ecosystem stays healthy, I plan to >

# --- Concept: Writing to a file (Requirement: >)
# Using > to create a fresh file with a header and the concatenated string
echo "--- OFFICIAL OPEN SOURCE MANIFESTO ---" > $MANIFESTO_FILE
echo "Author: ruchicha_bharti" >> $MANIFESTO_FILE
echo "Generated on: $(date)" >> $MANIFESTO_FILE
echo "---------------------------------------" >> $MANIFESTO_FILE
echo "$STATEMENT" >> $MANIFESTO_FILE
echo "---------------------------------------" >> $MANIFESTO_FILE

echo "Success! Your personalized philosophy has been saved to $MANIFESTO_FILE"
echo "Displaying the generated statement below:"
cat $MANIFESTO_FILE
