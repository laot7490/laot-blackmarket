const laotApp = new Vue({
    el: "#content",
    data: {
        page: "home",
        kapat() {
            $.post('http://laot-blackmarket/kapat', JSON.stringify({}));
        },
        itemSearch() {

            $.post('http://laot-blackmarket/itemSearch', JSON.stringify({}));

            this.items_results.results = false;
            return;
        },
        buyItem(name, price, waitMS) {
            $.post('http://laot-blackmarket/buyItem', JSON.stringify({
                name: name,
                price: price,
                waitMS: waitMS
            }));
        },
        items_results: {
            query: "",
            results: false
        },
    }
});

function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
      if ((new Date().getTime() - start) > milliseconds){
        break;
      }
    }
  }

  document.onkeydown = function (data) {
    if (data.which == 27 || data.which == 112) { // ESC or F1
        laotApp.kapat()
    } else if (data.which == 13) { // enter
        /* stop enter key from crashing MDT in an input?  */
        var textarea = document.getElementsByTagName('textarea');
        if (!$(textarea).is(':focus')) {
            return false;
        }
    }
};

document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        window.addEventListener('message', function(event) {
            if (event.data.type == "enable") {
                document.body.style.display = event.data.isVisible ? "block" : "none";
                laotApp.itemSearch()
            } else if (event.data.type == "returnedMatches") {
                laotApp.items_results.results = event.data.matches;
            };
        });
    };
};