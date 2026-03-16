# 🚀 Deploy OYE Hotels on Render.com - Step by Step

## ⏱️ Total Time: 5-7 minutes

---

## 📋 **STEP 1: Prepare Your Code (1 minute)**

### Check that all deployment files exist:

✅ Files already created for you:
- `.gitignore` - Prevents unnecessary files from being uploaded
- `requirements.txt` - Lists all Python dependencies
- `render.yaml` - Render configuration (optional)
- `main.py` - Updated to use dynamic PORT

### Verify everything works locally:

```bash
# Test locally first
python main.py

# Open browser: http://localhost:7000
# Make a test booking to ensure everything works
```

---

## 📋 **STEP 2: Push Code to GitHub (2 minutes)**

### 2.1 Initialize Git Repository

Open Command Prompt in `C:\OYE` and run:

```bash
git init
```

### 2.2 Add All Files

```bash
git add .
```

### 2.3 Commit Your Code

```bash
git commit -m "Initial commit - OYE Hotels booking application"
```

### 2.4 Create GitHub Repository

1. Go to: **https://github.com/new**
2. Repository name: `oye-hotels` (or any name you prefer)
3. Description: `Full-stack hotel booking platform with FastAPI`
4. Select: **Public** (so Render can access it)
5. **DO NOT** check "Initialize with README" (we already have code)
6. Click: **"Create repository"**

### 2.5 Connect and Push to GitHub

GitHub will show you commands. Run these in your Command Prompt:

```bash
git remote add origin https://github.com/YOUR_USERNAME/oye-hotels.git
git branch -M main
git push -u origin main
```

**Replace `YOUR_USERNAME` with your actual GitHub username!**

Example:
```bash
git remote add origin https://github.com/john123/oye-hotels.git
git branch -M main
git push -u origin main
```

✅ Your code is now on GitHub! You should see it at:
`https://github.com/YOUR_USERNAME/oye-hotels`

---

## 📋 **STEP 3: Sign Up for Render.com (30 seconds)**

1. Go to: **https://render.com**
2. Click: **"Get Started"** or **"Sign Up"**
3. Choose: **"Sign up with GitHub"** (easiest option)
4. Authorize Render to access your GitHub account
5. ✅ You're signed up!

---

## 📋 **STEP 4: Create Web Service on Render (2 minutes)**

### 4.1 Create New Web Service

1. On Render dashboard, click: **"New +"** button (top right)
2. Select: **"Web Service"**

### 4.2 Connect Your Repository

1. You'll see your GitHub repositories
2. Find: **`oye-hotels`** repository
3. Click: **"Connect"**

If you don't see your repo:
- Click "Configure account"
- Grant Render access to all repos or just `oye-hotels`
- Go back and refresh

### 4.3 Configure Your Web Service

Fill in these settings:

**Basic Settings:**

| Field | Value |
|-------|-------|
| **Name** | `oye-hotels` (or choose your own) |
| **Region** | Select closest to you (e.g., Oregon, Frankfurt) |
| **Branch** | `main` |
| **Root Directory** | Leave blank |
| **Runtime** | `Python 3` |

**Build & Deploy Settings:**

| Field | Value |
|-------|-------|
| **Build Command** | `pip install -r requirements.txt` |
| **Start Command** | `uvicorn main:app --host 0.0.0.0 --port $PORT` |

**Instance Type:**

