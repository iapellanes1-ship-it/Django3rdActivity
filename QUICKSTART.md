# Quick Start Guide

## Running the Website

### Windows (Easy Method)
Simply double-click `run.bat` in the project folder. This will:
1. Create a virtual environment (if needed)
2. Install Django
3. Apply database migrations
4. Start the development server

Then open your browser to: **http://127.0.0.1:8000/**

### Windows (PowerShell)
```powershell
.\venv\Scripts\Activate.ps1
python manage.py runserver
```

### macOS/Linux
```bash
chmod +x run.sh
./run.sh
```

Or manually:
```bash
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

## Pages Available

1. **Home** - http://127.0.0.1:8000/
2. **About** - http://127.0.0.1:8000/about/
3. **Contact** - http://127.0.0.1:8000/contact/

## Navigation Bar Features

✓ Located in the upper right corner
✓ Beautiful gradient styling (purple theme)
✓ Active page highlighting
✓ Smooth hover effects
✓ Fully responsive (works on mobile/tablet)

## Project Structure

```
my_todo_project/
├── manage.py              # Django management script
├── run.bat                # Quick start for Windows
├── run.sh                 # Quick start for Linux/macOS
├── requirements.txt       # Dependencies
├── README.md             # Full documentation
├── QUICKSTART.md         # This file
├── mysite/               # Project settings
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── asgi.py
├── pages/                # Main app
│   ├── views.py
│   ├── urls.py
│   └── templates/
│       ├── base.html     # Base template with navigation
│       ├── home.html
│       ├── about.html
│       └── contact.html
└── venv/                 # Virtual environment
```

## Customization Tips

### Change Colors
Edit `pages/templates/base.html` and look for these color values:
- `#667eea` - Primary color (light purple)
- `#764ba2` - Secondary color (dark purple)

### Add New Pages
1. Create a view in `pages/views.py`
2. Add URL in `pages/urls.py`
3. Create template in `pages/templates/`
4. Add link to navigation in `base.html`

### Add CSS
Put CSS files in `pages/static/css/` and link them in `base.html`

### Add JavaScript
Put JS files in `pages/static/js/` and link them in `base.html`

## Troubleshooting

**Issue**: Port 8000 is already in use
**Solution**: `python manage.py runserver 8001`

**Issue**: Templates not found
**Solution**: Make sure Django is installed: `pip install django`

**Issue**: Static files not loading
**Solution**: Run `python manage.py collectstatic`

## What's Next?

- Add database models for storing contact messages
- Implement email sending for the contact form
- Add user authentication
- Create a blog or news section
- Deploy to a production server (Heroku, AWS, DigitalOcean, etc.)

## Support

For questions or issues, refer to:
- README.md - Full documentation
- Django Official Docs: https://docs.djangoproject.com/

---

**Enjoy your Django website! 🚀**
