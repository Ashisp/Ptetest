<%-- 
    Document   : multiplechoicesingleans
    Created on : Apr 20, 2016, 2:48:05 PM
    Author     : ashis
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>


        <script type="text/javascript" src="TextHighlighter.min.js"></script>  







        <meta name="keywords" content="" />
        <meta name="description" content="" />

        <!--script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script-->
        <!--script type="text/javascript" src="jquery-1.3.2.js"></script-->
        <!--[IF IE]>
        <script type="text/javascript" src="../src/js/ierange.js"></script>
        <![ENDIF]-->
        <script type="text/javascript" src="../src/js/masha.js"></script>

        <link rel="stylesheet" type="text/css" href="../src/css/masha.css">
        <style>

            body {
                padding: 30px;
                border-radius: 0 0 10px 10px;
                margin: 0;
                width: 1000px; margin: auto; box-shadow: 0 0 5px #ccc
            }
            .user_selection_true{
                background: #afa;
            }
            #toggle-masha{
                position:fixed;
                bottom: 50px;
                right: 50px;
            }
        </style>

        <script>
            function init_masha() {
                MaSha.instance = new MaSha({'select_message': 'upmsg-selectable',
                    'ignored': '.ignored',
                    'validate': true});
            }
            if (window.addEventListener) {
                window.addEventListener('load', init_masha, false);
            } else {
                window.attachEvent('onload', init_masha);
            }
            function toggleMaSha() {
                if (MaSha.instance) {
                    MaSha.instance.destroy();
                    delete MaSha.instance;
                    document.getElementById('toggle-masha').innerHTML = 'Enable MaSha';
                } else {
                    init_masha();
                    document.getElementById('toggle-masha').innerHTML = 'Destroy MaSha';
                }
            }
        </script>



















        <script type="text/javascript">


            function getHTMLOfSelection() {

                var hltr = new TextHighlighter(document.body);


            }






        </script>









        <style>
            #div1, #div2
            {float:left; width:100px; height:35px; margin:10px;padding:10px;border:1px solid #aaaaaa;}
        </style>
        <script>
            function allowDrop(ev) {
                ev.preventDefault();
            }

            function drag(ev) {
                ev.dataTransfer.setData("text", ev.target.id);
            }

            function drop(ev) {
                ev.preventDefault();
                var data = ev.dataTransfer.getData("text");
                ev.target.appendChild(document.getElementById(data));
            }
        </script>




        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <div class="generic-container">
            <div class="panel panel-default">

                ///drag and drop
                <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
                    <img src="img_w3slogo.gif" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
                </div>

                <div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>









                <button onclick="toggleMaSha()" id="toggle-masha">Destroy MaSha</button>
                <div id="selectable-content">
                    <p>Lorem ipsum do<b>l</b>or sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <div class="ignored" style="float: left; width: 220px; background: #fee; border: 1px solid #f99; padding: 3px; margin: 3px;">
                        This text is completely ignored by MaSha. You can't select it because, may be, it's dynamic, or not important, or just site owner don't want you to select it!
                    </div>
                    <p><span style="color: #325">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span><span> Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p> <!--XXX add to tests!-->
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>Lorem ipsum dolor sit amet, <br/>consectetur adipisicing elit,<br/> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br/> Ut enim ad minim veniam, quis nostrud exercitation ullamco<br/> laboris nisi ut aliquip ex ea commodo consequat.<br/> Duis aute irure dolor in reprehenderit in voluptate velit<br/> esse cillum dolore eu fugiat nulla pariatur.<br/> Excepteur sint occaecat cupidatat non proident,<br/> sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    <p>

                        <span>

                            <!--For testing whitespace nodes in IE-->

                            <span>,, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </span>
                        </span>
                    </p>
                </div>
                <div id="upmsg-selectable">
                    <div class="upmsg-selectable-inner">
                        <img src="../src/img/textselect/upmsg_arrow.png" alt="">
                        <p>?? ?????? ???????? ?????????? ??? ????????? ??????, ??????? ????? ???????? ?? ?????????? ?????? ? ???????? ?????? ????????.</p>
                        <a href="#" class="upmsg_closebtn"></a>
                    </div>
                </div>







                //selected text

                <div>
                    <p>Some text to <span class="test">test</span> the selection on.
                        Kibology for <b>all</b><br />. All <i>for</i> Kibology.
                    </p>
                </div>
                <form action="">
                    <p>
                        <input type="button" value="show HTML of selection"
                               onclick="this.form.output.value = getHTMLOfSelection();">
                    </p>
                    <p>
                        <textarea name="output" rows="5" cols="80"></textarea>
                    </p>
                </form>



                <!-- Default panel contents -->
                <div class="panel-heading"><span class="lead">List of Users </span></div>
                <div class="tablecontainer">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>SSO ID</th>
                                <th width="100"></th>
                                <th width="100"></th>
                            </tr>
                        </thead>
                        <tbody>
                            //options loop here
                            <c:forEach items="${users}" var="user">
                                <tr>
                            <select class="c-select">


                                //drag and drop                



                              
                                <option value="1">${questions.instructions}</option>
                                <option value="2">${questions.audioimage}</option>
                                <option value="3">${questions.passage}</option>
                            </select>


                            //for multiple choice questions
                            <h2>Form control: inline radio buttons</h2>
                            <p>The form below contains three inline radio buttons:</p>
                            <form role="form">
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">${user.firstName}
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">${user.email}
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">${user.lastName}
                                </label>
                            </form>

                            <td>${user.firstName}</td>

                            <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="well">
                <a href="<c:url value='/newuser' />">Add New User</a>
            </div>
        </div>
    </body>
</html>




