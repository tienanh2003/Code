<%-- 
    Document   : 8601_download
    Created on : Oct 17, 2023, 2:27:24 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Downloads</h1>

        <h2>86 (the band) - True Life Songs and Pictures</h2>

        <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>You Are a Star</td>
            <!-- <td><a href="/musicStore/sound/${productCode}/star.mp3">MP3</a></td> -->
            <td><a href="https://docs.google.com/uc?id=1VEXN2k_yrICV7JDiN6hf58lkRXnHA0Lf">MP3(test)</a></td>
        </tr>
        <tr>
            <td>Don't Make No Difference</td>
            <!-- <td><a href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a></td> -->

            <td><a href="javascript:void(0);" onclick="redirectToErrorPage();">MP3</a></td>
        </tr>
        </table>

        <p><a href="?action=viewAlbums">View list of albums</a></p>

        <p><a href="?action=viewCookies">View all cookies</a></p>

        <script>
            function redirectToErrorPage() {
                window.location.href = 'error_404.jsp';
            }
        </script>
    </body>
</html>
