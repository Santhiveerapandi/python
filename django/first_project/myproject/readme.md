# Step 1: Install virtualenv
Install the virtualenv package globally:
```
pip install virtualenv
```
# Verify installation:
```
virtualenv --version
```
# Step 2: Create a Virtual Environment
Navigate to the folder where you want to create your Django project:
```
cd path\to\your\project
```
Create a virtual environment named venv (or any name of your choice):
```
virtualenv venv
```
# Step 3: Activate the Virtual Environment
To activate the virtual environment, use the following command:
```
venv\Scripts\activate
```
# Step 4: Install Django in the Virtual Environment
Once the virtual environment is active, install Django:
```
pip install django
```
Verify the installation:
```
django-admin --version
```
# Step 5: Create a Django Project
Start a new Django project:
```
django-admin startproject myproject
```
Navigate into the project directory:
```
cd myproject
```
Run the development server:
```
python manage.py runserver
```
# Step 6: Deactivate the Virtual Environment
To deactivate the virtual environment when you're done working, simply run:
```
deactivate
```
# Step 7: Freeze Dependencies
Before sharing your project or deploying it, create a requirements.txt file to record your project's dependencies:
```
pip install mysqlclient
pip list
python manage.py migrate
python manage.py createsuperuser

pip freeze > requirements.txt
```
Later, others can install these dependencies in their own environment using:
```
pip install -r requirements.txt
```

