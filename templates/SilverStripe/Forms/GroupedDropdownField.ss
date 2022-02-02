<select 
    {$getAttributesHTML('class')} 
    class="$ExtraClass form-control" 
    <% include PurpleSpider/BootstrapForms/Includes/AriaAttributes %> 
    >
    <% loop $Options %>
        <% include SilverStripe/Forms/GroupedDropdownFieldOption %>
    <% end_loop %>
</select>
