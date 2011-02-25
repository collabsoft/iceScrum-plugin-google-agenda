<form id="googleForm" name="googleForm" method="post" class='box-form box-form-small-legend box-content box-form-180' onsubmit="$('input[name=googleButton]').click();return false;">
    <is:fieldset title="is.googleAgenda.ui.googleAgendaAdmin">
        <is:fieldInformation nobordertop="false">
          <g:message code="${login?'is.googleAgenda.ui.changeAccountDescription':'is.googleAgenda.ui.setAccountDescription'}"/>
        </is:fieldInformation>
        <is:fieldInput for="googleLogin" label="is.googleAgenda.ui.googleLogin">
          <is:input id="googleLogin" name="googleLogin" />
        </is:fieldInput>
        <is:fieldInput for="googlePassword" label="is.googleAgenda.ui.googlePassword">
          <is:password id="googlePassword" name="googlePassword" />
        </is:fieldInput>
        <is:buttonBar id="googleButtonBar">
          <is:button
                    id="buttonSubmit"
                    remote="true"
                    history="false"
                    update="window-content-${id}"
                    type="submitToRemote"
                    url="[controller:id, action:'saveAccount', params:[product:params.product]]"
                    value="${login?message(code:'is.googleAgenda.ui.changeAccount'):message(code:'is.googleAgenda.ui.connectAccount')}" />
        <g:if test="${login}">
          <is:button
                    id="buttonCancel"
                    remote="true"
                    history="false"
                    update="window-content-${id}"
                    type="submitToRemote"
                    url="[controller:id, action:'index', params:[product:params.product]]"
                    value="${message(code:'is.googleAgenda.ui.cancel')}" />
        </g:if>


        </is:buttonBar>

    </is:fieldset>

</form>
<is:shortcut key="return" callback="\$('#buttonSubmit').click();"/>