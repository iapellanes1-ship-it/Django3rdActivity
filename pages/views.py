from django.shortcuts import render
from django.views import View
from django.contrib import messages

class HomeView(View):
    def get(self, request):
        return render(request, 'home.html', {'title': 'Home'})

class AboutView(View):
    def get(self, request):
        return render(request, 'about.html', {'title': 'About'})

class ContactView(View):
    def get(self, request):
        return render(request, 'contact.html', {'title': 'Contact'})
    
    def post(self, request):
        # Handle form submission
        name = request.POST.get('name', '')
        email = request.POST.get('email', '')
        phone = request.POST.get('phone', '')
        subject = request.POST.get('subject', '')
        message = request.POST.get('message', '')
        
        # You can add email sending logic here
        # For now, we'll just show a success message
        messages.success(request, f'Thank you {name}! Your message has been received. We will contact you soon.')
        
        return render(request, 'contact.html', {'title': 'Contact'})

class TodoListView(View):
    def get(self, request):
        return render(request, 'todolist.html', {'title': 'To-Do List'})
