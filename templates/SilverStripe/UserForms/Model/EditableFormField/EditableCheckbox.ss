<input 
    $getAttributesHTML('aria-required', 'class') 
    class="$ExtraClass.ATT form-check-input <% if $Message %>is-invalid<% end_if %>"
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableAriaAttributes %> 
/>
