<% if $Title %>
    <label class="form-label" for="{$ID}" id="title-{$ID}">
        {$Title}
        <% if $Required %>
            <span class="help-text">(<%t PS_BootstrapForms.RequiredLabel "required" %>)</span>
        <% end_if %>
    </label>
<% end_if %>