<?php $pageTitle = metadata('exhibit', 'title') ?>
<?php echo head(array('title' => metadata('exhibit', 'title'), 'bodyclass'=>'exhibits summary')); ?>
<div class="row">
    <div class="col-6 breadcrumbs hidden-sm">
        <h4 class="breadcrumb"><?php echo link_to_home_page(__('Home')); ?></h4>
        <h4 class="breadcrumb"><?php echo link_to('exhibits', '', 'Tentoonstellingen');?></h4>
        <h4 class="breadcrumb"><?php echo $pageTitle?></h4>
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
    <div class="col-12">

<!--<h1>--><?php //echo metadata('exhibit', 'title'); ?><!--</h1>-->
<?php echo exhibit_builder_page_nav(); ?>

<div id="primary">
<?php if ($exhibitDescription = metadata('exhibit', 'description', array('no_escape' => true))): ?>
<div class="exhibit-description">
    <?php echo $exhibitDescription; ?>
</div>
<?php endif; ?>

<?php if (($exhibitCredits = metadata('exhibit', 'credits'))): ?>
<div class="exhibit-credits">
    <h3><?php echo __('Credits'); ?></h3>
    <p><?php echo $exhibitCredits; ?></p>
</div>
<?php endif; ?>
</div>

<?php
$pageTree = exhibit_builder_page_tree();
if ($pageTree):
?>
<nav id="exhibit-pages">
    <?php echo $pageTree; ?>
</nav>
<?php endif; ?>

<?php echo foot(); ?>
