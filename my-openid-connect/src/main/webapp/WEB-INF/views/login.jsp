<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="o" tagdir="/WEB-INF/tags"%>
<o:header title="Log In" />
<script type="text/javascript">
<!--

$(document).ready(function() {
	$('#identifier').focus();
});

//-->
</script>
<o:topbar />
<div class="container-fluid main">

	<c:if test="${ param.error != null }">
		<div class="alert alert-error">The system was unable to log you
			in. Please try again.</div>
	</c:if>


	<div class="row-fluid" id="oidcLogin">
		<div class="span4 offset1 well">
			<h3>Enter your email address to log in</h3>
			<form action="<%=request.getContextPath()%>/openid_connect_login" method="POST">
				<div>
					<div class="input-prepend input-block-level">
						<span class="add-on"><i class="icon-user"></i></span>
						<input type="text" placeholder="Identity" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" value="" id="identifier" name="identifier">
					</div>
				</div>
				<div>
					<input type="submit" class="btn" value="Login" name="submit">
				</div>
			</form>
		</div>
	</div>

</div>

<o:footer/>
