A flight booking django application written in Python, HTML, CSS & Javascript.
Developed by Anila Reddy Komandla

### Features
1. Users can create an account.
2. A user can book both one way and round trip tickets.
3. The webpages are mobile responsive.
4. A user can print their tickets in pdf format.
5. A user can view their previously booked tickets.
6. A user can cancel their booked tickets.

### Directory structure
  - `app` - project directory.
    - `utils.py` - Contains django helper functions used in views.py.
    - `urls.py` - This file handles all the URLs of the project.
  - `flight` - main application directory.
    - `static` - contains all static content.
        - `css` - Contains all css files for styling the webpages.
        - `js` - Contains all JS files used in the application.
        - `img` - Contains all static image files used in the application.
    - `templates/flight` Contains all application templates.
        - `book.html` - Template for showing selected flight and reading passenger data.
        - `bookings.html` - Template for showing bookings made by a user.
        - `index.html` - Home page template.
        - `layout.html` - Base template for all pages except login & register page.
        - `layout2.html` - Base template for login & register page.
        - `login.html` - User login page.
        - `payment_process.html` - Payment confirmation page.
        - `payment.html` - Credit Card payment page.
        - `register.html` - User registration page.
        - `search.html` - Search flight results.
        - `ticket.html` - Template for printing a pdf ticket.
    - `admin.py` - Contains some models for access to the django administrator.
    - `models.py` - All models used in the application are created here.
    - `urls.py` - This file handles all the URLs of the web application.
    - `views.py` - This file contains all the application views.
    - `constant.py` - This file contains the booking fee amount which is charged to the user for booking flight tickets.
  - `requirements.txt` - This file contains all the python packages that needs to be installed to run this web application.
  - `manage.py` - This file is used as a command-line utility and for deploying, debugging, or running the web application.

### Installation

- Install Python3.9 from [here](https://www.python.org/downloads/) manually.
- Install project dependencies by running `python3 -m pip install -r requirements.txt`.
- Run the commands `python3 manage.py migrate` and `python3 manage.py makemigrations` in the project directory to make and apply migrations.
- Create superuser with `python3 manage.py createsuperuser`. This step is optional.
- Run the command `python3 manage.py runserver` to run the web server.
- Open web browser and goto `127.0.0.1:8000` url to start using the web application.
