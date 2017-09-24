<% if obj.errors.any? %>
<div class="row">
    <div class="col-xs-8 col-xs-offset-2">
        <div class="panel panel-danger">
            <div class="panel-heading">
                <h2 class="panel-title">
                    <%= pluralize(obj.errors.count, "error")%>
                    prohibited this article from being saved:
                </h2>
                <div class="panel-body"> 
                    <ul>
                        <% obj.errors.full_messages.each do |msg| %>
                        <li><%= msg%></li>
                        <% end %>
                    </ul>
                </div>    
            </div>
        </div>
    </div>
 </div>               
<% end %> 