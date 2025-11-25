# SDRC - Club de Rugby Santo Domingo

 Landing Page of Club de Rugby Santo Domingo (SDRC)

## 🚀 Firebase Hosting Setup

This is a Firebase web application ready to be deployed to Firebase Hosting (free tier).

### Prerequisites

1. Install Node.js (if not already installed)
2. Install Firebase CLI globally:
   ```bash
   npm install -g firebase-tools
   ```

### Initial Setup

1. **Login to Firebase:**
   ```bash
   firebase login
   ```

2. **Initialize Firebase project:**
   ```bash
   firebase init hosting
   ```
   - Select "Use an existing project" or "Create a new project"
   - Set public directory to: `public`
   - Configure as single-page app: `Yes`
   - Set up automatic builds: `No` (or `Yes` if you want GitHub Actions)

3. **Update project ID:**
   Edit `.firebaserc` and replace `your-project-id` with your actual Firebase project ID.

### Deployment

**Opción 1: Usar el script de despliegue (recomendado)**
```bash
./deploy.sh
```

**Opción 2: Desplegar manualmente**
```bash
firebase deploy --only hosting
```

**Preview local antes de desplegar:**
```bash
firebase serve
```
Luego visita `http://localhost:5000` en tu navegador.

### Project Structure

```
SDRC/
├── public/
│   └── index.html          # Main landing page
├── firebase.json           # Firebase hosting configuration
├── .firebaserc            # Firebase project configuration
├── .gitignore             # Git ignore rules
└── README.md              # This file
```

### Features

- ✅ Responsive design (mobile-friendly)
- ✅ Modern UI with smooth navigation
- ✅ Sections: About, Teams, Fixtures, Join Us, Contact
- ✅ Ready for Firebase Hosting deployment
- ✅ Free hosting on Firebase (Spark plan)

### Customization

- Update images: Replace placeholder URLs in `public/index.html`
- Update contact information: Edit the contact section
- Update team information: Modify the teams section
- Add your logo: Replace the logo image URL in the header

### Firebase Hosting Benefits

- **Free SSL certificate** (HTTPS)
- **Global CDN** for fast loading
- **Custom domain** support
- **Free tier** includes:
  - 10 GB storage
  - 360 MB/day bandwidth
  - Custom domain support

### Next Steps

1. Replace placeholder images with actual rugby club photos
2. Update contact information and social media links
3. Add actual fixture/results data
4. Consider adding a contact form (Firebase Functions)
5. Set up a custom domain (optional)

---

© 2024 Club de Rugby Santo Domingo. All rights reserved.
