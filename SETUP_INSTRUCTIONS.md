# 📋 Setup Instructions for OYE Hotels

## 🚀 Quick Start

### 1. Install Dependencies

First, install the required Python packages:

```bash
pip install -r requirements.txt
```

This will install:
- FastAPI
- Uvicorn
- Jinja2
- python-multipart
- **openpyxl** (for Excel functionality)

### 2. Start the Server

Run the server using the batch file:

```bash
start_server.bat
```

Or manually:

```bash
python main.py
```

### 3. Access the Application

Open your browser and go to:
```
http://localhost:7000
```

## 📊 Excel Booking Feature

### How It Works:

1. **Automatic Excel File Creation**: When you start the server, it automatically creates a `bookings.xlsx` file with professional formatting.

2. **Auto-Save Bookings**: Every time a customer books a hotel, their information is automatically saved to the Excel file.

3. **Excel File Contains**:
   - Booking ID
   - Hotel Name
   - Hotel Location
   - Hotel Type
   - Guest Name
   - Email
   - Phone
   - Check-in Date
   - Check-out Date
   - Number of Guests
   - Price per Night
   - Booking Date & Time

### Download Bookings Excel File:

You can download the Excel file at any time by visiting:
```
http://localhost:7000/api/download-bookings
```

Or clicking the download link in your browser.

### View the Excel File:

The file `bookings.xlsx` is created in the same folder as `main.py`. You can:
- Open it with Microsoft Excel
- Open it with Google Sheets
- Open it with LibreOffice Calc

## 📝 Features:

✅ **Professional Excel Formatting**:
   - Blue header with white text
   - Alternating row colors for better readability
   - Auto-sized columns
   - Center-aligned text

✅ **Real-time Updates**:
   - Every booking is instantly saved
   - No manual export needed

✅ **Persistent Storage**:
   - All bookings are saved permanently
   - Survives server restarts

## 🎯 For Interview Demo:

1. Start the server
2. Make a few test bookings through the website
3. Open `bookings.xlsx` to show the interviewer
4. Or download it via: `http://localhost:7000/api/download-bookings`

This demonstrates:
- File I/O operations
- Excel manipulation with openpyxl
- API endpoint for file downloads
- Professional data export functionality

---

**Ready to impress! 🌟**
