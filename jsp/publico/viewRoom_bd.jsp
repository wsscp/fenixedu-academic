<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/app.tld" prefix="app" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ServidorApresentacao.TagLib.sop.v3.TimeTableType" %>
	<div id="invisible"><h2><bean:message key="title.info.room"/></h2></div>
	<br/> 
	<logic:present name="siteView" property="component" >
		<bean:define id="bodyComponent" name="siteView" property="component"/> 
		<bean:define id="infoRoom" name="bodyComponent" property="infoRoom"/>
           <div id="invisible"><table class="invisible" cellspacing="0" cellpadding="0" width="90%">
                <tr>
                    <td class="listClasses">
                        <b><bean:message key="property.room.name"/>:</b> <bean:write name="infoRoom" property="nome"/>
                    </td>
                    <td class="listClasses">
                        <b><bean:message key="property.room.building"/>:</b> <bean:write name="infoRoom" property="edificio"/>
                    </td>
                    <td class="listClasses">
                        <b><bean:message key="property.room.floor"/>:</b> <bean:write name="infoRoom" property="piso"/>
                    </td>
                </tr>
                <tr>
                    <td class="listClasses">
                        <b><bean:message key="property.room.type"/>:</b> <bean:write name="infoRoom" property="tipo"/>
                    </td>
                    <td class="listClasses">
                        <b><bean:message key="property.room.capacity.normal"/>:</b> <bean:write name="infoRoom" property="capacidadeNormal"/>
                    </td>
                    <td class="listClasses">
                        <b><bean:message key="property.room.capacity.exame"/>:</b> <bean:write name="infoRoom" property="capacidadeExame"/>
                    </td>
                </tr>
            </table>
</div>
		<br/>
		<bean:define id="infoLessons" name="bodyComponent" property="infoLessons"/>
	   	<app:gerarHorario name="infoLessons" type="<%= TimeTableType.ROOM_TIMETABLE %>"/> 

	</logic:present>

	<logic:notPresent name="siteView" property="component" >
		<table align="center" border='1' cellpadding='10'>
			<tr align="center">
				<td>
					<font color='red'> <bean:message key="message.public.notfound.room"/> </font>
				</td>
			</tr>
		</table>
	</logic:notPresent>