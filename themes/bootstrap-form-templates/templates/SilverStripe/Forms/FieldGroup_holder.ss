<div id="{$HolderID.ATT}" class="field <% if $Message %>is-invalid<% end_if %>">
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldLabel %>
    <div class="field-group <% if $Zebra %>field-group-zebra<% end_if %> {$ExtraClass.ATT}">
        <% loop $FieldList %>
            <div class="field-group-field form-group {$FirstLast.ATT} {$EvenOdd.ATT} {$ExtraClass.ATT}">
                {$SmallFieldHolder}
            </div>
        <% end_loop %>
    </div>
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldMessage %>
    <% include PurpleSpider/BootstrapForms/Includes/FormFieldDescription %>
</div>
