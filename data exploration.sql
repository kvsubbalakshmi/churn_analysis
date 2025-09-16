use customer_churn;

SELECT 
    *
FROM
    customer_data;

UPDATE customer_data 
SET 
    Customer_ID = NULLIF(TRIM(Customer_ID), ''),
    Gender = NULLIF(TRIM(Gender), ''),
    Age = NULLIF(TRIM(Age), ''),
    Married = NULLIF(TRIM(Married), ''),
    State = NULLIF(TRIM(State), ''),
    Number_of_Referrals = NULLIF(TRIM(Number_of_Referrals), ''),
    Tenure_in_Months = NULLIF(TRIM(Tenure_in_Months), ''),
    Value_Deal = NULLIF(TRIM(Value_Deal), ''),
    Phone_Service = NULLIF(TRIM(Phone_Service), ''),
    Multiple_Lines = NULLIF(TRIM(Multiple_Lines), ''),
    Internet_Service = NULLIF(TRIM(Internet_Service), ''),
    Internet_Type = NULLIF(TRIM(Internet_Type), ''),
    Online_Security = NULLIF(TRIM(Online_Security), ''),
    Online_Backup = NULLIF(TRIM(Online_Backup), ''),
    Device_Protection_Plan = NULLIF(TRIM(Device_Protection_Plan), ''),
    Premium_Support = NULLIF(TRIM(Premium_Support), ''),
    Streaming_TV = NULLIF(TRIM(Streaming_TV), ''),
    Streaming_Movies = NULLIF(TRIM(Streaming_Movies), ''),
    Streaming_Music = NULLIF(TRIM(Streaming_Music), ''),
    Unlimited_Data = NULLIF(TRIM(Unlimited_Data), ''),
    Contract = NULLIF(TRIM(Contract), ''),
    Paperless_Billing = NULLIF(TRIM(Paperless_Billing), ''),
    Payment_Method = NULLIF(TRIM(Payment_Method), ''),
    Monthly_Charge = NULLIF(TRIM(Monthly_Charge), ''),
    Total_Charges = NULLIF(TRIM(Total_Charges), ''),
    Total_Refunds = NULLIF(TRIM(Total_Refunds), ''),
    Total_Extra_Data_Charges = NULLIF(TRIM(Total_Extra_Data_Charges), ''),
    Total_Long_Distance_Charges = NULLIF(TRIM(Total_Long_Distance_Charges), ''),
    Total_Revenue = NULLIF(TRIM(Total_Revenue), ''),
    Customer_Status = NULLIF(TRIM(Customer_Status), ''),
    Churn_Category = NULLIF(TRIM(Churn_Category), ''),
    Churn_Reason = NULLIF(TRIM(Churn_Reason), '')
WHERE
    Customer_ID = ''
        OR TRIM(Customer_ID) = ''
        OR Gender = ''
        OR TRIM(Gender) = ''
        OR Age = ''
        OR TRIM(Age) = ''
        OR Married = ''
        OR TRIM(Married) = ''
        OR State = ''
        OR TRIM(State) = ''
        OR Number_of_Referrals = ''
        OR TRIM(Number_of_Referrals) = ''
        OR Tenure_in_Months = ''
        OR TRIM(Tenure_in_Months) = ''
        OR Value_Deal = ''
        OR TRIM(Value_Deal) = ''
        OR Phone_Service = ''
        OR TRIM(Phone_Service) = ''
        OR Multiple_Lines = ''
        OR TRIM(Multiple_Lines) = ''
        OR Internet_Service = ''
        OR TRIM(Internet_Service) = ''
        OR Internet_Type = ''
        OR TRIM(Internet_Type) = ''
        OR Online_Security = ''
        OR TRIM(Online_Security) = ''
        OR Online_Backup = ''
        OR TRIM(Online_Backup) = ''
        OR Device_Protection_Plan = ''
        OR TRIM(Device_Protection_Plan) = ''
        OR Premium_Support = ''
        OR TRIM(Premium_Support) = ''
        OR Streaming_TV = ''
        OR TRIM(Streaming_TV) = ''
        OR Streaming_Movies = ''
        OR TRIM(Streaming_Movies) = ''
        OR Streaming_Music = ''
        OR TRIM(Streaming_Music) = ''
        OR Unlimited_Data = ''
        OR TRIM(Unlimited_Data) = ''
        OR Contract = ''
        OR TRIM(Contract) = ''
        OR Paperless_Billing = ''
        OR TRIM(Paperless_Billing) = ''
        OR Payment_Method = ''
        OR TRIM(Payment_Method) = ''
        OR Monthly_Charge = ''
        OR TRIM(Monthly_Charge) = ''
        OR Total_Charges = ''
        OR TRIM(Total_Charges) = ''
        OR Total_Refunds = ''
        OR TRIM(Total_Refunds) = ''
        OR Total_Extra_Data_Charges = ''
        OR TRIM(Total_Extra_Data_Charges) = ''
        OR Total_Long_Distance_Charges = ''
        OR TRIM(Total_Long_Distance_Charges) = ''
        OR Total_Revenue = ''
        OR TRIM(Total_Revenue) = ''
        OR Customer_Status = ''
        OR TRIM(Customer_Status) = ''
        OR Churn_Category = ''
        OR TRIM(Churn_Category) = ''
        OR Churn_Reason = ''
        OR TRIM(Churn_Reason) = '';

SELECT 
    *
FROM
    customer_data;

SELECT 
    gender,
    COUNT(gender) AS totalcount,
    (COUNT(gender) * 100.0) / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY gender;

SELECT 
    contract,
    COUNT(contract) AS totalcount,
    (COUNT(contract) * 100.0) / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY contract;

SELECT 
    customer_status,
    COUNT(customer_status) AS totalcount,
    SUM(total_revenue) AS totalrevenue,
    (SUM(total_revenue)) / (SELECT 
            SUM(total_revenue)
        FROM
            customer_data) * 100 AS revenueperentage
FROM
    customer_data
GROUP BY customer_status;

SELECT 
    state,
    COUNT(state) AS totalcount,
    (COUNT(state) * 100.0) / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY state
ORDER BY percentage DESC;

SELECT DISTINCT
    internet_type
FROM
    customer_data;

SELECT
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;

CREATE TABLE updated_data AS SELECT Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    IFNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    IFNULL(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    IFNULL(Internet_Type, 'None') AS Internet_Type,
    IFNULL(Online_Security, 'No') AS Online_Security,
    IFNULL(Online_Backup, 'No') AS Online_Backup,
    IFNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    IFNULL(Premium_Support, 'No') AS Premium_Support,
    IFNULL(Streaming_TV, 'No') AS Streaming_TV,
    IFNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    IFNULL(Streaming_Music, 'No') AS Streaming_Music,
    IFNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    IFNULL(Churn_Category, 'Others') AS Churn_Category,
    IFNULL(Churn_Reason, 'Others') AS Churn_Reason FROM
    customer_data;
    
SELECT 
    *
FROM
    updated_data;