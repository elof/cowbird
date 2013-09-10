 $(document).ready(function() {

    $("label").on("click", function() {
    	switch (this.parentElement.parentElement.parentElement.children[0].className) {

    		case "q_one": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_two"}); break;

    		case "q_two": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_three"}); break;

    		case "q_three": console.log(this.previousElementSibling.checked = true); $.smoothScroll({ scrollTarget: ".q_four"}); break;

    	}
    	
    });

  });

mixpanel.track("fills_out_form");
