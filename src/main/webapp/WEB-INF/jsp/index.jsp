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

    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
        .tg .tg-jnuu{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;text-align:right;vertical-align:top}
        .tg .tg-au1h{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;color:#6200c9;text-align:center;vertical-align:top}
        .tg .tg-5919{background-color:#D2E4FC;font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;vertical-align:top}
        .tg .tg-d7nh{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;vertical-align:top}
        .tg .tg-nce2{background-color:#D2E4FC;font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;text-align:right;vertical-align:top}
    </style>

<head></head>
<p></p>

<body background="http://38.media.tumblr.com/27556e956d00c45a2d74e1832e490bc0/tumblr_inline_muxx5stTvf1s0gyrx.png">

    <table class="tg">
        <tr>
            <th class="tg-au1h" colspan="3">Cats</th>
        </tr>
        <tr>
            <td class="tg-5919">Cat ID</td>
            <td class="tg-5919">Cat's Name</td>
            <td class="tg-5919">Fluffy Rating</td>
        </tr>
    <c:forEach items = "${CATS}" var = "cat">
        <tr>
            <td class="tg-d7nh">${cat.id}</td>
            <td class="tg-d7nh">${cat.catName}</td>
            <td class="tg-jnuu">${cat.fluffyRating}</td>
        </tr>
    </c:forEach>
    </table>

<p></p>

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

        <form method = "post" action = "/CRUD/add" >
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

    <table>

            <style type="text/css">
                .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
                .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
                .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
                .tg .tg-mbw0{font-size:14px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
                .tg .tg-2l3u{background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
                .tg .tg-mkpy{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#32cb00;vertical-align:top}
            </style>

            <form method = "post" action = "/CRUD/delete" >
            <table class="tg">
                <tr>
                    <th class="tg-mkpy">Delete a cat by ID:</th>
                    <th class="tg-mbw0"><input type="text" name = "id" id="id2" /></th>
                    <th class="tg-mbw0"><input type="submit" id="id3" /></th>
                </tr>
             </table>
            </form>
        </table>



    <table>
        <style type="text/css">
            .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
            .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
            .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
            .tg .tg-mbw0{font-size:14px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-2l3u{background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-mkpy{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#32cb00;vertical-align:top}
        </style>
        <form method = "post" action = "/CRUD/update" >
            <table class="tg">
                <tr>
                    <th class="tg-mkpy">Update A Cat:</th>
                    <th class="tg-mbw0">ID of the cat you want to edit:<input type="text" name = "id" id="id17" /></th>
                    <th class="tg-mbw0">New Name:<input type="text" name = "catName" id="id18" /></th>
                    <th class="tg-mbw0">New Fluffy Rating:<input type="text" name = "fluffyRating" id="id19" /></th>
                    <th class="tg-mbw0"><input type="submit" id="id20" /></th>
                </tr>
            </table>
        </form>
    </table>




    <table>
        <style type="text/css">
            .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
            .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
            .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
            .tg .tg-mbw0{font-size:14px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-2l3u{background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
            .tg .tg-mkpy{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#32cb00;vertical-align:top}
        </style>
        <form method = "post" action = "/CRUD/search" >
            <table class="tg">
                <tr>
                    <th class="tg-mkpy">Search by ID:</th>
                    <th class="tg-mbw0"><input type="text" name = "id" id="id23" /></th>
                    <th class="tg-mbw0"><input type="submit" id="id25" /></th>
                </tr>

                <tr>
                    <td class="tg-d7nh">${kitty.id}</td>
                    <td class="tg-d7nh">${kitty.catName}</td>
                    <td class="tg-d7nh">${kitty.fluffyRating}</td>
                </tr>

            </table>
        </form>
    </table>

    <img style="-webkit-user-select: none" src="http://57.media.tumblr.com/a636bef299cfb27878bbe7a1f0d064fa/tumblr_mtkic2wGKx1si30aao1_400.gif">
</body>
    </center>
</html>
