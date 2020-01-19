<?php
	// ======================================== \
	// Package: Mihalism Multi Host
	// Version: 5.0.0
	// Copyright (c) 2007, 2008, 2009 Mihalism Technologies
	// License: http://www.gnu.org/licenses/gpl.txt GNU Public License
	// LTE: 1251326120 - Wednesday, August 26, 2009, 06:35:20 PM EDT -0400
	// ======================================== /

	require_once "./source/includes/data.php";
	require_once "{$mmhclass->info->root_path}source/language/info.php";

	$mmhclass->templ->page_title = sprintf($mmhclass->lang['001'], $mmhclass->info->config['site_name']);

	switch ($mmhclass->input->get_vars['act']) {
		case "IMG-Convertor":
			$mmhclass->templ->page_title .= 'تبدیل پسوند تصویر';
			$mmhclass->templ->templ_vars[] = array(
				"SITE_NAME" => $mmhclass->info->config['site_name'],
			);
			$mmhclass->templ->output("tool", "IMG-Convertor");
        break;
		case "IMG-Resizer":
			$mmhclass->templ->page_title .= 'تغییر ابعاد تصویر';
			$mmhclass->templ->templ_vars[] = array(
				"SITE_NAME" => $mmhclass->info->config['site_name'],
			);
			$mmhclass->templ->output("tool", "IMG-Resizer");
        break;
		case "IMG-Optimize":
			$mmhclass->templ->page_title .= 'بهینه سازی تصویر';
			$mmhclass->templ->templ_vars[] = array(
				"SITE_NAME" => $mmhclass->info->config['site_name'],
			);
			$mmhclass->templ->output("tool", "IMG-Optimize");
        break;
		case "ICO-Genrator":
			$mmhclass->templ->page_title .= 'تولید آیکن';
			$mmhclass->templ->templ_vars[] = array(
				"SITE_NAME" => $mmhclass->info->config['site_name'],
			);
			$mmhclass->templ->output("tool", "ICO-Genrator");
        break;
		case "Bs64-Genrator":
			$mmhclass->templ->page_title .= 'Base64 تولید';
			$mmhclass->templ->templ_vars[] = array(
				"SITE_NAME" => $mmhclass->info->config['site_name'],
			);
			$mmhclass->templ->output("tool", "Bs64-Genrator");
        break;
		default:
			$mmhclass->templ->error($mmhclass->lang['005'], true);
	}

?>