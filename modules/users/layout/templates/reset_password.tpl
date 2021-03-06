{include:'{$CORE_PATH}/layout/templates/head.tpl'}

<div class="container">
	<section id="{$MODULE}" class="{$ACTION}">
		<div class="row">
			<div class="col-xs-12">
				<header class="header hide">
					<h2>{$msgUsersLogin}</h2>
				</header>

				<a href="/" class="logo">Sumocoders</a>

				{option:report}<div class="alert alert-info">{$report}</div>{/option:report}

				{form:resetPassword}
					{option:txtPasswordConfirmError}<div class="alert alert-error">{$txtPasswordConfirmError}</div>{/option:txtPasswordConfirmError}

					<fieldset>
						<div class="form-group{option:txtPasswordError} error{/option:txtPasswordError}">
							<label class="control-label" for="password">{$lblPassword|ucfirst}<abbr title="{$msgRequired}">*</abbr></label>
							<div class="input-group">
								<div class="input-group-addon password"></div>
								{$txtPassword} {$txtPasswordError}
							</div>
						</div>

						<div class="form-group{option:txtPasswordConfirmError} error{/option:txtPasswordConfirmError}">
							<label class="control-label" for="passwordConfirm">{$lblConfirm|ucfirst}<abbr title="{$msgRequired}">*</abbr></label>
							<div class="input-group">
								<div class="input-group-addon password"></div>
								{$txtPasswordConfirm} {$txtPasswordConfirmError}
							</div>
						</div>

						<button type="submit" class="btn btn-lg btn-block">{$lblSend|ucfirst}<i class="icon iconArrowWhiteRight"></i></button>
					</fieldset>
				{/form:resetPassword}
			</div>
		</div>
	</section>

	<!-- {include:'{$CORE_PATH}/layout/templates/footer.tpl'} -->
</div>
</body>
</html>
