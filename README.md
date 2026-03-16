# 🏨 OYE Hotels - Hotel Booking Platform

A full-featured hotel booking application built with FastAPI backend and modern frontend technologies.

**Live Demo:** https://oye-hotels-1.onrender.com/

## 📋 Features

### Search & Filtering
- **Location Dropdown** - Select from 11 major Indian cities
- **Price Range Slider** - Filter hotels from ₹0 to ₹5000
- **Amenities Filter** - Filter by WiFi, Pool, Spa, Gym, and more
- **Real-time Search** - Instant results as you filter

### Sorting Options
- Price: Low to High / High to Low
- Rating: High to Low
- Most Popular (by reviews)
- Recommended (default)

### Booking System
- Simple booking form with validation
- Date picker (check-in/check-out)
- Guest information collection
- Excel export of all bookings

### UI/UX
- Clean, modern design with professional styling
- Responsive layout (mobile, tablet, desktop)
- Real hotel images
- Smooth animations and transitions
- Loading states

## 🏨 Hotel Database

**18 Hotels** across **11 Cities:**
- Mumbai (3 hotels)
- Bengaluru (2 hotels)
- Hyderabad (2 hotels)
- Chennai (2 hotels)
- Delhi (2 hotels)
- Goa (2 hotels)
- Jaipur, Pune, Kolkata, Udaipur (1 each)

**Hotel Types:**
Luxury, Business, Resort, Heritage, Budget, Standard

## 🛠️ Tech Stack

**Backend:**
- FastAPI (Python web framework)
- Uvicorn (ASGI server)
- Jinja2 (Template engine)
- openpyxl (Excel export)

**Frontend:**
- HTML5
- CSS3 (modern styling with gradients, animations)
- Vanilla JavaScript (ES6+)
- Google Fonts (Poppins)

## 📁 Project Structure

```
oye-hotels/
├── main.py              # FastAPI backend
├── requirements.txt     # Python dependencies
├── templates/
│   └── index.html      # Single-page application
├── render.yaml         # Deployment configuration
└── README.md           # Documentation
```

## 🚀 Installation & Setup

### Prerequisites
- Python 3.8 or higher

### Install Dependencies
```bash
pip install -r requirements.txt
```

### Run the Application
```bash
python main.py
```

The application will start on `http://localhost:7000`

Or use uvicorn directly:
```bash
uvicorn main:app --reload --port 7000
```

## 🌐 API Endpoints

### Main Routes
- `GET /` - Home page
- `POST /api/book` - Create booking

### Data Routes
- `GET /api/hotels` - Get hotels with filters
  - Query params: `location`, `min_price`, `max_price`, `amenities`, `sort_by`
- `GET /api/cities` - Get available cities
- `GET /api/amenities` - Get all amenities
- `GET /api/bookings` - Get all bookings
- `GET /api/download-bookings` - Download Excel file

### Example API Calls
```bash
# Get hotels in Mumbai
curl "http://localhost:7000/api/hotels?location=Mumbai"

# Get hotels under ₹2500
curl "http://localhost:7000/api/hotels?max_price=2500"

# Get hotels with WiFi and Pool
curl "http://localhost:7000/api/hotels?amenities=WiFi,Pool"
```

## 📊 Features Breakdown

### Smart Filtering
- Multi-parameter filtering (location + price + amenities)
- Type-safe filtering to prevent errors
- Efficient sorting algorithms

### Excel Export
- Automatic booking data export
- Professional formatting with headers
- Column styling and alignment
- Saves as `bookings.xlsx`

### Responsive Design
- Desktop: 3-4 column grid
- Tablet: 2-3 column grid
- Mobile: Single column layout

## 🎨 Design Highlights

- **Color Scheme:** Professional blue gradient (#1e3c72 to #2a5298)
- **Typography:** Poppins font family
- **Layout:** CSS Grid for hotel cards
- **Animations:** Fade-in, hover effects, smooth transitions
- **Images:** High-quality hotel photos from Unsplash

## 🚀 Deployment

This application is deployed on **Render.com** (free tier).

**Note:** First load may take 10-15 seconds as the free tier spins up. Subsequent loads are instant.

### Deploy Your Own

1. Fork this repository
2. Sign up on [Render.com](https://render.com)
3. Create new Web Service
4. Connect your GitHub repository
5. Configure:
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `python main.py`
6. Deploy!

## 📈 Future Enhancements

- Database integration (PostgreSQL/MongoDB)
- User authentication system
- Payment gateway integration
- Email confirmation system
- Admin dashboard
- Reviews and ratings
- Availability calendar
- Map integration

## 📝 License

This project is open source and available for educational purposes.

---

**Built with Python FastAPI and modern web technologies** 🚀
