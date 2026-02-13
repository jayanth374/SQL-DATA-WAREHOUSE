-------queries to create table
----table1
create table bronze.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firtsname nvarchar(50),
cst_lastname nvarchar(50),
cst_marital_status nvarchar(50), 
cst_gndr nvarchar(50),
cst_create_date date
)
----table2
CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);
---table3
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);
-----table4
CREATE TABLE bronze.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

-----table5
CREATE TABLE bronze.erp_cust_az12 (
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
);
-----table6
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);

-----queries to insert data---
---data1
bulk insert bronze.crm_cust_info
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_crm\cust_info.csv'
with(
firstrow=2,
fieldterminator=',',
tablock
)

--data2
BULK INSERT bronze.crm_prd_info
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_crm\prd_info.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)
---data3
BULK INSERT bronze.crm_sales_details
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_crm\sales_details.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)
----data4
BULK INSERT bronze.erp_loc_a101
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_erp\LOC_A101.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

  ----data5
BULK INSERT bronze.erp_cust_az12
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_erp\CUST_AZ12.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

  ------data 6--
BULK INSERT bronze.erp_px_cat_g1v2
from 'C:\Users\M Jayanth Reddy\Downloads\datasets\datasets\source_erp\PX_CAT_G1V2.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

