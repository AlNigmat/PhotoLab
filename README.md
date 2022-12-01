<!DOCTYPE html>
<html>
<font face="Arial">
<p align="center"><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/1.png" width="700" alt="Screenshot"></p>
<h1>
    <p>PhotoLab</p>
</h1>
<body>
    <h3>
        <p>Общая информация
    </h3>
    </p>
    <p>
        Программа для macOS PhotoLab, позволяет накладывать различные фильтры на изображение <br>
        Программа работает с файлами в формате .bmp <br>
        Реализована возможность сохранить обработанное изображение <br>
        <br>
    </p>
    <hr style="border: 2px;">
    <h3>
        <p>Простые фильтры
    </h3>
    </p>
    <table border="1">
        <tr>
            <th>Обесцвечивание</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/2.png" width="200" alt="Обесцвечивание"></td>
        </tr>
        <tr>
            <td>Негатив</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/3.png" width="200" alt="Негатив"></td>
        </tr>
        <tr>
            <td>Тонирование</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/4.png" width="200" alt="Тонирование"></td>
        </tr>
    </table>
    </p>
    <hr style="border: 2px;">
    <h3>    
        <p>Фильтры свертки
    </h3>
    </p>
    <table border="1">
        <tr>
            <th>Барельеф</td>
        <th><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/5.png" width="200" alt="Барельеф"></td>
        </tr>
        <tr>
            <td>Повышение резкости</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/6.png" width="200" alt="Повышение резкости"></td>
        </tr>
        <tr>
            <td>Блочное размытие</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/7.png" width="200" alt="Блочное размытие"></td>
        </tr>
        <tr>
            <td>Гауссово размытие</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/8.png" width="200" alt="Гауссово размытие"></td>
        </tr>
        <tr>
            <td>Фильтр Лапласа</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/9.png" width="200" alt="Фильтр Лапласа"></td>
        </tr>
        <tr>
            <td>Фильтр Собеля</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/10.png" width="200" alt="Фильтр Собеля"></td>
        </tr>
        <tr>
            <td>Пользовательский фильтр свертки</td>
        <td><img src="https://github.com/AlNigmat/PhotoLab/blob/main/imgs/11.png" width="200" alt="Пользовательский фильтр свертки"></td>
        </tr>
    </table>
    <hr style="border: 2px;">
    <h3>
        <p>Реализация цветокоррекции
    </h3>
    </p>
    <p>
        Программа позволяет осуществлять изменение яркости и контрастности изображения <br>
        А также работу с насыщенностью для всего изображения (по моделям HSL и HSV) <br>
    </p>
    <hr style="border: 2px;">
    <h3>
        <p>Makefile
    </h3>
    </p>
    <p>
        В корневой дирректории расположен Makefile со следующими целями: <br>
        make all - выполняет цели test, clean <br>
        test - запускает Unit-тесты на основе библиотеки GTest <br>
        install - выполняет установку приложения в директорию build/ <br>
        uninstall - производит деинсталяцию приложения <br>
        clean - выполняет полную очистку файлов установки и удаленние всех данных приложения <br>
    </p>
</body>

</html>
