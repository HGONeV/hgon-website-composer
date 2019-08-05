$('.js-navbar').helllnav();
$('.js-slider').helllslider();
$('.js-lightbox').helllbox();
$('.js-open-mdl').helllmodal();

function copyToClipboard() {
    /* Get the text field */
    var copyText = document.getElementById("hgon-url");

    /* Select the text field */
    copyText.select();

    /* Copy the text inside the text field */
    document.execCommand("copy");

    /* Alert the copied text */
    jQuery(".clipboard-container").show().delay(5000).fadeOut(400);

    jQuery('.cb-close').bind('click', function(){
        jQuery('.clipboard-container').hide();
    });
}



// https://www.comuno.net/blog/detail/formular-mit-typoscript-rendering-per-ajax-verschicken/
function initAjaxForms() {
    $('form.form-framework[data-ajaxuri]').each(function() {
        var form = $(this);
        var form_id = '#' + form.attr('id');
        var form_class = '.' + form.attr('id');
        var ajaxuri = form.attr("data-ajaxuri");
        var target = form_id;

        // Special for lightbox forms
        // check if form is hidden (and will be opened in a lightbox)
        // -> then we want to renew the copied lightbox form (not the hidden original-form)
        // -> but after first response we are asking if parent is featherlight
        if (jQuery(form).is(':hidden') || jQuery(form).parents('.featherlight-content').length ) {
            target = '.featherlight-content ' + form_id;
        }

        var options = {
            target: target,
            url: ajaxuri,
            success: function() {
                // re-init ajax forms
                initAjaxForms();
            //    form.fadeIn('slow');

                // Really dirty stuff to get the form in lightbox content
                // Problem: By some reason we got the html around the form as response
                if (target.indexOf('.featherlight-content') == 0) {
                    jQuery('.featherlight-content section.section').hide();
                    jQuery('.featherlight-content .featherlight-form-container'+form_class).show();
                }
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

