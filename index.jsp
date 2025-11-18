<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Simulate a database of items
    String[][] musicList = {
        {"1", "Bohemian Rhapsody", "Queen", "rock.jpg"},
        {"2", "Imagine", "John Lennon", "pop.jpg"},
        {"3", "Billie Jean", "Michael Jackson", "funk.jpg"}
    };
%>
<html>
<head>
    <title>Music Store</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Music Store</h1>
    <ul class="music-list">
        <% for (String[] album : musicList) { %>
            <li>
                <img src="<%= album[3] %>" alt="cover" class="cover-img">
                <div class="music-info">
                    <strong><%= album[1] %></strong><br>
                    Artist: <%= album[2] %><br>
                    <a href="details.jsp?id=<%= album[0] %>">View Details</a>
                </div>
            </li>
        <% } %>
    </ul>
</div>
</body>
</html>