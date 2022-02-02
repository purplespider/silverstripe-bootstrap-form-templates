<div id="$Name" class="field form-group mb-3<% if $extraClass %> $extraClass<% end_if %>" <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableAriaAttributes %> >
    <%-- not using FormFieldLabel since this is a legend element --%>
    <% if $Title %><div class="form-label">$Title</div><% end_if %>
    {$Field}
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableFormFieldMessage %>
    <% include PurpleSpider/BootstrapForms/Includes/Userforms/EditableFormFieldRightTitle %>
</div>
