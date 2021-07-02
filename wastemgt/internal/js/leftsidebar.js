$(document).ready(function() {

  $(".sidebar-dropdown > a").click(function() {
      $(".sidebar-submenu").slideUp("slow");
      $(".sidebar-submenu-child").slideUp("slow");
      if (
          $(this)
          .parent()
          .hasClass("active")
      ) {
          $(".sidebar-dropdown").removeClass("active");
          $(this)
              .parent()
              .removeClass("active");
      } else {
          $(".sidebar-dropdown").removeClass("active");
          $(this)
              .next(".sidebar-submenu")
              .slideDown(200);
          $(this)
              .parent()
              .addClass("active");
      }
  });
  $(".sidebar-dropdown-child > a").click(function() {
      $(".sidebar-submenu-child").slideUp("slow");
      if (
          $(this)
          .parent()
          .hasClass("active")
      ) {
          $(".sidebar-dropdown-child").removeClass("active");
          $(this)
              .parent()
              .removeClass("active");
      } else {
          $(".sidebar-dropdown-child").removeClass("active");
          $(this)
              .next(".sidebar-submenu-child")
              .slideDown(200);
          $(this)
              .parent()
              .addClass("active");
      }
  });
  $("#close-sidebar").click(function() {
      $(".page-wrapper").removeClass("toggled");
  });
  $("#show-sidebar").click(function() {
      $(".page-wrapper").addClass("toggled");
  });

});