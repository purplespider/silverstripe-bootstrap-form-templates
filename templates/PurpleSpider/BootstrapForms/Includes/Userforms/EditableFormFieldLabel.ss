<% if $Title %>
    <label class="form-label" <% if not $HideForAttribute %>for="{$ID}" <% end_if %>id="title-{$ID}">
        {$Title}
        <% if $Required %>
            <span class="help-text">(<%t CWP_Form.RequiredLabel "required" %>)</span>
        <% end_if %>
    </label>
<% end_if %>