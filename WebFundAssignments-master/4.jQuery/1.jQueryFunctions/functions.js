$(document).ready(function(){
    $('#slideDown p').hide();
    $('#fadeIn p').hide();

    
   
        $('#hide button').click(function(){
            $('#hide p').hide();
        });
        $('#show button').click(function(){
            $('#hide p').show();
        })
     $('#toggle button').click(function(){
         $("#toggle p").toggle('slow');
     })
     $('#slideDown button').click(function(){
        $('#slideDown p').slideDown('slow');
     })
     $('#slideUp button').click(function(){
         $('#slideUp p').slideUp('slow');

     })
     $('#slidetoggle button').click(function(){
         $('#slidetoggle h1').slideToggle('slow');
     })
     $('#fadeIn button').click(function(){
         $('#fadeIn p').fadeIn();
     })
     $('#fadeOut button').click(function(){
         $('#fadeOut p').fadeOut();
     })
     $('#addClass button').click(function(){
        $('#addClass p').addClass('red');
    });
     $('#before button').click(function(){
         $('#before p').before('<p>Keep Going^^</p>');
     })
     $('#after button').click(function(){
         $('#after p').after('<p>Keep Adding^^</p>');
     })
     $('#append button').click(function(){
         $('#append h1').append('<p>Please add some details...</p>');
     })
     $('#addsomehtml button').click(function(){
         $('#addsomehtml h1').html("<span class='red'>Hello <b>Again</b></span>");
     })
     $('#Attribute button').click(function(){
        $('#Attribute h1').css("border", "3px dotted green");
    })
    $('#value button').click(function(){
        $('#value input').val("enter your name");
    })
    $('#text button').click(function(){
        $('#text p').text('Change your content in p, it will look great');
    })

    // put your code for the remaining functions below

});





