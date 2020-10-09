<style>
    table,
    td,
    th {
        border: 1px solid black;
    }

    table {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    th {
        height: 50px;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
    }

    td {
        height: 30px;
        text-align: center;
        text-transform: capitalize;
    }

    a:link {
        color: red;
        text-decoration: none;
    }

    a:visited {
        color: red;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    a:active {
        text-decoration: underline;
    }

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
</style>

<nav>
    <a class='nav_items' href="/">SHOW MOVIES LIST</a>
    <a class='nav_items' href="/get_add_movie_template">ADD MOVIE</a>
</nav>

<h1 style='text-align: center;'>MOVIES LIST</h1>
<table>
    <tr>
        <th>MOVIE NAME</th>
        <th>DIRECTOR</th>
        <th>DELETE LINK</th>
        <th>UPDATE LINK</th>
    </tr>
    %for row in rows:
    <tr>
        %for item in row[1:]:
        <td>{{item}}</td>
        %end
        <td>
            <a href="/delete_movie/{{row[0]}}">DELETE</a>
        </td>

        <td>
            <a href="/get_movie_by_id/{{row[0]}}">UPDATE</a>
        </td>
    </tr>
    %end
</table>