- Select: **"Free"** (yes, it's completely free!)

### 4.4 Deploy!

1. Scroll down
2. Click: **"Create Web Service"**
3. 🎉 Render will start building your app!

---

## 📋 **STEP 5: Wait for Deployment (1-2 minutes)**

You'll see a live log showing:

```
==> Cloning from https://github.com/YOUR_USERNAME/oye-hotels...
==> Running 'pip install -r requirements.txt'
==> Installing dependencies...
==> Build successful!
==> Starting service...
==> Your service is live!
```

**Important:**
- First deployment takes 1-2 minutes
- You'll see real-time logs
- Wait for: **"Your service is live!"**

---

## 📋 **STEP 6: Get Your Public URL**

Once deployed, you'll see at the top:

```
🌐 https://oye-hotels.onrender.com
```

**This is your permanent URL!**

Copy this URL - this is what you'll share with your interviewer!

---

## 📋 **STEP 7: Test Your Deployed App (1 minute)**

1. Click on the URL: `https://oye-hotels.onrender.com`
2. Your app should load!
3. Test features:
   - ✅ Search for hotels by location
   - ✅ Use price slider
   - ✅ Make a test booking
   - ✅ Check if Excel export works

**Note:** First load might take 10-20 seconds (free tier "wakes up")

---

## 🎯 **STEP 8: Share with Interviewer**

### Your Email:

```
Subject: OYE Hotels - Live Demo Link

Hi [Interviewer Name],

I've deployed the OYE Hotels booking platform. Here are the details:

🌐 Live Application: https://oye-hotels.onrender.com
📂 GitHub Repository: https://github.com/YOUR_USERNAME/oye-hotels

Features Implemented:
✅ 18 hotels across 11 major Indian cities
✅ Real hotel images from Unsplash API
✅ Advanced search & filtering (location, price range, amenities)
✅ Autocomplete location search
✅ Sorting options (price, rating, popularity)
✅ Complete booking system with Excel export
✅ Professional responsive UI
✅ RESTful API with FastAPI

Tech Stack:
• Backend: FastAPI (Python)
• Frontend: HTML5, CSS3, Vanilla JavaScript
• Templates: Jinja2
• Data Export: Excel (openpyxl)

Feel free to explore and make test bookings!

Best regards,
[Your Name]
```

---

## 🎉 **YOU'RE DONE!**

Your app is now live at:
```
https://oye-hotels.onrender.com
```

This URL:
- ✅ Works 24/7
- ✅ Is permanent (won't expire)
- ✅ Is free forever
- ✅ Auto-updates when you push to GitHub
- ✅ Looks professional

---

## 🔧 **Troubleshooting**

### Issue: "Build failed"
**Check:**
- `requirements.txt` has all dependencies
- `main.py` uses `PORT` environment variable
- All files committed to GitHub

### Issue: "Service unavailable"
**Solution:**
- Free tier "sleeps" after inactivity
- First request takes 10-20 seconds to wake up
- This is normal for free tier

### Issue: "Excel export not working"
**Note:**
- Excel file is temporary on free tier
- Each deployment restarts (file is cleared)
- This is fine for demo purposes
- In interview, explain you'd use a database in production

### Issue: Can't see my GitHub repo
**Solution:**
- Go to Render → Account Settings
- GitHub → Configure
- Grant access to repositories

---

## 💡 **Pro Tips**

1. **Custom Domain** (Optional):
   - Settings → Custom Domain
   - Add your own domain if you have one

2. **Environment Variables** (Optional):
   - Settings → Environment
   - Add secrets if needed

3. **Auto-Deploy**:
   - Every `git push` automatically redeploys
   - Great for showing continuous deployment

4. **Logs**:
   - Click "Logs" tab to see real-time server logs
   - Helpful for debugging

---

## 📊 **After Deployment Checklist**

- [ ] App is accessible at Render URL
- [ ] All 18 hotels are displaying
- [ ] Search filters work (location, price)
- [ ] Sorting works (price, rating)
- [ ] Can make a booking
- [ ] UI is responsive on mobile
- [ ] Images load properly
- [ ] No console errors

---

## 🚀 **Next Steps**

1. ✅ Test your deployed app thoroughly
2. ✅ Make 2-3 test bookings
3. ✅ Share URL with interviewer
4. ✅ Add to your resume/portfolio
5. ✅ Be ready to explain the tech stack

---

**Congratulations! Your app is live! 🎉**

**Time Taken:**
- Code prep: 1 min
- GitHub push: 2 min
- Render signup: 30 sec
- Deployment: 2 min
- **Total: ~5-6 minutes**

---

## 📞 **Need Help?**

If something doesn't work:
1. Check Render logs for errors
2. Verify GitHub repo has all files
3. Ensure requirements.txt is complete
4. Try rebuilding: Settings → Manual Deploy → Deploy Latest Commit

---

**You're ready to impress your interviewer! 🌟**
