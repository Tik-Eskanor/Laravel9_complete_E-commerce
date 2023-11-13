
$('.owl-carousel').owlCarousel({
  loop:true,
  margin:50,
  nav:"",
  autoplay:true,
  autoplayTimeout:3000,
  autoplayHoverPause:true,
  responsive:{
    0:{
      items:1
    },
    400:{
      items:1
    },
    600:{
      items:1
    },
    1000:{
      items:1
    }
  }
  
})




//Change product quantity in cart
let className = document.querySelectorAll('.quantity');
for (let i = 0; i < className.length; i++) 
{
  className[i].addEventListener('change',function(){
  let id = className[i].getAttribute('data-id');
  let productQuantity = className[i].getAttribute('data-productQuantity');

     axios.patch(`/cart`,
     {
       quantity:this.value, //this is the user selected value 1-5
       productQuantity:productQuantity, //this is the total quantity available for this product in the database
       rowId:id
     }).then(function(response)
     {
       if(response)
       {
         window.location.href = "/cart";
       }
     }).catch(function(error)
     {
       window.location.href = "/cart";
     })
     
  })
}

// product gallary
let currentImage = document.getElementById('current-image');
let images = document.querySelectorAll('.images .img')

images.forEach((element)=>{
   element.addEventListener('click',switchImage)
})
function switchImage()
{
    currentImage.classList.remove('active')
    currentImage.addEventListener('transitionend',()=>{
        currentImage.src = this.src
        currentImage.classList.add('active')
    })
    

    images.forEach((element)=>{
        element.classList.remove('selected')
     })
     this.classList.add('selected')
}

// menu toggler
let menuToggler = document.getElementById('menu-toggler');
let mobileMenu = document.querySelector('.mobile-menu');


menuToggler.addEventListener('click',()=>{
mobileMenu.classList.toggle('active'); 
menuToggler.classList.toggle('fa-times'); 

})
