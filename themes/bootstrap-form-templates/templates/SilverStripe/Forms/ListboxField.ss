<select 
    $getAttributesHTML('class') 
    class="$ExtraClass.ATT form-control"
    <% include PurpleSpider/BootstrapForms/Includes/AriaAttributes %> 
    >
    <% loop $Options %>
        <option value="$Value.XML"<% if $Selected %> selected="selected"<% end_if %><% if $Disabled %> disabled="disabled"<% end_if %>>$Title.XML</option>
    <% end_loop %>
</select>
