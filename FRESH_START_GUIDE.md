# 🔄 FRESH START - Deploy from Scratch

## ✨ Clean Slate - Let's Do This Right!

---

## 📋 **STEP 1: Prepare GitHub Repository (1 minute)**

### 1.1 Create Repository on GitHub

1. **Go to:** https://github.com/new

2. **Fill in:**
   - **Repository name:** `oye-hotels`
   - **Description:** (optional) `Hotel booking platform with FastAPI`
   - **Public** ✅ (select this)
   - **DO NOT check any boxes** (no README, no .gitignore, no license)

3. **Click:** "Create repository" (green button)

4. **Keep this page open!** You'll see instructions - ignore them, we have our own script.

✅ **Your repository is now at:** `https://github.com/gagandeep473758/oye-hotels`

---

## 📋 **STEP 2: Get Personal Access Token (1 minute)**

### 2.1 Create Token

1. **Go to:** https://github.com/settings/tokens

2. **Click:** "Generate new token" → "Generate new token (classic)"

3. **Fill in:**
   - **Note:** `oye-hotels-deployment`
   - **Expiration:** Select "90 days"
   - **Select scopes:** ✅ Check ONLY the `repo` checkbox

4. **Scroll down, click:** "Generate token"

5. **COPY THE TOKEN!**
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
   - **Save it in Notepad** - you won't see it again!

✅ **Token created and copied!**

---

## 📋 **STEP 3: Run Fresh Start Script (2 minutes)**

### 3.1 Run the Script

1. **Open File Explorer**

2. **Navigate to:** `C:\OYE`

3. **Find file:** `fresh-start.bat`

4. **Double-click** it

### 3.2 Follow the Prompts

The script will:
- ✅ Delete old Git history
- ✅ Create fresh Git repository
- ✅ Add all your files
- ✅ Create first commit
- ✅ Add GitHub remote

### 3.3 When Asked for Username

```
Enter your GitHub username: gagandeep473758
```

Just press Enter (or type `gagandeep473758`)

### 3.4 When Ready to Push

Press any key to continue

### 3.5 Enter Credentials

**Username:** `gagandeep473758`
**Password:** Paste your token (the `ghp_...` one you copied)

**Note:** When you paste the password, you won't see anything - that's normal!

---

## ✅ **STEP 4: Verify Success**

### You should see:

```
SUCCESS! CODE IS NOW ON GITHUB!

Your repository: https://github.com/gagandeep473758/oye-hotels
```

### Verify on GitHub:

1. Go to: https://github.com/gagandeep473758/oye-hotels
2. You should see all your files!
3. Look for: `main.py`, `templates/`, `requirements.txt`, etc.

✅ **Code is on GitHub!**

---

## 🚀 **STEP 5: Deploy on Render.com (3 minutes)**

### 5.1 Sign Up

1. **Go to:** https://render.com

2. **Click:** "Get Started" or "Sign Up"

3. **Choose:** "Sign up with GitHub"

4. **Authorize** Render to access your GitHub

### 5.2 Create Web Service

1. **Click:** "New +" (top right)

2. **Select:** "Web Service"

3. **Find repository:** `oye-hotels`

4. **Click:** "Connect"

### 5.3 Configure Service

**Fill in these settings:**

| Field | Value |
|-------|-------|
| **Name** | `oye-hotels` |
| **Region** | Oregon (US West) or closest to you |
| **Branch** | `main` |
| **Runtime** | `Python 3` |
| **Build Command** | `pip install -r requirements.txt` |
| **Start Command** | `uvicorn main:app --host 0.0.0.0 --port $PORT` |

**Scroll down to Instance Type:**
- Select: **Free**

### 5.4 Deploy!

1. **Click:** "Create Web Service" (bottom)

2. **Wait 1-2 minutes** - You'll see build logs

3. **When done, you'll see:** "Your service is live!"

---

## 🎉 **STEP 6: Get Your Live URL**

### Your app is now live at:

```
https://oye-hotels.onrender.com
```

**Or something like:**
```
https://oye-hotels-xxxx.onrender.com
```

Copy this URL!

---

## 📧 **STEP 7: Share with Interviewer**

### Send this email:

```
Subject: OYE Hotels - Live Demo

Hi [Interviewer Name],

I've completed and deployed the OYE Hotels booking platform:

🌐 Live Application: https://oye-hotels.onrender.com
💻 GitHub Repository: https://github.com/gagandeep473758/oye-hotels

Key Features:
✅ 18 hotels across 11 major Indian cities
✅ Real hotel images from Unsplash
✅ Advanced search & filtering (location, price, amenities)
✅ Autocomplete location search
✅ Sorting options (price, rating, popularity)
✅ Complete booking system with Excel export
✅ Professional responsive UI

Tech Stack:
• Backend: FastAPI (Python)
• Frontend: HTML5, CSS3, Vanilla JavaScript
• Templates: Jinja2
• Data Export: Excel (openpyxl)

Please feel free to explore and make test bookings!

Best regards,
[Your Name]
```

---

## ⏱️ **Total Time Breakdown:**

- Create GitHub repo: 1 min
- Create token: 1 min
- Run fresh-start.bat: 2 min
- Deploy on Render: 3 min
- **Total: ~7 minutes**

---

## 🆘 **If Script Fails:**

### Alternative: GitHub Desktop

1. **Download:** https://desktop.github.com/
2. **Install** and **login** with `gagandeep473758`
3. **File → Add Local Repository → `C:\OYE`**
4. **Click:** "Publish repository"
5. **Name:** `oye-hotels`
6. **Uncheck:** "Keep this code private"
7. **Click:** "Publish repository"
8. **Done!**

Then proceed to Step 5 (Deploy on Render.com)

---

## ✅ **Checklist:**

Before starting:
- [ ] GitHub repository created (`oye-hotels`)
- [ ] Personal Access Token created and saved
- [ ] `fresh-start.bat` ready to run

After completion:
- [ ] Code visible on GitHub
- [ ] Render deployment successful
- [ ] Live URL accessible
- [ ] Test booking works
- [ ] Email sent to interviewer

---

**Ready? Double-click `fresh-start.bat` in C:\OYE and let's deploy! 🚀**
