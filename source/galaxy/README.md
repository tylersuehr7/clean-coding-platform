# Clean Coding Platform – "galaxy"

This project is a RESTful API service in which the clients will interact with. 

This uses the Python Django REST Framework to implement its server-side behavior. This was chosen due to 
convenience, minimal development effort, and its neat Django Admin UI console. Although the Spring Boot 
Framework would also have been a great production-ready choice alternatively.

# Business requirements
- Manage users on the system
  - Create a new user on the system
  - Authenticate a user on the system
  - Authorize a user on the system
- Manage tasks on the system
  - Create a new task on the system
    - User creating the task is the owner of it
  - Update an existing task on the system
    - Only owner of task or shared with users can make updates
  - Delete an existing task on the system
    - Only owner of task can delete
  - Share a task with another user on the system
    - Only owner of a task can share / unshare with another user

# Configurable environment variables
- `DJANGO_ENV`
- `DJANGO_ALLOWED_HOSTS`
- `DJANGO_CORS_ORIGIN_WHITELIST`
- `DJANGO_CSRF_TRUSTED_ORIGINS`
- `DB_ENGINE`
- `DB_NAME`
- `DB_USER`
- `DB_PASSWORD`
- `DB_HOST`
- `DB_PORT`

# System requirements
- Python 3.9 (or later)
