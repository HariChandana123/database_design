<p>MOVIES LIST</p>
<table border="1">
    %for row in rows:
    <tr>
        %for item in row[1:]:
        <td>{{item}}</td>
        %end
    </tr>

    %end
</table>

<a href="/get_add_movie_template">ADD MOVIE</a>
<hr />