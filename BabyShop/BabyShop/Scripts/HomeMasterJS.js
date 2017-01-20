function addBookmark() {
    bookmarkurl = document.URL;
    bookmarktitle = document.title;
    if (document.all)  //Check the condition for IE
        window.external.AddFavorite(bookmarkurl, bookmarktitle)
    else if (window.sidebar) // Check the condition for Mozilla
    {
        window.sidebar.addPanel(bookmarktitle, bookmarkurl, "");
    }
}

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

$("#nav-two a")
  .each(function (i) {
      if (i != 0) {
          $("#beep-two")
            .clone()
            .attr("id", "beep-two" + i)
            .appendTo($(this).parent());
      }
      $(this).data("beeper", i);
  })
  .mouseenter(function () {
      $("#beep-two" + $(this).data("beeper"))[0].play();
  });
$("#beep-two").attr("id", "beep-two0");


