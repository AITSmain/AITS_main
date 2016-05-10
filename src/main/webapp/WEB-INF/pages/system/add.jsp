<%-- 
    Document   : add
    Created on : May 9, 2016, 3:13:16 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:systempage>
    <link rel="stylesheet" href="${Constants.URL}css/ckeditor.css" type="text/css" />  
    <div class="margintop20">
        <h4>Add project</h4>
        <ol class="breadcrumb">
            <li class="active">
                <a href="#" data-toggle="modal" data-target="#shureModal"> <i class="fa fa-fw fa-list-alt"></i> Back to main menu</a>
            </li>
        </ol>
	<form action="<c:url value="/system/do/insertdata"/>" name="addArticleForm" id="addForm" method="POST" type="multipart/form-data">
            <input type="hidden" name="dir" id="dir-name" value="${folder}" />
            <input type="hidden" name="gallery-items" id="gallery-items-input" />
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Title <span class="red-star">*</span></label>
                    <br/>
                    <div class="btn-group lang-switch-title" role="group" aria-label="...">
                        <button type="button" id="titleUA" class="btn btn-default active">Ukrainian</button>
                        <button type="button" id="titleEN" class="btn btn-default">English</button>
                    </div>
                </div>
                <div class="col-lg-6 margintop10 field titles">
                    <input type="text" name="titleUA" class="form-control input-title-lang" lang="titleUA" id="tltUA"  maxlength="55">
                    <input type="text" name="titleEN" class="form-control input-title-lang" lang="titleEN" id="tltEN"  maxlength="55">
                    <div class="validation"></div>
                </div>
            </div>
            <hr>
            <div class="row add-row img-upl">
                <div class="col-lg-12 field">
                    <label for="img">Images</label>
                            <div class="img-content">
                                <div class="image-upload">
                                    
                                    <span class="btn btn-primary btn-file">
                                        Add image<input id="file-input" type="file">
                                    </span>
                                    
                                </div>   
                            </div>
                            <input type="hidden" name="avatar-path" id="avatar-path" />                 
                </div>
            </div>
            <hr>
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Description <span class="red-star">*</span></label><br/>
                    <div class="btn-group lang-switch-text" role="group" aria-label="...">
                        <button type="button" id="textUA" class="btn btn-default active">Ukrainian</button>
                        <button type="button" id="textEN" class="btn btn-default">English</button>
                    </div>
                </div>
                <div class="col-lg-12 margintop10 field textareas">
                    <div></div>
                        <div lang="textUA" class="textarea-msg"><textarea name="textUA" id="editorUA" rows="5" cols="30" class="input-block-level form-control"></textarea></div>
                        <div lang="textEN" class="textarea-msg"><textarea name="textEN" id="editorEN" rows="5" cols="30" class="input-block-level form-control"></textarea></div>
                        <div class="validation"></div>
                </div>
            </div>
            <hr>
        </form>
        <p>
            <button class="btn btn-success margintop30 marginbottom30 sudmitData" type="submit">Add</button>
            <button type="button" class="btn btn-danger btn-mini" data-toggle="modal" data-target="#shureModal">Cancel</button>
        </p>
    </div>
    <div id="shureModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Back to category window</h4>
                </div>
                <div class="modal-body">
                    <p>Save changes?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success btn-mini sudmitData" type="submit" data-dismiss="modal">Save changes</button>
                    <button class="btn btn-warning btn-mini modal-btn-warning" type="submit" data-dismiss="modal">Cancel</button>
                    <a href="<c:url value="/system/index/${category}" />"><button type="button" class="btn btn-danger btn-mini">Back to projects</button></a>
                </div>
          </div>
        </div>
    </div>
</t:systempage>
    <script src="${Constants.URL}js/ckeditor/ckeditor.js"></script>
<script> 
    $(document).ready(function () {
        var currentLang = $(".lang-switch-text button.active").attr("id");
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
        var currentLangT = $(".lang-switch-title button.active").attr("id");
        $(".input-title-lang[lang='"+currentLangT+"']").show();
        initCKE();
    });
    
    $(".lang-switch-text button").click(function(){
        $(".lang-switch-text button").removeClass("active");
        $(this).addClass("active");
        var currentLang = $(this).attr("id");
        $(".textareas .textarea-msg").hide();
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
    });
    $(".lang-switch-title button").click(function(){
        $(".lang-switch-title button").removeClass("active");
        $(this).addClass("active");
        var currentLangT = $(this).attr("id");
        $(".input-title-lang").hide();
        $(".input-title-lang[lang='"+currentLangT+"']").show();
    });
    
    
    $(".sudmitData").click(function(e){
        $("div.validation").html('');
        $("div.validation").attr("id","");
        var isValidate = true;
        if($("#tltEN").val() === "" && $("#tltRU").val() === "") {
            isValidate = false;
            $(".titles div.validation").attr("id","active-validation");
            $(".titles div.validation").html("<span style='color:red'>Title can't be empty!</span>");
            e.preventDefault(); 
            goToByScroll("active-validation");
        }
        if(isValidate) {
            
            $(".gallery-item").each(function() {
                $("#gallery-items-input").val($("#gallery-items-input").val() + 
                        ""+$(this).find(".main-img").attr("realpath") +",");
            });
            $("#addForm").submit();
        }
    });
    function goToByScroll(id){
        id = id.replace("link", "");
        $('html,body').animate({
            scrollTop: $("#"+id).offset().top-150},
            'slow');
    }
    
    $('.img-upl').on('change', '#file-input', function() {
            
        var result = [];
        var len = $(this).get(0).files.length;
        var count = 1;
        for (var i = 0; i < $(this).get(0).files.length; ++i) {
            var data = new FormData();
        data.append('upload', $(this).get(0).files[i]);
        data.append("path", "files/gallery");
        jQuery.ajax({
                    url: '/AITS/system/uploadFile;jsessionid=<c:out value="${pageContext.session.id}"/>',
                    data: data,
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: 'POST',
                    success: function(data){
                        var html_app = "<div class='gallery-item'><img class='remove-icon' src='${Constants.URL}images/remove.png' />"+data +
                                "</div>";
                        $(".img-content").append(html_app);
                        initRemove();
                    }
                });
        }   
        });
    function initRemove(){
        $(".remove-icon").click(function(){
            deleteFile($(this).parent("div").find(".main-img").attr("realpath"));
            $(this).parent("div").remove();
        });
    }
    function deleteFile(temp){
        jQuery.ajax({
            url: '/AITS/system/do/removefile;jsessionid=<c:out value="${pageContext.session.id}"/>',
            cache: false,
            contentType: false,
            processData: false,
            type: 'GET',
            data: 'path='+temp,
            success: function(data){
            }
        });
    }
     
    function initCKE() {
        CKEDITOR.replace('editorEN', {
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.replace('editorUA', {
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.on('instanceReady', function() { 
        
    $(".cke_button.cke_button__image.cke_button_off").click(function(){
        $(".cke_dialog_body").hide();
        setTimeout(function() {   //calls click event after a certain time
   
    $(".cke_editor_editorEN_dialog .cke_dialog_body").addClass("image-dialog");
    $(".cke_editor_editorUA_dialog .cke_dialog_body").addClass("image-dialog");
    
    if($(".cke_editor_editorUA_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
    if($(".cke_editor_editorEN_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
}, 500);
    } );    
    });
        var obj = $("#cke_120_fileInput").contents().find(".returnImage");
         obj.click("click", function (e) {
            $("#cke_71_textInput").val("s2as1");
        });
    }
</script>
