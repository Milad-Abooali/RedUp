<!-- BEGIN: USER PROFILE SEARCH PAGE -->
<template id="profile_search_page">
<div class="col-sm-9 pull-right text-center">
    <br/><br />
    <h3>نام کاربری مورد نظرتان را جهت نمایش پروفایل کاربری وارد کنید:</h3><br/><br />
    <form action="profile.php" method="get" id="username_form">
        <input type="text"  name="view" class="form-control" /><br />
        <input type="submit" value="View" class="btn btn-success btn-sm" />
    </form> 
</div>
</template>
<!-- END: USER PROFILE SEARCH PAGE -->

<!-- BEGIN: USER PROFILE PAGE -->
<template id="profile_page">
<div class="col-sm-9 pull-right text-center">
	<div class="table_border" dir="rtl">
		<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
			<tr>
				<td colspan="2" class="table_footer">پروفایل   <# USER_NAME #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>پست الکترونیک</span>:</td>
				<td class="tdrow2" valign="top"><# EMAIL_ADDRESS #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>تاریخ عضویت</span>:</td>
				<td class="tdrow2"><# TIME_JOINED #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>کشور</span>:</td>
				<td class="tdrow2" valign="top"><# FROM_COUNTRY #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>شهر</span>:</td>
				<td class="tdrow2" valign="top"><# FROM_CITY #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>آدرس سایت / وبلاگ</span>:</td>
				<td class="tdrow2" valign="top"><# HOMEPAGE_URL #></td>
			</tr>
			<tr>
				<td class="tdrow1" style="width: 38%;"><span>حساب فیسبوک</span>:</td>
				<td class="tdrow2" valign="top"><# FACEBOOK_PAGE #></td>
			</tr>
		</table>
	</div>
</div>
</template>
<!-- END: USER PROFILE PAGE -->