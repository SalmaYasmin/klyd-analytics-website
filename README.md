# Klyd Analytics Website

A modern, professional SaaS website for Klyd Analytics - an AI-powered ad analytics platform that helps businesses maximize ROI from their marketing spend.

## 🚀 Features

- **Modern Design**: Following 2025 SaaS design trends with smooth gradients, rounded buttons, and clean typography
- **Responsive**: Fully responsive design optimized for all devices
- **Dark/Light Mode**: Toggle between light and dark themes
- **Performance Optimized**: Fast loading times with optimized assets
- **SEO Ready**: Meta tags, structured data, and semantic HTML
- **Accessibility**: WCAG compliant with keyboard navigation support
- **Analytics Ready**: Google Analytics integration ready

## 🎨 Design System

### Color Palette
- **Primary Gradient**: Blue (#2563eb) → Purple (#7c3aed) → Pink (#ec4899)
- **Neutral Colors**: Gray scale from #f9fafb to #111827
- **Dark Mode**: Custom dark theme with high contrast

### Typography
- **Font Family**: Inter (Google Fonts)
- **Weights**: 300, 400, 500, 600, 700, 800

### Components
- Rounded corners (0.375rem to 1.5rem)
- Soft shadows and floating cards
- Smooth transitions and hover effects
- Gradient text and buttons

## 📱 Sections

1. **Hero Section**: Eye-catching headline with animated demo
2. **About Section**: Platform description with key benefits
3. **Services Section**: 6 service cards with icons
4. **Video Demo**: Product showcase section
5. **Pricing Section**: Starter and Pro plans with toggle
6. **Testimonials**: Customer success stories
7. **FAQ Section**: 5 common questions with accordion
8. **Contact Section**: Contact form and information
9. **CTA Section**: Final conversion section
10. **Footer**: Links and social media

## 🛠️ Technologies

- **HTML5**: Semantic markup
- **CSS3**: Modern CSS with custom properties, Grid, Flexbox
- **JavaScript (ES6+)**: Vanilla JS with modern features
- **Font Awesome**: Icons
- **Google Fonts**: Inter font family

## 🚀 Getting Started

### Prerequisites
- Node.js 16+ (for development tools)
- Modern web browser

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/klyd-analytics/website.git
   cd klyd-analytics-website
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development server**
   ```bash
   npm run dev
   ```

4. **Open in browser**
   ```
   http://localhost:3000
   ```

### Production Deployment

#### Vercel (Recommended)
```bash
npm run deploy
```

#### Netlify
```bash
# Build and deploy
npm run build
# Upload dist/ folder to Netlify
```

#### GitHub Pages
```bash
# Push to gh-pages branch
git subtree push --prefix . origin gh-pages
```

## 📊 Performance

- **Lighthouse Score**: 95+ (Performance, Accessibility, Best Practices, SEO)
- **Load Time**: <2.5 seconds
- **Core Web Vitals**: Optimized for LCP, FID, CLS
- **Bundle Size**: Minimal with no heavy frameworks

## 🔧 Customization

### Colors
Edit CSS custom properties in `styles.css`:
```css
:root {
  --primary-blue: #2563eb;
  --primary-purple: #7c3aed;
  --primary-pink: #ec4899;
}
```

### Content
Update content in `index.html`:
- Hero headline and subheadline
- Service descriptions
- Pricing plans
- Testimonials
- FAQ questions

### Analytics
Add your Google Analytics ID in `script.js`:
```javascript
gtag('config', 'YOUR_GA_ID');
```

## 📱 Mobile Optimization

- Responsive grid layouts
- Touch-friendly buttons (44px minimum)
- Optimized typography scales
- Mobile-first approach
- Fast loading on 3G networks

## ♿ Accessibility

- WCAG 2.1 AA compliant
- Keyboard navigation support
- Screen reader friendly
- High contrast ratios
- Focus indicators
- Semantic HTML structure

## 🔍 SEO Features

- Meta descriptions and keywords
- Open Graph tags
- Structured data (JSON-LD)
- Semantic HTML
- Fast loading times
- Mobile-friendly

## 🧪 Testing

### Performance Testing
```bash
npm run lighthouse
```

### Browser Testing
- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## 📈 Analytics Integration

The website is ready for analytics integration:

- Google Analytics 4
- Google Tag Manager
- Facebook Pixel
- Custom event tracking

## 🛡️ Security

- Content Security Policy headers
- XSS protection
- Clickjacking protection
- Secure headers configuration

## 📄 License

MIT License - see LICENSE file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📞 Support

For support and questions:
- Email: hello@klydanalytics.com
- Documentation: [docs.klydanalytics.com](https://docs.klydanalytics.com)

## 🎯 Roadmap

- [ ] A/B testing integration
- [ ] Multi-language support
- [ ] Advanced animations
- [ ] PWA features
- [ ] Blog integration
- [ ] Customer portal

---

Built with ❤️ by the Klyd Analytics team
