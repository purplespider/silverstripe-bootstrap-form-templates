<textarea 
        $getAttributesHTML('class') 
        class="$ExtraClass.ATT form-control<% if $Message %> is-invalid<% end_if %>" 
        <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableAriaAttributes %>
        >
    $Value
</textarea>