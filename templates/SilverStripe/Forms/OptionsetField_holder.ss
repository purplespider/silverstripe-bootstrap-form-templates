<div id="{$HolderID.ATT}" class="form-checkX form-group {$ExtraClass.ATT} <% if $Message %>is-invalid<% end_if %>">
    <% if $Title %>
        <div class="form-label" id="title-{$ID}">
            {$Title}
            <% if $Required %>
                <span class="required help-text">(<%t CWP_Form.RequiredLabel "required" %>)</span>
            <% end_if %>
        </div>
    <% end_if %>

    {$Field}
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldMessage %>
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldDescription %>
</div>
