# SD Associates - Vehicle Loan & Finance CRM

A fast, lightweight, and modern CRM tailored specifically for **SD Associates** to manage vehicle loan leads, finance applications, and partner disbursements.

---

## 🚀 Quick Start

The server is currently running at:
👉 **[http://localhost:4000](http://localhost:4000)**

To run or restart the CRM at any time, run:
```bash
npm start
```
or in watch mode:
```bash
npm run dev
```

---

## 📋 Lead Fields (Updated)

Every lead record includes all required fields with sequential numeric numbering:

1. **Sl. No** (Plain numbers: `1`, `2`, `3`, `4`... auto-generated sequentially)
2. **Customer Name** (Full legal/applicant name)
3. **Mobile Number** (10-digit number with direct WhatsApp and Call links)
4. **Loan Type** (`New Car`, `Used Car`, `Refinance`)
5. **Loan Amount** (in ₹ INR, formatted with quick amount chips: 3L, 5L, 8L, 10L, 15L)
6. **Vehicle Number** (Registration number or "New")
7. **Vehicle Model** (e.g., Swift, Creta, Nexon, Scorpio, etc.)
8. **Variant** (e.g., VXI, SX, ZXI+, Diesel AT, etc.)
9. **Reference Given By** (Referrer / Lead source, e.g., Dealer, Friend, Walk-in)
10. **Which Finance I Given The Lead** (Bank / NBFC partner, e.g., HDFC Bank, Sundaram, Cholamandalam, ICICI, etc.)
11. **Login Date** (Date of logging file into finance company)
12. **Status** (`Logged In`, `In Process`, `Documents Pending`, `Approved`, `Disbursed`, `Rejected`, `Cancelled`)
13. **Disbursement Details (Active when Status is 'Disbursed')**:
    * **Disbursed Amount** (Final disbursed loan amount in ₹)
    * **Disbursed Date** (Date file was disbursed)
    * **UTR No** (UTR / Bank transfer reference number)
    * **RTO Amount** (RTO hypothecation / transfer expense in ₹)
    * **RTO Name** (RTO office / agent name)
    * **Seller Amount** (Net payment to vehicle dealer / seller in ₹)
    * **Seller Name** (Vehicle dealer / seller name)
    * **Seller Date** (Date payment or handover was made to the seller)
+ **Additional Remarks / Follow-up Notes** *(Tenure has been completely removed)*

---

## ✨ Key Features

- **Lead Entry Form**:
  - Modal form accessible via **"+ New Lead Entry"** button.
  - Automatically fetches the next serial number (`SD-004`, `SD-005`...).
  - Pre-sets today's date for quick filing.

- **View Details**:
  - **Directory Table**: Clean, responsive table showing all active leads, formatted amounts in Indian Rupees, and color-coded status badges.
  - **Full Details Modal**: Click **"View"** on any row to open a complete customer dossier with:
    - Loan Summary (Type, Amount, Tenure, Finance Partner, Login Date, Status)
    - Vehicle & Customer Profile (Vehicle No, Model, Variant, Mobile, Reference)
    - Direct **Call Customer** button
    - Direct **WhatsApp** message button
    - **Print Slip**: Print or save a clean customer lead slip as PDF.

- **Edit / Re-entry Workflow**:
  - Click **"Edit"** on any row or inside the view modal to load all existing data into the form.
  - An amber **"Re-entry / Edit Mode"** banner appears to indicate you are modifying an existing record.
  - Update any of the 13 fields and click **"Update Lead Details"** to save.

- **Search & Filtering**:
  - Instant search across customer name, phone, serial number, vehicle number, model, reference, and finance company.
  - Quick status tabs: **All Leads**, **Logged In**, **In Process**, **Approved**, **Disbursed**, **Rejected**.
  - Dropdowns to filter by **Loan Type** (New Car, Used Car, Refinance) and **Finance Company**.

- **Download & Export Options (By Status Type & Loan Type)**:
  - **Month-Wise Report (Strictly by Disbursed Date)**:
    - Dedicated Month Picker in both the main directory filter and the Download Modal.
    - Accurately aggregates disbursements strictly based on **Disbursed Date** (`disbursed_date`), ignoring login date.
    - Quick "This Month" and "All Months" buttons for one-click monthly reconciliation.
  - **Download in PDF (Table Format)**:
    - Generates an executive A4 landscape table report with summary KPI cards (Total Leads, Loan Volume, Disbursed Volume, Average Loan Size).
    - Automatically triggers browser print/Save-as-PDF dialog with `@page { size: landscape; margin: 8mm; }`.
  - **Download CSV / Excel**:
    - Filter by Status Type (`All Statuses`, `Logged In`, `In Process`, `Approved`, `Disbursed`, etc.) and Loan Type (`New Car`, `Used Car`, `Refinance`).
    - Includes Disbursed Amount, Disbursed Date, RTO Amount, and Seller Amount.
  - **Live Export Preview**:
    - Displays exact count of matching leads, total loan volume, and automatic report filename (e.g., `SD_Associates_DisbursedMonth_2026_11_Report.csv`).
  - **Quick Table Download**:
    - Click "Download Table" in the table header to instantly download the current filtered view.

- **Executive KPI Dashboard**:
  - Total Leads Count
  - Active Pipeline / In Process
  - Approved Leads
  - Disbursed Count & Disbursed Value (in ₹ Lakhs/Crores)
  - Total Loan Volume Pipeline

- **Data Persistence**:
  - **Zero-Dependency Native SQLite Storage**: All data is stored locally in `data/crm.db` using Node.js built-in SQLite engine. No external database server or internet connection required.
