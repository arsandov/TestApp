$(document).ready(function(){
    $('.ingresar').on('keyup','.textInput',function(){
        var tagFilter ='.' + $(this).val();
        $('.post').addClass('hide');
        $('.post').filter(tagFilter).removeClass('hide');
    });
});
$(document).ready(function(){
    $('.change').on('click',function(){
       $('#image_box').attr('src',$(this).closest('.post').data('image'));
    });
});
$(document).ready(function(){
    $('#animate').on('click',function(){
        $('#image_box').addClass($( "#animation_box" ).val()+" animated");
    });
});