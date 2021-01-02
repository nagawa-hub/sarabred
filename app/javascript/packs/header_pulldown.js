const headerPulldown = () => {
  const headerMenu = document.getElementById("header-menu")
  const sideMenu = document.getElementById("side-menu")
  if(headerMenu != null && sideMenu != null){
    headerMenu.addEventListener('click', function(){
      if(sideMenu.getAttribute("style") == "display:block;"){
        sideMenu.removeAttribute("style", "display:block;")
      }else {
        sideMenu.setAttribute("style", "display:block;")
      }
    })
  }
}

window.addEventListener("load", headerPulldown)