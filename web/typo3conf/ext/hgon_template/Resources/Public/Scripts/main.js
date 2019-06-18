$('.js-navbar').helllnav();
$('.js-slider').helllslider();
$('.js-lightbox').helllbox();
$('.js-open-mdl').helllmodal();


// https://www.comuno.net/blog/detail/formular-mit-typoscript-rendering-per-ajax-verschicken/
function initAjaxForms() {
    $('form[data-ajaxuri]').each(function() {
        var form = $(this);
        var form_id = '#' + form.attr('id');
        var ajaxuri = form.attr("data-ajaxuri");
        var options = {
            target: '.featherlight-content ' + form_id,
            url: ajaxuri,
            success: function() {
                // re-init ajax forms
                initAjaxForms();
                form.fadeIn('slow');
               // jQuery('.featherlight-content').html(form);
                //console.log(form[0]);

                // Really dirty stuff to get the form
                // Problem: By some reason we got
                jQuery('.featherlight-content section.section').hide();
                jQuery('.featherlight-content .featherlight-form-container').show();
            }
        };
        form.ajaxForm(options);
    })
}

$(window).on('load', function() {
    initAjaxForms();
});


jQuery(document).ready(function(){

    /*
    jQuery(document).on('submit', 'form.form-framework', function (event) {
        // console.log(jQuery(this).attr('action'));
        var form = $(this);
        var form_id = '#' + form.attr('id');
        var ajaxuri = form.attr("data-ajaxuri");
        jQuery.ajax
        ({
             url: form.attr("data-ajaxuri"),
             type: 'post',
             success: function (result) {
                 var input = jQuery(result).find('.ext_form');
                 console.log(input[0]['innerHTML']);
                 jQuery('form').replaceWith(input[0]['innerHTML']);
             }
         });
        event.preventDefault();
    });
    */

    jQuery("a.inline").fancybox({
        'titlePosition'   : 'inside',
        'transitionIn'    : 'none',
        'transitionOut'   : 'none',
        'autoDimensions'  : 'true',
        'overlayOpacity' : 0
    });

    /*
    $( document ).ajaxComplete(function() {
       console.log("hihi");
    });
    */

    /*
    $(document).on('change', '#mitgliedsformular', function() {
        console.log("huhu :)");
        var elementId = jQuery(this).attr('id');
        jQuery(elementId).replaceWith(this);
    });
    */

    /*
    jQuery(document).on('submit', 'form.form-framework', function (event) {
       // console.log(jQuery(this).attr('action'));
        jQuery.ajax
        ({
             url: jQuery(this).attr('action'),
             data: jQuery(this).serialize(),
             type: 'post',
             success: function (result) {
                console.log(result);
             }
         });
        event.preventDefault();
    });
    */



});

