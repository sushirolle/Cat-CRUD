<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body background="https://31.media.tumblr.com/31e4e49d16eeccbb6bb0953e4575528c/tumblr_n6t4bk2usP1snc5kxo4_r1_500.gif">

<center>

    <p style="text-align:center;"><span style="font-family:Garamond;font-size:22px;font-style:normal;font-weight:normal;text-decoration:none;text-transform:none;color:#993399;">~Cat Editor~
    </span>
    </p>
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2kzSMuL1qhh19q.gif">

</center>

<p></p>
<center>


    <img class="centerImage" src="http://i.imgur.com/9R7RDmc.gif">

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

        <form id="theform" method = "post" action = "/CRUD/add" >
            <table class="tg">
                <tr>
                    <th class="tg-mkpy">Add A Cat:</th>
                    <th class="tg-mbw0"><input type="text" name = "catName" id="id5" /></th>
                    <th class="tg-mbw0"><input type="text" name = "fluffyRating" id="id6" /></th>
                    <th class="tg-mbw0"><input type="submit" id="id4" /></th>
                </tr>
            </table>
        </form>

    </table>

</center>
</body>
</html>