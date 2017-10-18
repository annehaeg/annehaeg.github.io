<?php
$pageTitle = __('Tentoonstellingen');
echo head(array('title' => $pageTitle, 'bodyclass' => 'exhibits browse'));
?>

<div class="row">
    <div class="col-6 breadcrumbs hidden-sm">
        <h4 class="breadcrumb"><?php echo link_to_home_page(__('Home')); ?></h4>
        <h4 class="breadcrumb"><?php echo $pageTitle;?><?php echo __('(%s)', $total_results); ?></h4>
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
        <?php if (count($exhibits) > 0): ?>

<!--            <nav class="navigation secondary-nav">-->
<!--                --><?php //echo nav(array(
//                    array(
//                        'label' => __('Browse All'),
//                        'uri' => url('exhibits')
//                    ),
//                    array(
//                        'label' => __('Browse by Tag'),
//                        'uri' => url('exhibits/tags')
//                    )
//                )); ?>
<!--            </nav>-->

            <?php echo pagination_links(); ?>

            <?php $exhibitCount = 0; ?>
            <?php foreach (loop('exhibit') as $exhibit): ?>
                <?php $exhibitCount++; ?>
                <div class="exhibit <?php if ($exhibitCount%2==1) echo ' even'; else echo ' odd'; ?>">
                    <h2><?php echo link_to_exhibit(); ?></h2>
                    <?php if ($exhibitImage = record_image($exhibit)): ?>
                        <?php echo exhibit_builder_link_to_exhibit($exhibit, $exhibitImage, array('class' => 'image')); ?>
                    <?php endif; ?>
                    <?php if ($exhibitDescription = metadata('exhibit', 'description', array('no_escape' => true))): ?>
                        <div class="description"><?php echo $exhibitDescription; ?></div>
                    <?php endif; ?>
                    <?php if ($exhibitTags = tag_string('exhibit', 'exhibits')): ?>
                        <p class="tags"><?php echo $exhibitTags; ?></p>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>

            <?php echo pagination_links(); ?>

        <?php else: ?>
            <p><?php echo __('Er zijn nog geen tentoonstellingen om weer te geven.'); ?></p>
        <?php endif; ?>

    </div>
</div>

<?php echo foot(); ?>
