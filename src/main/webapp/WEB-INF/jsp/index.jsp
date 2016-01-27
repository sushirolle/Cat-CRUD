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
                    <td class="tg-jnuu"><img src="/CRUD/imageDisplay?id=${kitty.id}"/></td>
                </tr>

            </table>
        </form>

    </table>

    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
        .tg .tg-mbw0{font-size:14px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
        .tg .tg-2l3u{background-color:#cbf6c8;color:#a1e09d;vertical-align:top}
        .tg .tg-mkpy{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;background-color:#cbf6c8;color:#32cb00;vertical-align:top}
    </style>

    <form method = "post" action = "/CRUD/searchname" >
        <table class="tg">
            <tr>
                <th class="tg-mkpy">Search by Name (or part of name):</th>
                <th class="tg-mbw0"><input type="text" name = "catName" id="id40" /></th>
                <th class="tg-mbw0"><input type="submit" id="id41" /></th>
            </tr>

            <c:forEach items = "${kitties}" var = "cat">
                <tr>
                    <td class="tg-d7nh">${cat.id}</td>
                    <td class="tg-d7nh">${cat.catName}</td>
                    <td class="tg-jnuu">${cat.fluffyRating}</td>
                    <td class="tg-jnuu"><img src="/CRUD/imageDisplay?id=${cat.id}"/></td>
                </tr>
            </c:forEach>

        </table>
    </form>

    </table>



    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
        .tg .tg-jnuu{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;text-align:right;vertical-align:top}
        .tg .tg-au1h{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;color:#6200c9;text-align:center;vertical-align:top}
        .tg .tg-5919{background-color:#D2E4FC;font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;vertical-align:top}
        .tg .tg-d7nh{font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;vertical-align:top}
        .tg .tg-nce2{background-color:#D2E4FC;font-size:16px;font-family:"Trebuchet MS", Helvetica, sans-serif !important;;text-align:right;vertical-align:top}
        .delete {
            outline: none;
            border: none;
            background-color: rgba(255,255,255,0);
            background-image: url("http://33.media.tumblr.com/d2ca370c4f8c4e04ec1191f31dc0ee18/tumblr_inline_nifzpqWWbR1reem51.png");
            background-repeat: no-repeat;
            width: 28px;
            height: 35px;
         }
        .update{
            outline: none;
            border: none;
            background-color: rgba(255,255,255,0);
            background-image: url("http://3.bp.blogspot.com/-nFTc8XD-eIg/TWZQvpSK9vI/AAAAAAAACJQ/5QW0NcdwNf8/s1600/Bunnyploop___Free_Avatar_by_0xo.gif");
            background-repeat: no-repeat;
            width: 50px;
            height: 50px;
          }
        .image{
            outline: none;
            border: none;
            background-color: rgba(255,255,255,0);
            background-image: url("http://33.media.tumblr.com/tumblr_liqazsdc3t1qb7h7x.gif");
            background-repeat: no-repeat;
            width: 50px;
            height: 50px;
        }
    </style>

<p></p>


    <table class="tg">
            <tr>
                <th class="tg-au1h" colspan="7">Cats</th>
            </tr>
            <tr>
                <td class="tg-5919">Cat ID</td>
                <td class="tg-5919">Cat's Name</td>
                <td class="tg-5919">Fluffy Rating</td>
                <td class="tg-5919">Delete</td>
                <td class="tg-5919">Update This Cat</td>
                <td class="tg-5919">Insert Image of This Cat</td>
                <td class="tg-5919">Image</td>
            </tr>
    <c:forEach items = "${CATS.content}" var = "cat">
            <tr>
                <td class="tg-d7nh">${cat.id}</td>
                <td class="tg-d7nh">${cat.catName}</td>
                <td class="tg-jnuu">${cat.fluffyRating}</td>

                <td>
        <form action="/CRUD/delete/${cat.id}" method="post">
            <button name="Delete" type="submit" class="delete" ></button>
        </form>
                </td>
                <td>
        <form action="/CRUD/update/${cat.id}" method="get">
            <button type="submit" class="update" ></button>
        </form>
                </td>
                <td>
        <form action="/CRUD/image/${cat.id}" method="get">
            <button type="submit" class="image" ></button>
        </form>
                </td>
                <td class="tg-jnuu"><img src="/CRUD/imageDisplay?id=${cat.id}"/></td>
            </tr>
    </c:forEach>
                <td class="tg-5919"><a href="/CRUD/create.html">Add A Cat</a></td>
    </table>


    <c:forEach var="i" begin="1" end="${CATS.totalPages}">
        <div style="display: inline-block;"> <a href="/CRUD/?page=${i-1}"><c:out value="${i}"/></a></div>
    </c:forEach>

<p></p>

    <img style="-webkit-user-select: none" src="http://33.media.tumblr.com/a6f8327c12d9de6e7833100436793561/tumblr_inline_njhmd9jJpr1ry72eo.png">
    <img style="-webkit-user-select: none" src="http://33.media.tumblr.com/297479eefd1dfd15bb78cc0d6fc71c87/tumblr_inline_njhmd9661Q1ry72eo.png">

<p></p>

    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzn385n1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzjH6jZ1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_lodwzbZCxB1qdsjn2.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2i11Znd1qhh19q.gif">
    <img style="-webkit-user-select: none" src="http://55.media.tumblr.com/tumblr_loo2jvNXvU1qhh19q.gif">

<p></p>

    <img style="-webkit-user-select: none" src="http://57.media.tumblr.com/a636bef299cfb27878bbe7a1f0d064fa/tumblr_mtkic2wGKx1si30aao1_400.gif">


</center>
</body>
</html>
