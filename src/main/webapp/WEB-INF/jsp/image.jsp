<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<center>

    <p style="text-align:center;"><span style="font-family:Garamond;font-size:22px;font-style:normal;font-weight:normal;text-decoration:none;text-transform:none;color:#993399;">~Cat Editor~
    </span>
    </p>
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2kzSMuL1qhh19q.gif">

</center>
<p></p>
<center>

<p></p>

<body background="https://31.media.tumblr.com/31e4e49d16eeccbb6bb0953e4575528c/tumblr_n6t4bk2usP1snc5kxo4_r1_500.gif">


    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzn385n1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzjH6jZ1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzbZCxB1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2i11Znd1qhh19q.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2jvNXvU1qhh19q.gif">

<p></p>

    <table>
        <style type="text/css">
            .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
            .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
            .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
            .tg .tg-mbw0{font-size:14px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-2l3u{background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-mkpy{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#32cb00;vertical-align:top}
        </style>
        <form method = "post" action = "/CRUD/img/${Catimg.id}" enctype="multipart/form-data" >
            <table class="tg">
                <tr>
                    <th class="tg-mkpy">Submit An Image Of This Cat:</th>
                    <th class="tg-mbw0">Image File:<input type="file" name="image"> </th>
                    <th class="tg-mbw0">Submit<input type="submit"> </th>
                </tr>
            </table>
        </form>
    </table>

</body>
</center>
</html>