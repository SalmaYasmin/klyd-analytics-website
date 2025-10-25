// Vercel serverless function for contact form
import { Resend } from 'resend';

const resend = new Resend(process.env.RESEND_API_KEY);

export default async function handler(req, res) {
  // Set CORS headers
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

  // Handle preflight requests
  if (req.method === 'OPTIONS') {
    res.status(200).end();
    return;
  }

  // Only allow POST requests
  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method not allowed' });
  }

  try {
    const { name, email, message } = req.body;

    // Validate required fields
    if (!name || !email || !message) {
      return res.status(400).json({ 
        error: 'Missing required fields',
        details: 'Name, email, and message are required'
      });
    }

    // Validate email format
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      return res.status(400).json({ 
        error: 'Invalid email format' 
      });
    }

    // Here you would typically:
    // 1. Save to database
    // 2. Send email notification
    // 3. Add to CRM
    // 4. Send auto-responder

    // For demo purposes, we'll just log the data
    console.log('Contact form submission:', {
      name,
      email,
      message,
      timestamp: new Date().toISOString(),
      ip: req.headers['x-forwarded-for'] || req.connection.remoteAddress
    });

    // Send email notification
    try {
      await resend.emails.send({
        from: 'Klyd Analytics <noreply@klydanalytics.com>',
        to: ['salma.yasmin@klyd.it.com'],
        subject: `New Contact Form Submission from ${name}`,
        html: `
          <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
            <h2 style="color: #2563eb;">New Contact Form Submission</h2>
            <div style="background: #f8fafc; padding: 20px; border-radius: 8px; margin: 20px 0;">
              <p><strong>Name:</strong> ${name}</p>
              <p><strong>Email:</strong> ${email}</p>
              <p><strong>Message:</strong></p>
              <div style="background: white; padding: 15px; border-radius: 4px; border-left: 4px solid #2563eb;">
                ${message.replace(/\n/g, '<br>')}
              </div>
            </div>
            <p style="color: #6b7280; font-size: 14px;">
              Submitted on ${new Date().toLocaleString()}<br>
              IP: ${req.headers['x-forwarded-for'] || req.connection.remoteAddress}
            </p>
          </div>
        `,
        text: `
New Contact Form Submission

Name: ${name}
Email: ${email}
Message: ${message}

Submitted on: ${new Date().toLocaleString()}
IP: ${req.headers['x-forwarded-for'] || req.connection.remoteAddress}
        `
      });
    } catch (emailError) {
      console.error('Email sending failed:', emailError);
      // Don't fail the request if email fails, just log it
    }

    // Return success response
    res.status(200).json({
      success: true,
      message: 'Thank you for your message! We\'ll get back to you soon.',
      id: `contact_${Date.now()}`
    });

  } catch (error) {
    console.error('Contact form error:', error);
    
    res.status(500).json({
      error: 'Internal server error',
      message: 'Sorry, there was an error processing your request. Please try again later.'
    });
  }
}
