<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Volume Calculator</title>
</head>
<body>
<h1>Вычисление объемов тел</h1>
<form action="VolumeCalculatorServlet" method="GET">
    <label>Выберите форму:</label>
    <select name="shape">
        <option value="box">Параллелепипед</option>
        <option value="cube">Куб</option>
        <option value="sphere">Сфера</option>
        <option value="tetrahedron">Тетраэдр</option>
        <option value="torus">Тор</option>
        <option value="ellipsoid">Эллипсоид</option>
    </select>
    <br>
    Укажите точность (количество знаков после запятой): <input type="text" name="precision"><br>
    <br>
    Параметры:<br>
    <div id="parameters"></div>
    <input type="submit" value="Вычислить">
</form>

<script>
    document.querySelector('select[name="shape"]').addEventListener('change', function () {
        var shape = this.value;
        var parametersDiv = document.getElementById('parameters');
        parametersDiv.innerHTML = "";

        switch (shape) {
            case "box":
                parametersDiv.innerHTML = `
                        Длина: <input type="text" name="length"><br>
                        Ширина: <input type="text" name="width"><br>
                        Высота: <input type="text" name="height"><br>
                    `;
                break;
            case "cube":
                parametersDiv.innerHTML = `
                        Сторона: <input type="text" name="side"><br>
                    `;
                break;
            case "sphere":
                parametersDiv.innerHTML = `
                        Радиус: <input type="text" name="radius"><br>
                    `;
                break;
            case "tetrahedron":
                parametersDiv.innerHTML = `
                        Длина грани: <input type="text" name="edge"><br>
                    `;
                break;
            case "torus":
                parametersDiv.innerHTML = `
                        Больший радиус: <input type="text" name="majorRadius"><br>
                        Малый радиус: <input type="text" name="minorRadius"><br>
                    `;
                break;
            case "ellipsoid":
                parametersDiv.innerHTML = `
                        Полуось a: <input type="text" name="a"><br>
                        Полуось b: <input type="text" name="b"><br>
                        Полуось c: <input type="text" name="c"><br>
                    `;
                break;
            default:
                break;
        }
    });
</script>
</body>
</html>
