# Django Navigation Website

A clean and professional Django website with a beautiful navigation bar featuring Home, About, and Contact pages.

## Features

- **Responsive Navigation Bar**: Located in the upper right corner with Home, About, and Contact links
- **Beautiful UI**: Modern gradient design with smooth transitions and hover effects
- **Contact Form**: Fully functional contact form on the Contact page
- **Mobile Responsive**: Works perfectly on desktop, tablet, and mobile devices
- **Clean Code Structure**: Well-organized Django project with proper separation of concerns

## Project Structure

```
my_todo_project/
├── manage.py              # Django management script
├── requirements.txt       # Python dependencies
├── README.md             # This file
├── mysite/               # Project settings
│   ├── settings.py       # Django settings
│   ├── urls.py          # URL routing configuration
│   ├── wsgi.py          # WSGI configuration
│   └── asgi.py          # ASGI configuration
├── pages/                # Main app
│   ├── views.py         # Views for Home, About, Contact
│   ├── urls.py          # App URL routing
│   ├── models.py        # Database models
│   └── templates/       # HTML templates
│       ├── base.html    # Base template with navigation
│       ├── home.html    # Home page
│       ├── about.html   # About page
│       └── contact.html # Contact page
└── venv/                # Virtual environment
```

## Installation & Setup

### Prerequisites
- Python 3.8+ installed on your system
- pip (Python package manager)

### Step 1: Create Virtual Environment (if not already done)

```bash
cd "C:\Users\Asus\Desktop\NEW Project Django\my_todo_project"
python -m venv venv
```

### Step 2: Activate Virtual Environment

**On Windows (PowerShell):**
```powershell
.\venv\Scripts\Activate.ps1
```

**On Windows (Command Prompt):**
```bash
venv\Scripts\activate.bat
```

**On macOS/Linux:**
```bash
source venv/bin/activate
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

Or install Django directly:

```bash
pip install django
```

### Step 4: Run Migrations

```bash
python manage.py migrate
```

### Step 5: Create Superuser (Optional - for admin access)

```bash
python manage.py createsuperuser
```

Follow the prompts to create an admin account.

### Step 6: Run Development Server

```bash
python manage.py runserver
```

The server will start at `http://127.0.0.1:8000/`

## Usage

1. **Home Page**: `http://127.0.0.1:8000/`
   - Welcome message and introduction

2. **About Page**: `http://127.0.0.1:8000/about/`
   - Information about the mission and technology stack

3. **Contact Page**: `http://127.0.0.1:8000/contact/`
   - Contact form for users to send messages

## Navigation Bar Features

- **Location**: Upper right corner of the page
- **Active Link Highlighting**: The current page is highlighted in the navigation
- **Smooth Hover Effects**: Links have smooth transitions on hover
- **Responsive Design**: Adapts to mobile screens
- **Professional Styling**: Modern gradient with purple theme

## Customization

### Change Colors
Edit the `base.html` template to modify the color scheme. Look for:
- `#667eea` - Primary gradient color
- `#764ba2` - Secondary gradient color

### Add More Pages
1. Create a new view in `pages/views.py`
2. Add URL pattern in `pages/urls.py`
3. Create template file in `pages/templates/`
4. Add link to navigation in `base.html`

### Modify Styling
All CSS is in the `<style>` tag in `base.html`. Customize as needed.

## Contact Form

The contact form on the `/contact/` page includes:
- Name field
- Email field
- Phone field (optional)
- Subject field
- Message textarea
- Form validation

Messages are displayed with a success notification after submission.

## Admin Panel

Access the Django admin panel at `http://127.0.0.1:8000/admin/`

**Note:** If you created a superuser, log in with those credentials.

## Troubleshooting

### Port Already in Use
If port 8000 is already in use, run:
```bash
python manage.py runserver 8001
```

### Templates Not Found
Ensure you've installed Django and that the template paths in `settings.py` are correct.

### Static Files Not Loading
Run:
```bash
python manage.py collectstatic
```

## Production Deployment

Before deploying to production:

1. Set `DEBUG = False` in `settings.py`
2. Update `ALLOWED_HOSTS` with your domain
3. Change the `SECRET_KEY` to a secure random string
4. Configure a production database (PostgreSQL, MySQL)
5. Set up proper static/media file serving
6. Use a production WSGI server (Gunicorn, uWSGI)

## License

This project is free to use and modify.

## Support

For issues or questions, feel free to reach out through the contact form on the website!

---

**Created**: February 2026
**Version**: 1.0
**Framework**: Django 5.2.11
