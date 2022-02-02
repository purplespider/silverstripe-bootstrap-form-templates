<span id="{$HolderID.ATT}" class="{$ExtraClass.ATT}<% if $Message %> is-invalid<% end_if %>">
    <div  class="form-check form-check-inline">
        {$Field}
        <label class="form-check-label" for="{$ID}" id="title-{$ID}">
            {$Title}
        </label>
        <% include PurpleSpider/BootstrapForms/Includes/FormFieldMessage %>
    </div>
</span>
