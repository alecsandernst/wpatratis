jQuery(document).ready(function(){
    jQuery('.owl-topo').owlCarousel({
        items: 1,
        loop:true,
        dots:true,
        margin:0,
        responsive:{
            0:{
                items:1,
                dots: true
                
            },
            600:{
                items:1,
                dots: true
            },
            1000:{
                items:1,
                dots: true
            }
        }
    })
    });


jQuery(document).ready(function(){
    jQuery('.owl-mentores').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
            0: { items: 1 },
            600: { items: 2 },
            1000: { items: 4 }
        },
        autoHeight: true
    })
    });

jQuery(document).ready(function(){
  jQuery('.owl-numeros').owlCarousel({
    loop:true,
    dots:true,
    margin:10,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:4
        }
    }
})
  });

jQuery(document).ready(function(){
 jQuery('.owl-time').owlCarousel({
    loop:false,
    dots:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})
});

// Adiciona eventos aos botões de tab
document.getElementById("aceleradasBtn").addEventListener("click", function() {
    // Mostrar conteúdo de 'Aceleradas' e esconder 'Aquisições'
    document.getElementById("aceleradas").style.display = "block";
    document.getElementById("aquisoes").style.display = "none";
    
    // Adicionar estilos para mostrar qual tab está ativa
    this.classList.add("active");
    document.getElementById("aquisoesBtn").classList.remove("active");
});

document.getElementById("aquisoesBtn").addEventListener("click", function() {
    // Mostrar conteúdo de 'Aquisições' e esconder 'Aceleradas'
    document.getElementById("aceleradas").style.display = "none";
    document.getElementById("aquisoes").style.display = "block";
    
    // Adicionar estilos para mostrar qual tab está ativa
    this.classList.add("active");
    document.getElementById("aceleradasBtn").classList.remove("active");
});

- - - 
document.getElementById("incubacaoBtn").addEventListener("click", function() {
    // Mostrar conteúdo de 'Aceleradas' e esconder 'Aquisições'
    document.getElementById("incubacao").style.display = "block";
    document.getElementById("aceleracao").style.display = "none";
    
    // Adicionar estilos para mostrar qual tab está ativa
    this.classList.add("active");
    document.getElementById("aceleracaoBtn").classList.remove("active");
});

document.getElementById("incubacaoBtn").addEventListener("click", function() {
    // Mostrar conteúdo de 'Aquisições' e esconder 'Aceleradas'
    document.getElementById("incubacao").style.display = "none";
    document.getElementById("aceleracao").style.display = "block";
    
    // Adicionar estilos para mostrar qual tab está ativa
    this.classList.add("active");
    document.getElementById("incubacaoBtn").classList.remove("active");
});

$(document).ready(function() {
    var didScroll;
    var lastScrollTop = 0;
    var delta = 5;
    var navbarHeight = $('header').outerHeight();
  
    $(window).scroll(function(event) {
      didScroll = true;
    });
  
    setInterval(function() {
      if (didScroll) {
        hasScrolled();
        didScroll = false;
      }
    }, 250);
  
    function hasScrolled() {
      var st = $(this).scrollTop();
      if (Math.abs(lastScrollTop - st) <= delta) return;
      if (st > lastScrollTop && st > navbarHeight) {
        // Scroll Down
        $('header').removeClass('fixa').addClass('normal');
      } else {
        // Scroll Up
        if (st + $(window).height() < $(document).height()) {
          $('header').removeClass('normal').addClass('fixa');
        }
      }
      var top_offset = $(window).scrollTop();
      if (top_offset == 0) {
        $('header').removeClass('fixa fade-in');
      } else {
        $('header').addClass('menu-fixo');
      }
      lastScrollTop = st;
    }
  });
// Inicialização para exibir 'Aceleradas' ao carregar a página
document.getElementById("aceleradasBtn").click();
document.getElementById("incubacaoBtn").click(); 

function nextTime(){
    jQuery('.owl-time').trigger('next.owl.carousel');
    }
    
function prevTime(){
    jQuery('.owl-time').trigger('prev.owl.carousel');
}