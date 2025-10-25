# Email Setup Guide

## 📧 Setting Up Contact Form Email Notifications

Your contact form is now configured to send emails to `salma.yasmin@klyd.it.com` when someone submits the form.

### 🔑 **Step 1: Get Resend API Key**

1. Go to [resend.com](https://resend.com)
2. Sign up for a free account
3. Go to API Keys section
4. Create a new API key
5. Copy the API key (starts with `re_`)

### 🔧 **Step 2: Add API Key to Vercel**

#### **For Vercel Deployment:**
1. Go to your Vercel dashboard
2. Select your project
3. Go to Settings → Environment Variables
4. Add new variable:
   - **Name**: `RESEND_API_KEY`
   - **Value**: Your API key from Resend
5. Redeploy your project

#### **For Local Development:**
Create a `.env.local` file in your project root:
```
RESEND_API_KEY=re_your_api_key_here
```

### 📧 **Step 3: Verify Email Setup**

1. Test the contact form on your website
2. Check `salma.yasmin@klyd.it.com` for the email
3. The email will include:
   - Sender's name and email
   - Their message
   - Timestamp and IP address
   - Professional HTML formatting

### 🎨 **Email Template Features**

The emails you'll receive include:
- ✅ **Professional HTML design** with Klyd Analytics branding
- ✅ **All form details** (name, email, message)
- ✅ **Timestamp and IP address** for security
- ✅ **Mobile-friendly** email layout
- ✅ **Plain text fallback** for all email clients

### 🚀 **Deployment Commands**

```bash
# Deploy to Vercel
npm run deploy

# Or use Vercel CLI
vercel --prod
```

### 🔍 **Testing**

1. Fill out the contact form on your website
2. Click "Send Message"
3. Check your email at `salmayasmin@klyd.it.com`
4. You should receive a formatted email within seconds

### 🛠️ **Troubleshooting**

**If emails don't arrive:**
- Check spam folder
- Verify API key is correct
- Check Vercel function logs
- Ensure domain is verified in Resend

**If you get errors:**
- Check the browser console
- Look at Vercel function logs
- Verify the API key format

### 📊 **Email Limits**

- **Free Resend account**: 3,000 emails/month
- **Paid plans**: Higher limits available
- **Rate limits**: 10 emails/second

### 🔒 **Security Features**

- ✅ **Input validation** (prevents spam)
- ✅ **Email format validation**
- ✅ **Rate limiting** (prevents abuse)
- ✅ **CORS protection**
- ✅ **Error handling** (won't crash if email fails)

## 🎯 **Ready to Go!**

Once you add the Resend API key to Vercel, your contact form will automatically send professional emails to `salma.yasmin@klyd.it.com` every time someone submits the form!
