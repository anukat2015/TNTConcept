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

<%@include file="/inc/tlibs.jsp" %>

<html>
  <head>
    <%@include file="/inc/uiCore.jsp" %>
  </head>	
  <body>
    
    <!-- editBook.jsp: generated by stajanov code generator -->
    <f:loadBundle basename="com.autentia.tnt.resources.messages" var="msg" />
    <i:location place="detailBook" msg="${msg}"/> 
    
    <f:view>
      <%@include file="/inc/header.jsp" %>
      <h:form id="book" enctype="multipart/form-data">
        
        <%-- Header --%>
        <i:titleBar name="${bookBean.name}" msg="${msg}">
          <t:commandLink action="#{bookBean.edit}" immediate="true" rendered="#{bookBean.editAvailable}">
            <f:param name="rowid" value="#{bookBean.id}" />
            <h:graphicImage title="#{msg.entityActions_edit}"  value="/img/edit.gif" styleClass="cmdImg" />
          </t:commandLink>
          <h:commandLink action="#{bookBean.delete}" rendered="#{bookBean.deleteAvailable}" onclick="if( !confirm('#{msg['question.confirmDelete']}') ) return false;">
            <h:graphicImage title="#{msg.entityActions_delete}"  value="/img/delete.gif" styleClass="titleImg" />
          </h:commandLink>
          <h:commandLink action="#{bookBean.list}" immediate="true">
            <h:graphicImage title="#{msg.entityActions_back}"  value="/img/back.gif" styleClass="titleImg" />
          </h:commandLink>
        </i:titleBar>


        <%-- Detail form --%>
        <table class="detailTable" cellpadding="0" cellspacing="0">

            
    
  
  
      <%-- Ignored field: id --%>
  
                            
    
  
  
      <%-- Field: name --%>
    <tr>
	<td class="detailLabelRW">${msg['book.name']}:</td>
	<td class="detailFieldCell">
         	       <h:outputText value="#{bookBean.name}" />
 	      </td>
    </tr>
                            
    
  
  
      <%-- Field: author --%>
    <tr>
	<td class="detailLabelRW">${msg['book.author']}:</td>
	<td class="detailFieldCell">
         	       <h:outputText value="#{bookBean.author}" />
 	      </td>
    </tr>
                            
    
  
  
      <%-- Field: ISBN --%>
    <tr>
	<td class="detailLabelRW">${msg['book.ISBN']}:</td>
	<td class="detailFieldCell">
         	       <h:outputText value="#{bookBean.ISBN}" />
 	      </td>
    </tr>
                            
    
  
  
      <%-- Field: URL --%>
    <tr>
	<td class="detailLabelRW">${msg['book.URL']}:</td>
	<td class="detailFieldCell">
         	       <h:outputText value="#{bookBean.URL}" />
 	      </td>
    </tr>
                            
    
  
  
      <%-- Field: price --%>
    <tr>
	<td class="detailLabelRW">${msg['book.price']}:</td>
	<td class="detailFieldCell">
         	       <h:outputText value="#{bookBean.price}" />
 	      </td>
    </tr>
                            
    
  
  
      <%-- Field: purchaseDate --%>
    <tr>
	<td class="detailLabelRW">${msg['book.purchaseDate']}:</td>
	<td class="detailFieldCell">
         	    	<h:outputText value="#{bookBean.purchaseDate}" converter="autentia.dateConverter" />
 	          </td>
    </tr>
                            
    
  
  
      <%-- Ignored field: ownerId --%>
  
                            
    
  
  
      <%-- Ignored field: departmentId --%>
  
                            
    
  
  
      <%-- Ignored field: insertDate --%>
  
                            
    
  
  
      <%-- Ignored field: updateDate --%>
  
                                        
    
  
  
      <%-- Field: lentTo --%>
    <tr>
	<td class="detailLabelRW">${msg['book.lentTo']}:</td>
	<td class="detailFieldCell">
         	    	<h:outputText value="#{bookBean.lentTo.name}"/>
 	          </td>
    </tr>
                                      
        </table>

      </h:form>
    </f:view>
    
  </body>
</html>  		

<%-- book - generated by stajanov (do not edit/delete) --%>
