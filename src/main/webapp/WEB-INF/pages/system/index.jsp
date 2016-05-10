<%-- 
    Document   : index
    Created on : May 9, 2016, 2:35:30 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:systempage>
    
    <div class="page-header main-page-title second-order-title">
      <div class="container">
      </div>
    </div>
     <div class="row article-list">
                    <div class="col-lg-12">
                        <h4>Projects</h4>
                        <c:if test="${category != '0'}">
                            <div class="add-button-panel"><button class="btn btn-success btn-mini" id="sudmitData" type="submit"><a href="<c:url value="/system/add/${category}" />">+ Add project</a></button></div>
                        
                        </c:if>
                        <div class="row">
                	<div class="col-lg-12">
                    	<div class="table-responsive">
                        	<table class="article-table table table-bordered table-hover table-striped">
                            	<thead>
                                	<tr>
                                    	<th class="text-center" style="width:3%">#</th>
                                    	<th style="width:40%">Title</th>
                                    	<th style="width:3%;"></th>
                                        <c:if test="${category != '0'}">
                                            <th style="width:3%;"></th>
                                        </c:if>
                                	</tr>
                            	</thead>
                            	<tbody>
                                	<c:if test="${empty projects}">
                                    	<tr><td colspan="6">No projects...</td></tr>
                                	</c:if>
                                	<c:set var="count" value="1" scope="page" />
                                	<c:forEach items="${projects}" var="item">
                                            <tr class="table-item">
                                                <td class="text-center counter">${count}</td>
                                                <td><a href="<c:url value="/system/edit/${item.project_id}"/>">${item.project_name_en}</a></td>
                                                <td class="text-center"><a href="<c:url value="/system/edit/${item.project_id}"/>"><img class="article-buttons" src="${Constants.URL}images/edit.png" /></a></td>
                                                <td class="text-center"><a href="<c:url value="/system/delete/${item.project_id}"/>"><img class="article-buttons" src="${Constants.URL}images/delete.png" /></a></td>
                                            </tr>
                                    	<c:set var="count" value="${count + 1}" scope="page"/>
                                	</c:forEach>
                            	</tbody>
                        	</table>
                    	</div>
                	</div>
            	</div>
                    </div>
                </div>
</t:systempage>
