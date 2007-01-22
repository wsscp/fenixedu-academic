<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr" %>

<html:xhtml/>

<logic:present role="ACADEMIC_ADMINISTRATIVE_OFFICE">

<em><bean:message key="label.academicAdminOffice" bundle="ACADEMIC_OFFICE_RESOURCES"/></em>
<h2><bean:message key="label.externalUnits.externalCurricularCourse" bundle="ACADEMIC_OFFICE_RESOURCES"/> <bean:write name="externalCurricularCourseBean" property="externalCurricularCourse.name"/> </h2>

<fr:view name="externalCurricularCourseBean" schema="AbstractExternalUnitResultBean.view-breadCrumbs-path">
	<fr:layout name="flow">
		<fr:property name="labelExcluded" value="true" />
	</fr:layout>
</fr:view>

<br/>
<bean:define id="externalCurricularCourseId">&amp;oid=<bean:write name="externalCurricularCourseBean" property="externalCurricularCourse.idInternal" /></bean:define>
<ul>
	<li><html:link page="<%="/externalUnits.do?method=prepareCreateExternalEnrolment" + externalCurricularCourseId  %>"><bean:message key="label.externalUnits.createExternalEnrolment" bundle="ACADEMIC_OFFICE_RESOURCES" /></html:link></li>
</ul>
<ul>
	<li><bean:message key="label.externalUnits.externalEnrolments" bundle="ACADEMIC_OFFICE_RESOURCES"/>:<bean:size id="size" name="externalEnrolments" /> <%= size %></li>
</ul>

<h3><bean:message key="label.externalUnits.externalEnrolments" bundle="ACADEMIC_OFFICE_RESOURCES"/>:</h3>
<logic:notEmpty name="externalEnrolments">
	<fr:view name="externalEnrolments" schema="ExternalEnrolment.view">
		<fr:layout name="tabular">
			<fr:property name="classes" value="tstyle4"/>
		</fr:layout>
	</fr:view>
</logic:notEmpty>
<logic:empty name="externalEnrolments">
	<em><bean:message key="label.externalUnits.noExternalEnrolments" bundle="ACADEMIC_OFFICE_RESOURCES"/></em>
</logic:empty>

</logic:present>
