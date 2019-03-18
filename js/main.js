"use strict"; // Start of use strict

// preLoader
function preLoaderActivation() {
    if($('body').length) {
        $("body").queryLoader2({
            barColor: "#000",
            backgroundColor: "#fff",
            percentage: true,
            deepSearch: false,
            barHeight: 5,
            minimumTime: 1000,
            fadeOutTime: 800
        });
    };
}

// bootstrap Animated Layer
function bootstrapAnimatedLayer() {
        function doAnimations(elems) {
            //Cache the animationend event in a variable
            var animEndEv = "webkitAnimationEnd animationend";
            elems.each(function() {
                var $this = $(this),
                    $animationType = $this.data("animation");
                $this.addClass($animationType).one(animEndEv, function() {
                    $this.removeClass($animationType);
                });
            });
        }

        //Variables on page load
        var $myCarousel = $("#mainSlider"),
            $firstAnimatingElems = $myCarousel
            .find(".carousel-item:first")
            .find("[data-animation ^= 'animated']");

        //Initialize carousel
        $myCarousel.carousel({
            interval: 8000
        });

        //Animate captions in first slide on page load
        doAnimations($firstAnimatingElems);

        //Other slides to be animated on carousel slide event
        $myCarousel.on("slide.bs.carousel", function(e) {
            var $animatingElems = $(e.relatedTarget).find(
                "[data-animation ^= 'animated']"
            );
            doAnimations($animatingElems);
        });
    }
    
// owl-Carousel Activation
function owlCarouselActivation() {
    if ($(".rating-carousel").length) {
        $(".rating-carousel").owlCarousel({
            autoplay: true,
            autoplayTimeout: 5000,
            loop: true,
            pagination: true,
            animateIn: 'fadeInDown',
            animateOut: 'zoomOutDown',
            margin: 0,
            stagePadding: 0,
            dotsEach: true,
            smartSpeed: 1000,
            items: 1,
            nav: false
        })
    };
}

// counterUpInit
function counterUpInit() {
    if ($('.counter').length) {
        $('.counter').counterUp({
            delay: 20,
            time: 5000
        });
    }
}

// filterizr Activation
function filterizrActivation() {
    if($('.filtr-container').length){
        var filterizd = $('.filtr-container').filterizr({
           layout: 'packed'
        });

        $('.filter-list li.filter').on('click', function() {
          $('.filter-list li.filter').removeClass('active');
            $(this).addClass('active');
        });
    };
}


// wow
function wowActivation() {
    if ($('.wow').length) {
        var wow = new WOW({
            mobile: false
        });
        wow.init();
    };
}

// backToTop
function backToTop() {
    if($('.back2Top').length) {
        $('.back2Top').on('click', function () {
            $("html, body").animate({
                scrollTop: 0
            }, 500)
        });
    };
}

// backToTopVisible
function backToTopVisible() {
     if ($('.back2Top').length) {
        if ($(window).scrollTop() > 300) {
            $(".back2Top").addClass("totop");
        } else {
            $(".back2Top").removeClass("totop");
        }
    };
}

// fixedNav
function fixedNav() {
    if ($(".main-header").length) {
        if ($(window).scrollTop() > 60) {
            $(".main-header").addClass("fixed-nav")
        } else {
            $(".main-header").removeClass("fixed-nav")
        }
    }
}

// mainMenu
function mainMenu() {
    if($("a[rel='m_PageScroll2id']").length) {    
        $("a[rel='m_PageScroll2id']").mPageScroll2id({
            highlightClass:"active"
        });
    };
}

// hamburger
function hamburger() {
    if($(".hamburger").length) { 
        var hamburger = $(".hamburger");
            hamburger.on("click", function() {
            $(this).toggleClass("is-active");

            $('.navbar-nav li a[rel="m_PageScroll2id"] ').on('click', function(e) {
                e.preventDefault();
                $('.navbar-collapse').removeClass('show');
                $('.hamburger').removeClass('is-active');
            });
        });
    }
}

// instance of fuction while Document ready event   
jQuery(document).on('ready', function() {
    (function($) {
        preLoaderActivation();
        backToTop();
        wowActivation();
        owlCarouselActivation();
        bootstrapAnimatedLayer();
        counterUpInit();
        hamburger();

        var $navi = $(".main-header"), scrollTop = 0;
          $(window).scroll(function () {
            var y = $(this).scrollTop(), speed = 0.05, pos = y * speed, maxPos = 110;
            if (y > scrollTop) {
              pos = maxPos;
            } else {
              pos = 0;
            }
            scrollTop = y;
            $navi.css({
              "-webkit-transform": "translateY(-" + pos + "%)",
              "-moz-transform": "translateY(-" + pos + "%)",
              "-o-transform": "translateY(-" + pos + "%)",
              "transform": "translateY(-" + pos + "%)"
            });
          });
    })(jQuery);
});

// instance of fuction while Window Load event
jQuery(window).on('load', function() {
    (function($) {
        mainMenu();
        filterizrActivation();
    })(jQuery);
});

// instance of fuction while Window Scroll event
jQuery(window).on('scroll', function () {   
    (function ($) {
        fixedNav();
        backToTopVisible();
    })(jQuery);
});
/*========================================================================== 
======================== Custom script for Mojo end ===================
============================================================================*/
