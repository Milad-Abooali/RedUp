<!-- BEGIN: TOOLS PAGE -->
<template id="login">
<div class="col-lg-3"></div>
<div class="col-lg-3 text-center">

    <form action="users.php?act=login-d" method="post">
    <input type="text" name="username" id="username_field" maxlength="30" class="cb-ltr form-control" placeholder="Username" />
    <br /><br /><br />
    <input type="password" name="password" id="pas" maxlength="30" class="cb-ltr form-control" value="Password" placeholder="Password" />
    <br /><br /><br />
    <input type="submit" value="ورود" id="loginr" class="btn btn-success btn-block" />
    <br /><br /><br />
    <input type="hidden" name="return" value="<# RETURN_URL #>" />
    </form>
    <span dir="rtl">
    رمز عبور خود را فرموش کرده اید؟ 
    <a href="contact.php?act=contact_us">تماس با ما</a>
    </span>

</div>
<div class="col-lg-3"></div>
</template>
<!-- END: TOOLS PAGE -->