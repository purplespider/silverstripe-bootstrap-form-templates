<div id="{$HolderID.ATT}" class="field {$ExtraClass.ATT} <% if $Message %>is-invalid<% end_if %>">
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldLabel %>
    <div class="field-group <% if $Zebra %>field-group-zebra<% end_if %>">
        <% loop $FieldList %>
            <div class="field-group-field {$FirstLast.ATT} {$EvenOdd.ATT}">
                {$SmallFieldHolder}
            </div>
        <% end_loop %>
    </div>
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldMessage %>
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldDescription %>
</div>
