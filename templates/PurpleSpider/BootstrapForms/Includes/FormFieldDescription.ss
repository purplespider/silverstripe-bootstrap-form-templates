<% if $Description || $RightTitle %>
    <div id="description-{$ID}" class="form-text">
    <% if $Description %>$Description <% end_if %>$RightTitle
    </div>
<% end_if %>