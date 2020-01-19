<?php 
	require_once "./source/includes/data.php";
	require_once "{$mmhclass->info->root_path}source/language/users.php";

	$mmhclass->templ->page_title = sprintf($mmhclass->lang['9003'], $mmhclass->info->config['site_name']);

				$mmhclass->templ->templ_vars[] = array(
				   	"USER_ID" => $mmhclass->info->user_data['user_id'],
				   	"USERNAME" => $mmhclass->info->user_data['username'],
					"FROM_COUNTRY" => $mmhclass->info->user_data['country'],
					"FROM_CITY" => $mmhclass->info->user_data['city'],
					"HOMEPAGE_URL" => $mmhclass->info->user_data['homepage'],
					"FACEBOOK_PAGE" => $mmhclass->info->user_data['facebook'],
					"R_NAME" => $mmhclass->info->user_data['r_name'],
				);
				

				$mmhclass->templ->output("my_profile", "my_profile");
			
?>