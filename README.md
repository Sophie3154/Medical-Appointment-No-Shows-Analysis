# Medical-Appointment-No-Shows-Analysis

## Overview
This project explores the "Medical Appointment No Shows" dataset to analyze patterns of patient attendance and factors influencing missed appointments. The main goal is to provide actionable insights for healthcare providers to reduce no-show rates and improve operational efficiency.

## Dataset
The dataset contains patient appointment information, including:
- Patient Id
- Appointment ID
- Gender
- Scheduled Day
- Appointment Day
- Age
- Neighbourhood
- Scholarship
- Hypertension
- Diabetes
- Alcoholism
- Handicap
- SMS_received
- No-show

Source: [Kaggle Medical Appointment No Shows Dataset](https://www.kaggle.com/datasets/joniarroba/noshowappointments)

## Key Questions
The analysis focuses on:
- What is the overall no-show rate?
- Does age influence attendance?
- Does gender influence attendance?
- Do SMS reminders reduce no-shows?
- Which neighbourhoods have the highest no-show rates?
- Does waiting time between scheduling and appointment affect attendance?
- Do days of the week affect attendance?
- Do months affect attendance?

## Tools Used
- **Python:** Pandas, NumPy, Seaborn, Matplotlib
- **SQL:** SQLite for querying cleaned dataset

## Analysis
- Cleaning and preprocessing of the dataset (handling duplicates, missing values, date conversions)
- Creation of derived variables such as waiting days and appointment weekday
- Exploratory Data Analysis (EDA) including visualizations:
    - No-show rate by age group
    - No-show rate by gender
    - Distribution across neighbourhoods
    - No-show trends by day of the week
- SQL queries for key metrics (overall rates, grouped counts)

## Key Insights
- Overall no-show rate is ~20%
- Younger patients tend to have higher no-show rates
- Longer waiting time between scheduling and appointment increases the probability of no-shows
- SMS reminders show limited effectiveness; further monitoring recommended
- Certain neighbourhoods have consistently higher no-show rates
- Weekday patterns show slight variation but no dramatic spikes

## How to Run
1. Clone the repository
2. Open `medical-appointment-no-shows-analysis.ipynb` in Jupyter or Colab
3. Run the notebook to reproduce the analysis and figures
4. SQL queries can be executed using SQLite against the cleaned dataset

## License
This project is for educational and portfolio purposes. No license is applied.


