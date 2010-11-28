<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadPhoto.aspx.cs" Inherits="UI_UploadPhoto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>上传头像</title>
    <link href="../Styles/upload.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery1.2.6.pack.js" type="text/javascript"></script>
    <script src="../Scripts/ui.core.packed.js" type="text/javascript"></script>
    <script src="../Scripts/ui.draggable.packed.js" type="text/javascript"></script>
    <script src="../Scripts/CutPic.js" type="text/javascript"></script>


    <script type="text/javascript">
        function Step1() {
            $("#Step2Container").hide();
        }

        function Step2() {
            $("#CurruntPicContainer").hide();
        }
        function Step3() {
            $("#Step2Container").hide();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="left">
         <!--当前照片-->
         <div id="CurruntPicContainer">
            <div class="title"><b>当前照片</b></div>
            <div class="photocontainer">
                <asp:Image ID="imgphoto" runat="server" ImageUrl="~/Resource/man.GIF" />
            </div>
         </div>
         <!--Step 2-->
         <div id="Step2Container">
           <div class="title"><b> 裁切头像照片</b></div>
           <div class="uploadtooltip">您可以拖动照片以裁剪满意的头像</div>                              
                   <div id="Canvas" class="uploaddiv">
                   
                            <div id="ImageDragContainer">                               
                               <asp:Image ID="ImageDrag" runat="server" ImageUrl="~/Resource/blank.jpg" CssClass="imagePhoto" ToolTip=""/>                                                        
                            </div>
                            <div id="IconContainer">                               
                               <asp:Image ID="ImageIcon" runat="server" ImageUrl="~/Resource/blank.jpg" CssClass="imagePhoto" ToolTip=""/>                                                        
                            </div>                          
                    </div>
                    <div class="uploaddiv">
                       <table>
                            <tr>
                                <td id="Min">
                                        <img alt="缩小" src="../Resource/_c.gif" onmouseover="this.src='../Resource/_c.gif';" onmouseout="this.src='../Resource/_h.gif';" id="moresmall" class="smallbig" />
                                </td>
                                <td>
                                    <div id="bar">
                                        <div class="child">
                                        </div>
                                    </div>
                                </td>
                                <td id="Max">
                                        <img alt="放大" src="../Resource/c.gif" onmouseover="this.src='../Resource/c.gif';" onmouseout="this.src='../Resource/h.gif';" id="morebig" class="smallbig" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="uploaddiv">
                        <asp:Button ID="btn_Image" runat="server" Text="保存头像" OnClick="btn_Image_Click" />
                    </div>           
                    <div>
                    图片实际宽度： <asp:TextBox ID="txt_width" runat="server" Text="1" ></asp:TextBox><br />
                    图片实际高度： <asp:TextBox ID="txt_height" runat="server" Text="1" ></asp:TextBox><br />
                    距离顶部： <asp:TextBox ID="txt_top" runat="server"  Text="82"></asp:TextBox><br />
                    距离左边： <asp:TextBox ID="txt_left" runat="server" Text="73"></asp:TextBox><br />
                    截取框的宽： <asp:TextBox ID="txt_DropWidth" runat="server"  Text="120"></asp:TextBox><br />
                    截取框的高： <asp:TextBox ID="txt_DropHeight" runat="server" Text="120"></asp:TextBox><br />
                    放大倍数： <asp:TextBox ID="txt_Zoom" runat="server" ></asp:TextBox>
                   </div>
         </div>
     
     </div>
     <div class="right">
         <!--Step 1-->
         <div id="Step1Container">
            <div class="title"><b>更换照片</b></div>
            <div id="uploadcontainer">
                <div class="uploadtooltip">请选择新的照片文件，文件需小于2.5MB</div>
                <div class="uploaddiv"><asp:FileUpload ID="fuPhoto"  runat="server" ToolTip="选择照片"/></div>
                <div class="uploaddiv"><asp:Button ID="btnUpload" runat="server" Text="上 传" onclick="btnUpload_Click" /></div>
            </div>
         
         </div>
     </div>
    </div>
    </form>
</body>
</html>
