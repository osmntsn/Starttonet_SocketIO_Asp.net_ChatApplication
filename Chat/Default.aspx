﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chat._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <title>Anlık Mesajlaşma Uygulaması</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
<body>
    <div id="namePanel" class="container" style="margin-top: 50px;">

        <div class="col-lg-6 col-md-6 col-sm-6 col-sm-6 col-centered login-box">
            <span style="font-size: x-large; padding: 15px;" class="label label-default col-centered">Kullanıcı İsmi:</span>
            <br />
            <input style="margin-top: 5px;" class="form-control col-centered" type="text" id="nameText" name="MessageText" value="" />
            <button class="btn btn-success btn-lg col-centered login-button" type="button" id="nameSetButton">Giriş</button>
        </div>

    </div>
    <div style="margin-top: 50px; display: none" class="container" id="MessagingPanel">
        <div id="userList" class="col-md-3">
            <span class="col-md-11" style="text-align: center">Kullanıcılar</span>
            <div id="userArea" style="min-height: 47ch; max-height: 47ch; overflow: scroll;" class="col-md-11 well"></div>
        </div>
        <div class="col-md-6">
            <div style="display: none" id="connectedAlert" class="alert alert-success" role="alert">Connected!</div>
            <div style="display: none" id="disconnectedAlert" class="alert alert-danger" role="alert">Disconnected!</div>
            <div class="well col-md-12" style='overflow: scroll; height: 300px; padding: 10px; border: 1px solid #E7E7A8;' id="messageArea"></div>
            <input style="margin-bottom: 15px; max-width: none;" class="form-control col-md-12" type="text" id="messageText" name="MessageText" value="" />

            <div class="row">
                <div class="col-xs-12">
                    
                    <button class="btn btn-lg btn-success col-xs-5" type="button" id="sendButton">Gönder</button>
                    <div class="col-xs-2"></div>
                    <button  class="btn btn-lg btn-info col-xs-5" type="button" id="privateMessage" data-toggle="modal" data-target="#myModal">Özel Mesaj</button>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Özel Mesaj Gönder</h4>
                </div>
                <div class="modal-body">
                    <span>Kime:<br />
                    </span>
                    <input style="margin-bottom: 15px; max-width: none;" class="form-control col-md-12" type="text" id="modalUser" name="MessageText" value="" />
                    <span>Mesaj:<br />
                    </span>
                    <input style="margin-bottom: 15px; max-width: none;" class="form-control col-md-12" type="text" id="modalText" name="MessageText" value="" />
                    <button style="" class="col-sm-3 btn btn-success" type="button" id="modalSend">Gönder</button>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="messageModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Özel Mesajınız Var</h4>
                </div>
                <div class="modal-body">
                    <div id="privateMessageDiv"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script src="https://cdn.socket.io/socket.io-1.1.0.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/starttonetScripts.js"></script>
    <script src="Scripts/ChatApplication.js"></script>
</head>
</body>
</html>

