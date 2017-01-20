<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BabyShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>jQuery Menu with Bounce Effect</title>
<script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>
<script type="text/javascript" src="jquery.easing.js"></script>
<script type="text/javascript">
    $(function () {
        $('li', '#navigation').each(function () {
            var $li = $(this);
            var $a = $('a', $li);
            $a.hover(function () {
                $a.stop(true, true).animate({
                    height: '3em',
                    lineHeight: '3em',
                    bottom: '1em'
                }, 'slow', 'easeOutBounce');
            }, function () {
                $a.stop(true, true).animate({
                    height: '2em',
                    lineHeight: '2em',
                    bottom: 0
                }, 'slow', 'easeOutBounce');
            });
        });
    });
</script>
<style type="text/css">
#navigation {
height: 4em;
margin: 0;
padding: 0 1em;
list-style: none;
border-bottom: 2px solid #0270BF;
}
#navigation li {
height: 100%;
float: left;
margin-right: 0.5em;
}
#navigation a {
float: left;
height: 2em;
padding: 0 1em;
background: #0270BF;
color: #fff;
line-height: 2;
text-transform: uppercase;
font-weight: bold;
text-decoration: none;
margin: 2em 0 0 0;
letter-spacing: 0.1em;
position: relative;
}
#navigation a:hover {
background: #F86000;
}
</style>
</head>
<body>
<div>
<ul id="navigation">
<li><a href="#">Home</a></li>
<li><a href="#">Articles</a></li>
<li><a href="#">About</a></li>
</ul>
</div>
</body>
</html>
