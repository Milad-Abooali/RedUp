<!-- BEGIN: PUBLIC GALLERY PAGE -->
<div class="col-lg-9">
    <if="$mmhclass->info->is_admin == true">
        <script type="text/javascript" src="source/public_html/admin/adminjscript.js" charset="UTF-8"></script>
    </endif>
    <if="$mmhclass->templ->templ_globals['empty_gallery'] == true">
        <# EMPTY_GALLERY #>
    <else>
        <# PAGINATION_LINKS #>
        <br /><br />
        <# GALLERY_HTML #>
        <br /><br />
        <# PAGINATION_LINKS #>
        <script type="text/javascript" src="source/includes/scripts/gallery.js" charset="UTF-8"></script>
    </endif>
</div>
<!-- END: PUBLIC GALLERY PAGE -->

