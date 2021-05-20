function addToCookies(id) {

  // Setup Expiry Date
  var expiryDate = new Date();
  expiryDate.setTime(expiryDate.getTime() + (365*24*60*60*1000));
  var expiryDateTxt = "expires=" + expiryDate.toUTCString();

  // Get current saved list from cookies
  var saved_list = [];
  if (getCookie("saved_list") != "")
    saved_list = JSON.parse(getCookie("saved_list"));

  if (saved_list.indexOf(id) === -1)
    saved_list.push(id);

  var saved_list_json = JSON.stringify(saved_list);

  // Apply Cookie
  document.cookie = "saved_list" + "=" + saved_list_json + ";" + expiryDateTxt + ";path=/";
  console.log("Added item " + id + " to Cookies.");
  location.reload();
}

function removeFromCookies(id) {
  // Setup Expiry Date
  var expiryDate = new Date();
  expiryDate.setTime(expiryDate.getTime() + (365*24*60*60*1000));
  var expiryDateTxt = "expires=" + expiryDate.toUTCString();

  // Get current saved list from cookies
  var saved_list = [];
  if (getCookie("saved_list") != "")
    saved_list = JSON.parse(getCookie("saved_list"));

  // Remove element
  if (saved_list.includes(id))
    var i = saved_list.indexOf(id)
    saved_list.splice(i, 1);

  var saved_list_json = JSON.stringify(saved_list);

  // Apply Cookie
  document.cookie = "saved_list" + "=" + saved_list_json + ";" + expiryDateTxt + ";path=/";
  console.log("Added item " + id + " to Cookies.");
  location.reload();
}


// Sourced from https://www.w3schools.com/js/js_cookies.asp
function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}