<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
    <div class="container" style="margin-top: 40px">
        <span style="float: right"><input class="btn btn-success" type="button" value="Surprise Me" onClick="window.location.reload()"/></span>
        <div class="hero-unit">
            <h2>${message}</h2>
            <p><em>${subtitle}</em></p>
            <p style="font-size: 15px">[FUCK]: <g:message code="fuck.courtesy"/></p>
            <footer><i style="font-size: 13px">@fuckRightAndLeft 2013</i></footer>
        </div>
    </div>
</body>
</html>