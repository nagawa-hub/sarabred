const userPulldown = () => {
  const userIcon = document.getElementById("user-icon")
  const userMenu = document.getElementById("user-menu")
  if(userIcon != null && userMenu != null){
    userIcon.addEventListener('click', function(){
      if(userMenu.getAttribute("style") == "display:block;"){
        userMenu.removeAttribute("style", "display:block;")
      }else {
        userMenu.setAttribute("style", "display:block;")
      }
    })
  }
}

window.addEventListener("load", userPulldown)