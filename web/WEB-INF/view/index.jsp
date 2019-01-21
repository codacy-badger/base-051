<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="<c:url value="/res/css/main.css" /> ">
    <link rel="stylesheet" href="<c:url value="/res/css/bootstrap.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="/res/css/metro-all.css" /> ">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="<c:url value="/res/css/metro.js"/>"></script>

    <script>
        function getDirectories() {
            var dir = document.getElementById("directory").value;
            $.ajax({
                url: "/file-manager",
                data: {"directory": dir},
                type: "get",
                success: function (data) {
                    var result = document.getElementById("result");
                    while (result.firstChild) {
                        result.removeChild(result.firstChild);
                    }
                    var backUl = document.createElement("ul");
                    var backA = document.createElement("a");
                    backA.href = "#";
                    backA.onclick = function (ev) {
                        var dir = document.getElementById("directory").value.split("\\");
                        dir.pop();
                        document.getElementById("directory").value = dir.join("\\");
                        document.getElementById("submit").click();
                    };
                    backA.appendChild(document.createTextNode(".."));
                    backUl.appendChild(backA);
                    result.appendChild(backUl);
                    data.forEach(function (element) {
                        var elementUl = document.createElement("ul");
                        var elementA = document.createElement("a");
                        elementA.href = "#";
                        elementA.onclick = function (ev) {
                            document.getElementById("directory").value += "\\" + element;
                            document.getElementById("submit").click();
                        };
                        elementA.appendChild(document.createTextNode(element));
                        elementUl.appendChild(elementA);
                        result.appendChild(elementUl);
                    })
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    console.log("Status: " + textStatus);
                    console.log("Error: " + errorThrown);
                }
            });
            return false;
        }
    </script>
</head>
<body>

    <input type="text" name="directory" id="directory">
    <input type="submit" id="submit" onclick="return getDirectories();">

    <ul id="result"> </ul>

    <ul data-role="treeview">
        <li data-caption="Favorites">
            <ul>
                <li data-caption="Projects"></li>
                <li data-caption="Downloads"></li>
                <li data-caption="Desktop"></li>
            </ul>
        </li>
        <li data-caption="OneDrive">
            <ul>
                <li data-caption="Documents"></li>
                <li data-caption="Projects">
                    <ul>
                        <li data-caption="Web"></li>
                        <li data-caption="Android"></li>
                        <li data-caption="Windows"></li>
                        <li data-caption="iOS"></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

</body>
</html>