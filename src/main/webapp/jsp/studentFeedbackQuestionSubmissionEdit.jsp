<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="teammates.common.util.Const"%>
<%@ page import="teammates.ui.controller.FeedbackQuestionSubmissionEditPageData"%>
<%
    FeedbackQuestionSubmissionEditPageData data = (FeedbackQuestionSubmissionEditPageData)request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TEAMMATES - Submit Feedback Question</title>
    <link rel="stylesheet" href="/stylesheets/common.css" type="text/css" media="screen">
    <link rel="stylesheet" href="/stylesheets/common-print.css" type="text/css" media="print">
    <link rel="stylesheet" href="/stylesheets/studentFeedback.css" type="text/css" media="screen">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <script type="text/javascript" src="/js/googleAnalytics.js"></script>
    <script type="text/javascript" src="/js/jquery-minified.js"></script>
    <script type="text/javascript" src="/js/tooltip.js"></script>
    <script type="text/javascript" src="/js/AnchorPosition.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/feedbackSubmissionsEdit.js"></script>
    <jsp:include page="../enableJS.jsp"></jsp:include>
</head>

<body>
    <div id="dhtmltooltip"></div>

    <div id="frameBody" style="top:0px;bottom:0px;" class="container theme-showcase" role="main">
        <div id="frameBodyWrapper">
            <div id="topOfPage"></div>
            <div id="headerOperation">
                <h1>Submit Feedback Question</h1>
            </div>
            
            <form method="post" action="<%=Const.ActionURIs.STUDENT_FEEDBACK_QUESTION_SUBMISSION_EDIT_SAVE%>" name="form_submit_response">
                
                <jsp:include page="<%=Const.ViewURIs.FEEDBACK_QUESTION_SUBMISSION_EDIT%>" />
                
                <div class="bold centeralign">
                    <button type="submit" class="btn btn-primary" 
                        id="response_submit_button" 
                        onmouseover="ddrivetip('<%=Const.Tooltips.FEEDBACK_SESSION_EDIT_SAVE%>')" 
                        onmouseout="hideddrivetip()" 
                        <%=data.bundle.feedbackSession.isOpened() ? "" : "style=\"background: #66727A;\" disabled=\"disabled\""%>/>
                        Save Feedback
                    </button>
                </div>
                <br><br>    
            </form>
        </div>
    </div>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
