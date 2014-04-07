<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/user.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
    </div>
    <div class="contentes">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php if ($sort == 'username') { ?>
                <a href="<?php echo $sort_username; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_username; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_username; ?>"><?php echo $column_username; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'date_added') { ?>
                <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                <?php } ?></td>
			  <td class="center"><?php if ($sort == 'status') { ?>
                <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                <?php } ?></td>
              <td class="center"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($users) { ?>
            <?php foreach ($users as $user) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($user['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $user['user_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $user['user_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $user['username']; ?></td>
              <td class="left"><?php echo $user['date_added']; ?></td>
			  <td class="center"><?php echo $user['status']; ?></td>
              <td class="center" width="80">
			    <?php foreach ($user['action'] as $action) { ?>
				  <?php if ($this->config->get('config_buttons_apply') == 0) { ?>
				    [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
				  <?php } else { ?>
					<a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a>
				  <?php } ?>
                <?php } ?>
			  </td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="5"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
		  <tfoot>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php if ($sort == 'username') { ?>
                <a href="<?php echo $sort_username; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_username; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_username; ?>"><?php echo $column_username; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'date_added') { ?>
                <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                <?php } ?></td>
			  <td class="center"><?php if ($sort == 'status') { ?>
                <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                <?php } ?></td>
              <td class="center"><?php echo $column_action; ?></td>
            </tr>
          </tfoot>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
	<div class="foot_heading">
      <h1><img src="view/image/user.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$("span.tooltip").tooltip({
	track: true, 
    delay: 0, 
    showURL: false, 
    showBody: " - ", 
    fade: 250 
});
//--></script>
<?php echo $footer; ?> 