<div id="$Name" class="field form-group mb-3<% if $extraClass %> $extraClass<% end_if %><% if $Message %> is-invalid<% end_if %>">
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableFormFieldLabel %>
    {$Field}
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableFormFieldRightTitle %>
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableFormFieldMessage %>
</div>