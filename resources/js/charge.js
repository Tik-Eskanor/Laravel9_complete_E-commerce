// This is a public sample test API key.
// Don’t submit any personally identifiable information in requests made with this key.
// Sign in to see your own test API key embedded in code samples.

const stripe = Stripe("pk_test_51Nr2lGFJQLGYgsn7HrsaNC3uCy7JmYTQTX0CoBJYhLWAXH52doVRceiunksWrqFtqtP5rpVkd9uQZirIXzGWQzpy007FRCTiXg");

let elements;
let paymentCard;

initialize();
document
  .querySelector("#payment-form")
  .addEventListener("submit", handleSubmit);

// create the card payment element using srtipe js
async function initialize() 
{
  elements = stripe.elements();
  paymentCard = elements.create("card",{
    hidePostalCode:true
  });
  paymentCard.mount("#payment-card-element");
}


// handle the submit of the form manually
async function handleSubmit(e) {
  e.preventDefault();
  setLoading(true);

  //optional but important for more details
    let options = { 
      name:document.getElementById('card_name').value,
      address_line1:document.getElementById('address').value,
      address_city:document.getElementById('city').value,
      address_state:document.getElementById('province').value,
      address_zip:document.getElementById('postalcode').value
    }

    let  tkn = stripe.createToken(paymentCard,options).then(function($result){
    if($result.error)
    {
      showMessage($result.error.message)
      setLoading(false);
    }
    else
    {
      stripeTokenHandler($result.token)
    }
  })
}


// --------Token Handler-----
function stripeTokenHandler(token)
{
  // this function inserts the token id inside the form so that it can be submitted to the server
  let form = document.querySelector('#payment-form')
  let hiddenInput = document.createElement('input')
  hiddenInput.setAttribute('type','hidden')
  hiddenInput.setAttribute('name','stripeToken')
  hiddenInput.setAttribute('value',token.id)
  form.appendChild(hiddenInput)

  // submit form
  form.submit()
}
// ------- UI helpers -------

function showMessage(messageText) {
  const messageContainer = document.querySelector("#payment-message");

  messageContainer.classList.remove("hide-spinner");
  messageContainer.textContent = messageText;

  setTimeout(function () {
    messageContainer.classList.add("hide-spinner");
    messageContainer.textContent = "";
  }, 4000);
}

// Show a spinner on payment submission
function setLoading(isLoading) {
  if (isLoading) {
    // Disable the button and show a spinner
    document.querySelector("#checkout-btn").disabled = true;
    document.querySelector("#spinner").classList.remove("hidden");
    document.querySelector("#button-text").classList.add("hidden");
  } else {
    document.querySelector("#checkout-btn").disabled = false;
    document.querySelector("#spinner").classList.add("hidden");
    document.querySelector("#button-text").classList.remove("hidden");
  }
}