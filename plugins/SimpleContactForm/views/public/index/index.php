<?php echo head(); ?>
    <div class="row">
        <a href="https://www.arteveldehogeschool.be/mediatheek/live/ws/" class="mediatheeklink">
            <div class="col-6" id="mediatheeklogocontainer">
                <h2 id="mediatheeklogo1"> de mediatheek</h2>
                <h2 id="mediatheeklogo2"> wil je nu wat weten?</h2>
            </div>
        </a>
        <div id="search-container" class="col-6">
            <?php if (get_theme_option('use_advanced_search') === null || get_theme_option('use_advanced_search')): ?>
                <?php echo search_form(array('show_advanced' => true)); ?>
            <?php else: ?>
                <?php echo search_form(); ?>
            <?php endif; ?>
        </div>
    </div>
    <div class="row">
        <div class="col-12 breadcrumbs hidden-sm">
            <h4 class="breadcrumb"><?php echo link_to_home_page(__('Home')); ?></h4>
            <h4 class="breadcrumb"><?php echo 'Contact';?></h4>
        </div>
    </div>
<div class="row">
<!--    <h1>--><?php //echo html_escape(get_option('simple_contact_form_contact_page_title')); ?><!--</h1>-->
<div class="col-12">
    <div id="form-instructions">
        <?php echo get_option('simple_contact_form_contact_page_instructions'); // HTML ?>
    </div>
    <?php echo flash(); ?>
    <form name="contact_form" id="contact-form"  method="post" enctype="multipart/form-data" accept-charset="utf-8">

        <fieldset>
        <div class="field">
        <?php echo $this->formLabel('name', 'Naam: '); ?>
            <div class='inputs'>
            <?php echo $this->formText('name', $name, array('class'=>'textinput')); ?>
            </div>
        </div>
        
        <div class="field">
            <?php echo $this->formLabel('email', 'Email: '); ?>
            <div class='inputs'>
                <?php echo $this->formText('email', $email, array('class'=>'textinput'));  ?>
            </div>
        </div>
        
        <div class="field">
          <?php echo $this->formLabel('message', 'Bericht: '); ?>
          <div class='inputs'>
          <?php echo $this->formTextarea('message', $message, array('class'=>'textinput', 'rows' => '10')); ?>
          </div>
        </div>
        
        </fieldset>


        <fieldset>
        <?php if ($captcha): ?>
        <div class="field">
            <?php echo $captcha; ?>
        </div>
        <?php endif; ?>

        <div class="field">
          <?php echo $this->formSubmit('send', 'Verzenden'); ?>
        </div>
        
        </fieldset>
    </form>
</div>

</div>
<?php echo foot();
