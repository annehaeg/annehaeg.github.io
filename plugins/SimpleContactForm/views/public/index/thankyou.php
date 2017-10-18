<?php echo head(); ?>
    <div class="row">
        <div class="col-6 breadcrumbs hidden-sm">
            <h4 class="breadcrumb"><?php echo link_to_home_page(__('Home')); ?></h4>
            <h4 class="breadcrumb"><?php echo 'Contact';?></h4>
        </div>
        <div id="search-container" class="col-6">
            <?php if (get_theme_option('use_advanced_search') === null || get_theme_option('use_advanced_search')): ?>
                <?php echo search_form(array('show_advanced' => true)); ?>
            <?php else: ?>
                <?php echo search_form(); ?>
            <?php endif; ?>
        </div>
    </div>
    <div class="row">
    <!--    <h1>--><?php //echo html_escape(get_option('simple_contact_form_contact_page_title')); ?><!--</h1>-->
    <div class="col-12">
<h3><?php echo html_escape(get_option('simple_contact_form_thankyou_page_title')); // Not HTML ?></h3>
<?php echo get_option('simple_contact_form_thankyou_page_message'); // HTML ?>
</div>

<?php echo foot(); ?>