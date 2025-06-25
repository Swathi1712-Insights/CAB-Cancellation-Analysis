# CAB-Cancellation-Analysis
CAB rides cancellation analysis using mock dataset,SQL and Tableau
**# Objective**
This project is an end-to-end data analysis that examines the cancellation of cabs for different cities and user types. 
**The aim is to** :
-Uncover feasible knowledge:It includes Total rides,Cancellation per hour,Most cancellation done,Cancellation reasons,Cancellation by city and cab types and totak revenue loss for the company based on cities.
-Know key insights : The cab company will have the analysis report for improving the system
-Improve :The company will get solutions based on analysis to increase revenue,train drivers and also improve customer satisfaction 
**# Tools and Technologies used**
 **SQL Server**: for data cleaning,querying and aggregation
** Tableau** : for visual analytics,dashboard creation and image-by-image storytelling.
**# Dataset Overview**
The dataset consists of records related to cab bookings and cancellations, including:

-  Booking_ID
-  City
-  Trip_Status (Completed, Cancelled by Driver/Customer)
-  Cancellation_Reason
-  Booking_Time and  Pickup_Time
-  Fare_Amount
# Data cleaning and preparation(SQL)
- checked for null or irrelevant records
- Standardized status and reason fields using 'CASE' statements
- Extracted useful time components (hour, day, etc.) using DATEPART
- Aggregated data to calculate cancellations per hour, city, and type
- # Dashboard Features(Tableau)
- Link to view on Tableau publice
[https://public.tableau.com/shared/H2TJ5QZSG?:display_count=n&:origin=viz_share_link](https://public.tableau.com/shared/H2TJ5QZSG?:display_count=n&:origin=viz_share_link)
# Key Findings
-Peak Cancellation Times: Most occur between 8–10 AM and 5–7 PM.
-Cancellation Type: Over 65% of cancellations were by drivers, often during busy hours.
-Top Cities: Certain cities(Mumbai,Hyderabad,Chennai) have disproportionately high cancellation rates.
-Reason Breakdown: No Cab Available and Long Wait Time are the most cited reasons.
# Recommendations
-Introduce performance-based incentives or surge bonuses during high-demand time slots to reward drivers who:
Accept and complete rides during peak hours
Maintain a low cancellation rate
-Intelligent Dispatching in high-cancellation cities.
Implement an AI-based dispatch system that:
Assigns rides to drivers with higher completion history
Prioritizes matches based on location density and ride reliability
Flags high-risk zones and optimizes vehicle positioning before demand peaks
-Customer Notifications to prevent cancellations caused by unawareness of ETA.
Offer in-app cancellation penalty warning after a certain number of cancels
# Skills Demonstrated
-Writing complex SQL queries for aggregation and filtering
-Creating calculated fields, parameters, and filters in Tableau
-Designing clean, interactive dashboards for stakeholder use
-Translating raw data into business strategy
# Conclusion
This project demonstrates the power of data-controlled decision-making in the CAB services industry. By identifying key patterns in driving strength through  SQL analysis,Tableau-Dashboardsand visualization, stakeholders can receive targeted evidence-based measurements to reduce cancellations, improve driver reliability, and improve general customer satisfaction.

# Contact
Author : Swathi V N K
Email :  vnkswathi1712@gmail.com
Linkedin : www.linkedin.com/in/swathi-vnk-325142184

