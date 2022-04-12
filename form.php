<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
</head>
<body style="margin: 20%;">
    <form name = "autorize", action="autorize.php" method="POST">
        <table width="25%" border="0" align="center" cellspasing="0" bgcolor="grey">
        <tr>
            <td width="7%">
                <span>Логин</span>
            </td>
            <td width="93%">
                <label>
                    <input type="text" name="login" maxlength="10">
                </label>
            </td>
        </tr>

        <tr>
            <td width="7%">
                <span>Пароль</span>
            </td>
            <td width="93%">
                <label>
                    <input type="password" name="pass" maxlength="10">
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" name='submit' value="submit">
            </td>
        </tr>
        </table>
    </form>
</body>
</html>