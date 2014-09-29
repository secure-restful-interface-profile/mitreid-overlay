<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="o" tagdir="/WEB-INF/tags"%>
<o:header title="Log In" />
<script type="text/javascript">
<!--

$(document).ready(function() {
	$('#j_username').focus();
});

//-->
</script>
<o:topbar />
<div class="container-fluid main">

	<c:if test="${ param.error != null }">
		<div class="alert alert-error">The system was unable to log you
			in. Please try again.</div>
	</c:if>

	<h1>Enter your email address to log in</h1>

	<div class="row-fluid" id="oidcLogin">
		<div class="span4 offset1 well">
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


	<div class="row-fluid" id="legacyLogin">
		<div class="span4 offset1 well">
			<form action="<%=request.getContextPath()%>/j_spring_security_check"
				method="POST">
				<div>
					<div class="input-prepend input-block-level">
						<span class="add-on"><i class="icon-user"></i></span>
						<input type="text" placeholder="Username" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" value="" id="j_username" name="j_username">
					</div>
				</div>
				<div>
					<div class="input-prepend input-block-level">
						<span class="add-on"><i class="icon-lock"></i></span>
						<input type="password" placeholder="Password" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false" id="j_password" name="j_password">
					</div>
				</div>
				<div>
					<input type="submit" class="btn" value="Login" name="submit">
				</div>
			</form>
		</div>
	</div>


</div>

<script type="text/javascript">

	$(document).ready(function() {
		$('#legeacyLogin').hide();
		
	});

</script>

<o:footer/>
