Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


Code in home.html.erb to show products
<% if user_signed_in? %>
    <h5 class="mt-3">Bienvenue, <%= current_user.name %>!</h5>

    <% if current_user.products.any? %>
      <p>Voici vos produits :</p>
      <div class="row row-cols-sm-2 row-cols-md-2 row-cols-lg-3 g-md-2 g-lg-4">
        <% @products.each do |product| %>
          <% if current_user.id == product.user_id %>
              <div class=""><%= link_to product.name, product_path(product), class: 'link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover' %></div>
          <% end %>
        <% end %>
      </div>
    <% else %>
      <p>Vous n'avez pas encore ajouté de produits.</p>
    <% end %>
    <%= link_to 'Ajouter un produit', new_product_path, class: 'btn btn-secondary mt-3' %>
  <% end %>
