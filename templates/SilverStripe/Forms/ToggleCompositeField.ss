<div {$AttributesHTML} <% include PurpleSpider/BootstrapForms/Includes/AriaAttributes %>>
    <h{$HeadingLevel}>{$Title.XML}</h{$HeadingLevel}>
    <div>
        <% loop $FieldList %>
            {$FieldHolder}
        <% end_loop %>
    </div>
</div>
