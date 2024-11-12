from flask import Flask, render_template, request, redirect, url_for
import pymysql
from config import Config

app = Flask(__name__)

# Database Connection Setup
def get_db_connection():
    connection = pymysql.connect(
        host=Config.DB_HOST,
        port=Config.DB_PORT,
        user=Config.DB_USER,
        password=Config.DB_PASSWORD,
        database=Config.DB_NAME,
        cursorclass=pymysql.cursors.DictCursor  # To get results as dictionaries
    )
    return connection

# Home route - main landing page
@app.route('/')
def index():
    return render_template('index.html')

# Search route - search recipes based on input
@app.route('/search', methods=['GET'])
def search_recipe():
    search_query = request.args.get('query', '')
    recipes = []
    
    if search_query:
        # Use the MySQL connection to query the database for recipes matching the search term in both columns
        connection = get_db_connection()
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT food_item, recipe 
                FROM Recipes 
                WHERE food_item LIKE %s OR recipe LIKE %s
            """, ('%' + search_query + '%', '%' + search_query + '%'))
            recipes = cursor.fetchall()  # Fetch all matching recipes
        connection.close()  # Close the connection
    
    return render_template('index.html', recipes=recipes, search_query=search_query)

# Show All route - show all recipes from the database
@app.route('/show_all', methods=['GET'])
def show_all():
    recipes = []
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT food_item, recipe FROM Recipes")
        recipes = cursor.fetchall()  # Fetch all recipes
    connection.close()
    return render_template('index.html', recipes=recipes)

# Add Recipe route - to handle recipe submission
@app.route('/add_recipe', methods=['POST'])
def add_recipe():
    food_item = request.form['food_item']
    recipe = request.form['recipe']
    message = ""

    if food_item and recipe:
        connection = get_db_connection()
        try:
            with connection.cursor() as cursor:
                # Insert the new recipe into the Recipes table
                cursor.execute("""
                    INSERT INTO Recipes (food_item, recipe) 
                    VALUES (%s, %s)
                """, (food_item, recipe))
                connection.commit()
                message = "Recipe added successfully!"
        except Exception as e:
            message = f"Error: {str(e)}"
        finally:
            connection.close()

    return render_template('index.html', message=message)

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=8085)
