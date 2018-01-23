<p id="notice"><%= notice %></p>

<h1>Listing Products</h1>

<table>
<% @products.each do |product| %>
  <tr class="<%= cycle('list_line_odd', 'list_line_even') %>">
    <td>
      <%= image_tag(product.image_url, class:'list_image') %>
    </td>
    <td class="list_description">
      <dl>
        <dt><%= product.title %></dt>
        <dd><%=truncate(strip_tags(product.description), length: 80) %></dd>
      </dl>
    </td>
    <td class="list_actions">
    <%= link_to 'Show', product %><br/>
    <%= link_to 'Edit', edit_product_path(product) %><br/>
    <%= link_to 'Destroy', product, method: :delete, 
                data: { confirm: 'Are you sure?' } %>
    </td>
  </tr>
<% end %>
</table>

<br>

<%= link_to 'New Product', new_product_path %>






Product.delete_all
# . . .
Product.create!(title: 'Fish Figure',
  description: 
    %{<p>
        A hand-carved decorative fish made from single-origin finished (pine?).  
     </p>},
     image_url: 'https://s-media-cache-ak0.pinimg.com/236x/29/6c/43/296c43e3a6df4c3141f01103a119bcb3.jpg',
     price: 30.00
  )

Product.create!(title: 'Bird Figure',
  description:
    %{<p>
        A birdddddyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
    </p>},
     image_url: 'https://s-media-cache-ak0.pinimg.com/236x/29/6c/43/296c43e3a6df4c3141f01103a119bcb3.jpg',
     price: 100.00)
# . . .




.products {
  table {
  border-collapse: collapse;
  }
    
  table tr td {
    padding:        5px;
    vertical-align: top;
  }
    
  .list_image {
    width:  60px;
    height: 70px;
  }

  .list_description {
    width: 60%;

    dl {
      margin: 0;
    }

    dt {
      color:       #244;
      font-weight: bold;
      font-size:   larger;
    }

    dd {
      margin: 0;
    }
  }

  .list-actions {
    font-size:    x-small;
    text-align:   right;
    padding-left: lem;
  }

  .list_line_even {
    background: #e0f8f8;
  }

  .list_line_odd {
    background: #f8b0f8;
  }
}