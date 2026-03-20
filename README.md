# 📊 Customer Shopping Behavior Analysis

![Python](https://img.shields.io/badge/Python-Analysis-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-Queries-orange?logo=postgresql)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow?logo=powerbi)
![EDA](https://img.shields.io/badge/EDA-Exploratory%20Analysis-green)
![Excel](https://img.shields.io/badge/Excel-Data%20Handling-darkgreen?logo=microsoft-excel)

## 📌 Overview
This project analyzes customer shopping behavior for a retail company to uncover patterns in purchasing decisions, customer segments, and revenue drivers. 

The objective is to answer the key business question:

> *How can a company leverage customer shopping data to identify trends, improve engagement, and optimize marketing strategies?* :contentReference[oaicite:0]{index=0}

Using a dataset of ~3,900 transactions, this project delivers actionable insights through Python-based data analysis, SQL querying, and Power BI visualization.

---

## 🧾 Business Problem
A retail company observed changing customer purchasing patterns across demographics, product categories, and sales channels. The goal is to:
- Understand customer behavior  
- Identify key factors influencing purchases (discounts, reviews, seasonality)  
- Improve customer retention and sales strategies :contentReference[oaicite:1]{index=1}  

---

## 📂 Dataset
- **Records:** 3,900 transactions  
- **Features:** 18 columns  
- Includes:
  - Customer demographics (Age, Gender, Location)
  - Purchase details (Product, Category, Amount, Season)
  - Behavioral data (Discounts, Reviews, Frequency, Subscription)

- **Data Issue:** Missing values in review ratings handled using median imputation :contentReference[oaicite:2]{index=2}  

---

## 🛠 Tools & Technologies
- **Python (Pandas, NumPy, Matplotlib, Seaborn)** – Data cleaning & EDA  
- **SQL (PostgreSQL / MySQL / SQL Server)** – Business query analysis  
- **Power BI** – Interactive dashboard  
- **Gamma** – Presentation (PPT)  
- **Excel** – Data preprocessing  

---

## ⚙️ Project Workflow

### 1. Data Preparation (Python)
- Data loading and structure validation  
- Handling missing values  
- Feature engineering (age groups, purchase frequency)  
- Data standardization (snake_case columns) :contentReference[oaicite:3]{index=3}  

### 2. Exploratory Data Analysis (EDA)
- Customer demographics analysis  
- Purchase trends by category and season  
- Distribution of spending behavior  

### 3. SQL-Based Business Analysis
Performed advanced queries to extract insights:
- Revenue by gender  
- High-spending discount users  
- Top-rated products  
- Customer segmentation (New, Returning, Loyal)  
- Subscription vs non-subscription behavior  
- Revenue by age group :contentReference[oaicite:4]{index=4}  

### 4. Dashboard Development
- Built an interactive **Power BI dashboard**
- Visualized:
  - Revenue trends  
  - Customer segmentation  
  - Category-wise performance  
  - Age-group analysis  

### 5. Reporting & Presentation
- Created a detailed analytical report  
- Designed a professional presentation (Gamma PPT) for stakeholders  

---

## 📊 Dashboard
The Power BI dashboard provides:
- Total customers: ~3.9K  
- Avg purchase value: ~$59.76  
- Customer segmentation insights  
- Revenue by category and age group  

*(Refer to dashboard screenshot in repository)* :contentReference[oaicite:5]{index=5}  

---

## 📈 Key Insights
- Male customers generated higher total revenue compared to female customers  
- Discounts influence purchases but high spenders still exist without heavy dependency  
- Loyal customers form the largest segment (~3000+ users)  
- Clothing and accessories are top-performing categories  
- Young adults contribute the highest revenue share :contentReference[oaicite:6]{index=6}  

---

## 💡 Business Recommendations
- Introduce targeted loyalty programs for repeat customers  
- Optimize discount strategies to maintain profit margins  
- Promote high-rated products for better conversions  
- Focus marketing on high-value customer segments  
- Encourage subscription-based engagement for retention :contentReference[oaicite:7]{index=7}  

---

## ▶️ How to Run

### Python Analysis

pip install pandas numpy matplotlib seaborn
Run the Jupyter Notebook or Python script.

SQL Analysis

- Import dataset into PostgreSQL/MySQL/SQL Server
- Execute provided SQL queries

Power BI

- Open .pbix file in Power BI Desktop
- Refresh dataset

📁 Project Structure

customer-shopping-behavior-analysis/
│
├── data/
├── sql/
├── analysis/
├── dashboard/
├── presentation/
├── reports/
└── README.md

🚀 Conclusion

This project demonstrates end-to-end data analytics capabilities — from raw data processing to business insight generation. It highlights practical skills in Python, SQL, and Power BI while solving a real-world retail problem.

📎 Project Assets

Dataset

* Python Scripts / Notebook
* SQL Queries
* Power BI Dashboard
* Final Report
* Presentation (PPT)

👨‍💻 Author

Tejas Pocchi
Aspiring Data Analyst | Python | SQL | Power BI
