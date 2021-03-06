<%--

    TNTConcept Easy Enterprise Management by Autentia Real Bussiness Solution S.L.
    Copyright (C) 2007 Autentia Real Bussiness Solution S.L.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

--%>

<%@page language="java" contentType="text/html; charset=UTF-8"%>

<%@include file="/inc/tlibs.jsp"%>

<html>
<head>
<%@include file="/inc/uiCore.jsp"%>
</head>
<body>

<!-- editInteractionType.jsp: generated by stajanov code generator -->
<f:loadBundle basename="com.autentia.tnt.resources.messages" var="msg" />
<i:location place="tags" msg="${msg}" />

<f:view>
	<%@include file="/inc/header.jsp"%>

	<h:form id="tag" enctype="multipart/form-data">

		<%-- Header --%>
		<i:titleBar name="${tagBean.name}" msg="${msg}">
			<h:commandLink action="#{tagBean.save}"
				onclick="if(!askSave('#{tagBean.id}','#{msg['question.confirmSave']}')) return false;">
				<h:graphicImage title="#{msg.entityActions_save}"
					value="/img/save.gif" styleClass="titleImg" />
			</h:commandLink>
			<h:commandLink action="#{tagBean.delete}"
				rendered="#{tagBean.deleteAvailable}"
				onclick="if( !confirm('#{msg['question.confirmDelete']}') ) return false;">
				<h:graphicImage title="#{msg.entityActions_delete}"
					value="/img/delete.gif" styleClass="titleImg" />
			</h:commandLink>
			<h:commandLink action="#{tagBean.list}" immediate="true">
				<h:graphicImage title="#{msg.entityActions_back}"
					value="/img/back.gif" styleClass="titleImg" />
			</h:commandLink>
		</i:titleBar>

		<h:messages styleClass="error" id="errorMessage" showSummary="true" showDetail="false" />

		<%-- Edition form --%>
		<table class="editTable" cellpadding="0" cellspacing="0">

			<%-- Tag - generated by stajanov (do not edit/delete) --%>
			

			<%-- Field: name --%>
			<tr>
				<td class="editLabelRW">*${msg['tag.name']}:</td>

				<td class="editFieldCell"><h:panelGroup>
					<h:message styleClass="error" showSummary="true" showDetail="false"
						for="name" />
					<h:inputText id="name" value="#{tagBean.name}" size="70" maxlength="150" required="true" styleClass="requiredFieldClass"/>
				</h:panelGroup></td>
			</tr>


			<%-- Field: description --%>
			<tr>
				<td class="editLabelRW">${msg['tag.description']}:</td>

				<td class="editFieldCell"><h:panelGroup>
					<h:message styleClass="error" showSummary="true" showDetail="false"
						for="description" />
					<h:inputText id="description" value="#{tagBean.description}" size="70" maxlength="150"/>
				</h:panelGroup></td>
			</tr>


			<%-- Field: contactTags --%>
			<tr>
				<td class="editLabelRW">${msg['tag.contactTags']}:</td>
				<td class="editFieldCell" colspan="2">
					<h:panelGroup>
						<h:selectOneMenu id="contactsList" value="#{tagBean.selectedContact}">
							<f:selectItems value="#{tagBean.allContacts}" />
							<f:converter converterId="autentia.EntityConverter"/>
							<f:attribute name="com.autentia.tnt.converter.EntityConverter.valueClass" 
		                        	  value="com.autentia.tnt.businessobject.Contact"/> 
						</h:selectOneMenu>
						<h:commandLink action="#{tagBean.addContact}">
							<h:graphicImage value="/img/add.png" styleClass="titleImg" />
						</h:commandLink>
						<h:message styleClass="error" showSummary="true" showDetail="false"
							for="contacts" />
						
						<t:dataTable id="contacts" var="contactData"
							value="#{tagBean.contactTags}"
							preserveDataModel="false" cellpadding="0" cellspacing="0"
							styleClass="listTable" headerClass="listHeaderCell"
							footerClass="listFooter" rows="#{settingBean.mySettings.listSize}"
							rowClasses="listRowO,listRowE"
							columnClasses="listCmdCell"
							rowOnMouseOver="this.savedClassName=this.className;this.className='listRowSel';"
							rowOnMouseOut="this.className=this.savedClassName;">						
							<h:column>
								<f:facet name="header">
									<f:verbatim>-</f:verbatim>
								</f:facet>
								<h:commandLink action="#{tagBean.deleteContact}">
									<h:graphicImage value="/img/delete.gif" styleClass="titleImg" />
								</h:commandLink>
							</h:column>						
							<h:column>
								<f:facet name="header">
									<f:verbatim>${msg['contact.name']}</f:verbatim>
								</f:facet>
								<h:outputText value="#{contactData.name}"  />
							</h:column>							
						</t:dataTable>
					</h:panelGroup>
				</td>
			</tr>


			<%-- Field: positionTags --%>
			<tr>
				<td class="editLabelRW">${msg['tag.positionTags']}:</td>
				<td class="editFieldCell" colspan="2">
					<h:panelGroup>
						<h:selectOneMenu id="positionsList" value="#{tagBean.selectedPosition}">
							<f:selectItems value="#{tagBean.allPositions}" />
							<f:converter converterId="autentia.EntityConverter"/>
							<f:attribute name="com.autentia.tnt.converter.EntityConverter.valueClass" 
		                        	  value="com.autentia.tnt.businessobject.Position"/> 
						</h:selectOneMenu>
						<h:commandLink action="#{tagBean.addPosition}">
							<h:graphicImage value="/img/add.png" styleClass="titleImg" />
						</h:commandLink>
						<h:message styleClass="error" showSummary="true" showDetail="false"
							for="positions" />
						
						<t:dataTable id="positions" var="positionData"
							value="#{tagBean.positionTags}"
							preserveDataModel="false" cellpadding="0" cellspacing="0"
							styleClass="listTable" headerClass="listHeaderCell"
							footerClass="listFooter" rows="#{settingBean.mySettings.listSize}"
							rowClasses="listRowO,listRowE"
							columnClasses="listCmdCell"
							rowOnMouseOver="this.savedClassName=this.className;this.className='listRowSel';"
							rowOnMouseOut="this.className=this.savedClassName;">						
							<h:column>
								<f:facet name="header">
									<f:verbatim>-</f:verbatim>
								</f:facet>
								<h:commandLink action="#{tagBean.deletePosition}">
									<h:graphicImage value="/img/delete.gif" styleClass="titleImg" />
								</h:commandLink>
							</h:column>						
							<h:column>
								<f:facet name="header">
									<f:verbatim>${msg['position.name']}</f:verbatim>
								</f:facet>
								<h:outputText value="#{positionData.name}"  />
							</h:column>							
						</t:dataTable>
					</h:panelGroup>
				</td>
			</tr>

			<%-- Field: departmentTags --%>
			<tr>
				<td class="editLabelRW">${msg['tag.departmentTags']}:</td>
				<td class="editFieldCell" colspan="2">
					<h:panelGroup>
						<h:selectOneMenu id="departmentsList" value="#{tagBean.selectedDepartment}">
							<f:selectItems value="#{tagBean.allDepartments}" />
							<f:converter converterId="autentia.EntityConverter"/>
							<f:attribute name="com.autentia.tnt.converter.EntityConverter.valueClass" 
		                        	  value="com.autentia.tnt.businessobject.Department"/> 
						</h:selectOneMenu>
						<h:commandLink action="#{tagBean.addDepartment}">
							<h:graphicImage value="/img/add.png" styleClass="titleImg" />
						</h:commandLink>
						<h:message styleClass="error" showSummary="true" showDetail="false"
							for="departments" />
						
						<t:dataTable id="departments" var="departmentData"
							value="#{tagBean.departmentTags}"
							preserveDataModel="false" cellpadding="0" cellspacing="0"
							styleClass="listTable" headerClass="listHeaderCell"
							footerClass="listFooter" rows="#{settingBean.mySettings.listSize}"
							rowClasses="listRowO,listRowE"
							columnClasses="listCmdCell"
							rowOnMouseOver="this.savedClassName=this.className;this.className='listRowSel';"
							rowOnMouseOut="this.className=this.savedClassName;">						
							<h:column>
								<f:facet name="header">
									<f:verbatim>-</f:verbatim>
								</f:facet>
								<h:commandLink action="#{tagBean.deleteDepartment}">
									<h:graphicImage value="/img/delete.gif" styleClass="titleImg" />
								</h:commandLink>
							</h:column>						
							<h:column>
								<f:facet name="header">
									<f:verbatim>${msg['department.name']}</f:verbatim>
								</f:facet>
								<h:outputText value="#{departmentData.name}"  />
							</h:column>							
						</t:dataTable>
					</h:panelGroup>
				</td>
			</tr>


			<%-- Field: organizationTags --%>
			<tr>
				<td class="editLabelRW">${msg['tag.organizationTags']}:</td>
				<td class="editFieldCell" colspan="2">
					<h:panelGroup>
						<h:selectOneMenu id="organizationsList" value="#{tagBean.selectedOrganization}">
							<f:selectItems value="#{tagBean.allOrganizations}" />
							<f:converter converterId="autentia.EntityConverter"/>
							<f:attribute name="com.autentia.tnt.converter.EntityConverter.valueClass" 
		                        	  value="com.autentia.tnt.businessobject.Organization"/> 
						</h:selectOneMenu>
						<h:commandLink action="#{tagBean.addOrganization}">
							<h:graphicImage value="/img/add.png" styleClass="titleImg" />
						</h:commandLink>
						<h:message styleClass="error" showSummary="true" showDetail="false"
							for="organizations" />
						
						<t:dataTable id="organizations" var="organizationData"
							value="#{tagBean.organizationTags}"
							preserveDataModel="false" cellpadding="0" cellspacing="0"
							styleClass="listTable" headerClass="listHeaderCell"
							footerClass="listFooter" rows="#{settingBean.mySettings.listSize}"
							rowClasses="listRowO,listRowE"
							columnClasses="listCmdCell"
							rowOnMouseOver="this.savedClassName=this.className;this.className='listRowSel';"
							rowOnMouseOut="this.className=this.savedClassName;">						
							<h:column>
								<f:facet name="header">
									<f:verbatim>-</f:verbatim>
								</f:facet>
								<h:commandLink action="#{tagBean.deleteOrganization}">
									<h:graphicImage value="/img/delete.gif" styleClass="titleImg" />
								</h:commandLink>
							</h:column>						
							<h:column>
								<f:facet name="header">
									<f:verbatim>${msg['organization.name']}</f:verbatim>
								</f:facet>
								<h:outputText value="#{organizationData.name}"  />
							</h:column>							
						</t:dataTable>
					</h:panelGroup>
				</td>
			</tr>

			<%-- Tag - generated by stajanov (do not edit/delete) --%>

		</table>

	</h:form>
</f:view>

</body>
</html>


