<% if $Message || $RightTitle %>
    aria-describedby="<% if $Message %>message-$ID<% end_if %><% if $RightTitle %><% if $Message %> <% end_if %>description-$ID<% end_if %>"
<% end_if %>
<% if $Title %>
    aria-labelledby="<% if $Title %>title-$ID<% end_if %>"
<% end_if %>