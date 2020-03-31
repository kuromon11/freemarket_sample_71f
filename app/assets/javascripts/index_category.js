$(function() {
  $(".category_title").on("mouseover", function() {
    $(".parents_list").addClass("show");
  });
  
    function buildChildHTML(child){
      var html =`<li><a class="child_category" id="${child.id}" 
                  href="/category/${child.id}">${child.name}</a></li>`;
      return html;
    }
  
    $(".parent_category").on("mouseover", function() {
      var id = this.id
      $(".child_category").remove();
      $(".grand_child_category").remove();
      $(".children_list").addClass("add_css1");
      $(".add_css2").removeClass("add_css2");
      $.ajax({
        type: 'GET',
        url: '/items/category',
        data: {parent_id: id},
        dataType: 'json'
      }).done(function(children) {
        children.forEach(function (child) {
          var html = buildChildHTML(child);
          $(".children_list").append(html);
        })
      });
    });
  
    function buildGrandChildHTML(child){
      var html =`<li><a class="grand_child_category" id="${child.id}"
                 href="/category/${child.id}">${child.name}</a></li>`;
      return html;
    }
  
    $(document).on("mouseover", ".child_category", function () {
      var id = this.id
      $(".grand_children_list").addClass("add_css2");
      $.ajax({
        type: 'GET',
        url: '/items/category',
        data: {parent_id: id},
        dataType: 'json'
      }).done(function(children) {
        children.forEach(function (child) {
          var html = buildGrandChildHTML(child);
          $(".grand_children_list").append(html);
        })
        $(document).on("mouseover", ".child_category", function () {
          $(".grand_child_category").remove();
        });
        $(document).on("mouseleave", ".category_inner_list", function () {
          $(".show").removeClass("show");
          $(".add_css1").removeClass("add_css1");
          $(".add_css2").removeClass("add_css2");
          $(".child_category").remove();
          $(".grand_child_category").remove();
        });
      });
    });  
  });