<%-- Used by custom forms and Userforms --%>
<% if $UseButtonTag %>
    <button $getAttributesHTML('class') class="{$ExtraClass.ATT} btn btn-primary rounded" />
    <% if $ButtonContent %>
        {$ButtonContent.RAW}
    <% else %>
        {$Title.XML}
    <% end_if %>
    </button>
<% else %>
    <input $getAttributesHTML('class') class="{$ExtraClass.ATT} btn btn-primary rounded" />
<% end_if %>
