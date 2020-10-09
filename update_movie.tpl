<style>
    .nav_items {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 18px;
        padding: 10px;
    }

    .nav_items:link {
        color: green;
        text-decoration: underline;
    }

    .nav_items:visited {
        color: green;
        text-decoration: underline;
    }

    label {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
    }

    input[type=text],
    select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .center{
        margin: auto;
        width: 50%;
    }
</style>
<nav>
    <a class='nav_items' href="/">SHOW MOVIES LIST</a>
    <a class='nav_items' href="/get_add_movie_template">ADD MOVIE</a>
</nav>
<div class='center'>
<h1 style='text-align: center;'>UPDATE MOVIE</h1>
    <form action="/update_movie/{{rows[0]}}" method="POST">
        <label>Movie Name:</label>
        <input type="text" size="100" maxlength="100" name="name" value="{{rows[1]}}"><br>
        <label>Director:</label>
        <input type="text" size="100" maxlength="100" name="director" value="{{rows[2]}}">
        <input type="submit" name="update" value="Update">
    </form>
</div>