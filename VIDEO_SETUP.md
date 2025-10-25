# Video Setup Instructions

## 🎬 Adding Your Demo Video

To add your movie to the demo section, follow these steps:

### 1. Video File Requirements
- **Format**: MP4 (primary) and WebM (optional, for better browser support)
- **Resolution**: 1920x1080 (Full HD) or 1280x720 (HD)
- **Duration**: 30-90 seconds recommended
- **File Size**: Under 50MB for fast loading
- **Aspect Ratio**: 16:9 (landscape)

### 2. File Placement
Place your video files in the project root directory:
```
klyd-analytics-website/
├── demo-video.mp4          # Your main video file
├── demo-video.webm         # Optional: WebM version
├── demo-poster.jpg        # Optional: Video thumbnail
└── ...
```

### 3. Video Optimization (Recommended)
For best performance, optimize your video:

```bash
# Install FFmpeg (if not already installed)
# macOS: brew install ffmpeg
# Ubuntu: sudo apt install ffmpeg

# Optimize MP4
ffmpeg -i your-video.mp4 -c:v libx264 -crf 23 -c:a aac -b:a 128k -movflags +faststart demo-video.mp4

# Create WebM version (optional)
ffmpeg -i your-video.mp4 -c:v libvpx-vp9 -crf 30 -c:a libopus -b:a 128k demo-video.webm

# Create poster image
ffmpeg -i your-video.mp4 -ss 00:00:05 -vframes 1 -q:v 2 demo-poster.jpg
```

### 4. Current Video Setup
The website is already configured to use:
- **Video file**: `demo-video.mp4`
- **WebM version**: `demo-video.webm` (optional)
- **Poster image**: `demo-poster.jpg` (optional)

### 5. Testing Your Video
1. Save your video as `demo-video.mp4` in the project folder
2. Refresh the website at `http://127.0.0.1:59792`
3. Scroll to the "See Klyd in Action" section
4. Click the play button to test your video

### 6. Video Content Suggestions
For the best demo video, consider including:
- ✅ Dashboard overview (5-10 seconds)
- ✅ Analytics charts and graphs (10-15 seconds)
- ✅ ROI tracking features (10-15 seconds)
- ✅ User interface highlights (10-15 seconds)
- ✅ Call-to-action at the end (5 seconds)

### 7. Troubleshooting
If your video doesn't play:
- Check file format (MP4 recommended)
- Verify file size (under 50MB)
- Ensure file is in the project root
- Check browser console for errors
- Try different browsers (Chrome, Firefox, Safari)

### 8. Alternative: YouTube/Vimeo Embed
If you prefer to host on YouTube or Vimeo:

1. Upload your video to YouTube/Vimeo
2. Get the embed code
3. Replace the video element in `index.html` with:
```html
<iframe 
    src="YOUR_EMBED_URL" 
    frameborder="0" 
    allowfullscreen
    class="demo-video">
</iframe>
```

## 🎯 Ready to Test!
Your website is running at: **http://127.0.0.1:59792**

Just add your `demo-video.mp4` file to the project folder and refresh the page!
