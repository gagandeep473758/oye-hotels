# ⚡ QUICK SHARE - Share Your Project in 2 Minutes!

## 🚀 **Fastest Way: Use ngrok (RECOMMENDED FOR INTERVIEWS)**

### **Why ngrok?**
- Takes **30 seconds**
- **No signup** required for basic use
- Perfect for **live interviews**
- Works on **your local machine**

---

## 📋 **Step-by-Step (2 Minutes Total)**

### **Step 1: Download ngrok** (1 minute)

1. Go to: **https://ngrok.com/download**
2. Download for Windows
3. Extract the `ngrok.exe` file to your `C:\OYE` folder

### **Step 2: Start Your Server** (30 seconds)

Open Command Prompt in `C:\OYE` and run:
```bash
python main.py
```

Keep this terminal open!

### **Step 3: Share with ngrok** (30 seconds)

Open a **NEW** Command Prompt in `C:\OYE` and run:
```bash
ngrok http 7000
```

You'll see something like:
```
Forwarding   https://abc123def456.ngrok-free.app -> http://localhost:7000
```

### **Step 4: Share the URL**

Copy the `https://....ngrok-free.app` URL and share it with your interviewer!

Example: `https://abc123def456.ngrok-free.app`

---

## 📧 **Quick Email Template**

```
Hi [Interviewer Name],

Here's the live link to my OYE Hotels project:

🔗 https://[YOUR-NGROK-URL].ngrok-free.app

The application includes:
✅ 18 hotels across Indian cities
✅ Search & filter functionality
✅ Booking system with Excel export
✅ Professional UI with real images

Please let me know if you have any issues accessing it!

Best regards,
[Your Name]
```

---

## ⚠️ **Important Notes:**

1. **Keep both terminals open** while interviewer is viewing
2. **ngrok URL changes** each time you restart (that's okay!)
3. **First-time visitors** may see ngrok warning page - just click "Visit Site"
4. **Test the URL yourself** in browser before sharing

---

## �� **Alternative: If You Have 5 Minutes**

### **Use Render.com (Permanent Link)**

1. Push to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Hotel booking app"
   ```

2. Create GitHub repo at: https://github.com/new

3. Push code:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/oye-hotels.git
   git push -u origin main
   ```

4. Deploy on Render.com:
   - Sign up at https://render.com
   - New → Web Service
   - Connect GitHub repo
   - Deploy!

5. Get permanent URL like: `https://oye-hotels.onrender.com`

---

## 🆘 **Troubleshooting ngrok**

**Issue**: "ngrok: command not found"
- Make sure `ngrok.exe` is in your current folder
- Or add ngrok to your PATH

**Issue**: Port 7000 already in use
- Kill existing Python processes
- Or change port in main.py

**Issue**: ngrok warning page
- Normal! Visitor just needs to click "Visit Site"

---

## ✅ **Checklist Before Sharing:**

- [ ] Server is running (`python main.py`)
- [ ] ngrok is running (`ngrok http 7000`)
- [ ] Tested the ngrok URL in your browser
- [ ] Made a test booking to verify Excel export works
- [ ] URL copied and ready to share

---

**You're ready! This will definitely impress your interviewer! 🌟**

**Time Required:**
- Download ngrok: 1 minute
- Start server: 30 seconds
- Start ngrok: 30 seconds
- **Total: 2 minutes!**
