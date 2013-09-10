 $(document).ready(function() {

    $("label").on("click", function() {
    	switch (this.parentElement.parentElement.parentElement.children[0].className) {

    		case "q_one": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_two"}); break;

    		case "q_two": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_three"}); break;

    		case "q_three": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_four"}); break;

    	}
    	
    });

  });

mixpanel.track("label");

mixpanel.track("twitter");

mixpanel.track("lyft_clicks");
mixpanel.track("sidecar_clicks");
mixpanel.track("airbnb_clicks");
mixpanel.track("uber_clicks");
mixpanel.track("taskrabbit_clicks");
mixpanel.track("yerdle_clicks");
