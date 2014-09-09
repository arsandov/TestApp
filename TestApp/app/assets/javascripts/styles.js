$(document).ready(function(){
    $('.ingresar').on('keyup','.textInput',function(){
        var tagFilter ='.' + $(this).val();
        $('.post').removeClass('high');
        $('.post').filter(tagFilter).addClass('high');
    });
});