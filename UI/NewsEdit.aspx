<%@ Page Language="C#" MasterPageFile="../Master/Manage.master" AutoEventWireup="true" validateRequest="false"  CodeFile="NewsEdit.aspx.cs" Inherits="admin_postedit" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/thickbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="../Scripts/common.js"></script>
<script type="text/javascript" src="../Scripts/jquery.js"></script>
<script type="text/javascript" src="../Scripts/jquery.tagto.js"></script>
<script type="text/javascript" src="../Scripts/common.js"></script>
<style type="text/css">
/*tag choose*/
.selected {background:#c00; color:#fff;}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><%="xxj"%></h2>
<%="xxj"%>
    <p>
        <label class="label" for="<%="xxj" %>">标题:</label>
        <asp:TextBox ID="txtTitle"   Width="95%" runat="server" CssClass="text"></asp:TextBox>           
    </p>
    <p>
       
        <asp:TextBox ID="txtContents" runat="server" Height="400" TextMode="MultiLine"   Width="95%"></asp:TextBox>
        <label  class="label gray">提示：Enter产生&lt;p&gt;(换段), Shift+Enter产生&lt;br/&gt;(换行)</label>
    </p>
    
<script type="text/javascript">
function addFileToEditor(fileUrl,fileExtension)
{
    if(fileExtension=='.gif' || fileExtension=='.jpg' || fileExtension=='.jpeg' || fileExtension=='.bmp' || fileExtension=='.png'){
        var imageTag="<img src=\""+fileUrl+"\"/>";
        CKEDITOR.instances.<%="xxj" %>.insertHtml(imageTag); 
    }else{
        var imageTag="<a href=\""+fileUrl+"\">"+fileUrl+"</a>";
        CKEDITOR.instances.<%="xxj" %>.insertHtml(imageTag);
    }
    
}


function createSummary(type) {
    var ckContent =CKEDITOR.instances.<%="xxj" %>;
    var ckSummary =CKEDITOR.instances.<%="xxj" %>;

    var iLength  = ckSummary.getData().length;

    var r=true;
    if(iLength>0){
        if(!confirm('提取将会覆盖已有摘要,要继续吗?')){
		    r=false;
        }
    }
    if(r){
        if(type =='full'){
            ckSummary.setData(ckContent.getData());  
        }
        else{
		    ckSummary.setData(ckContent.getData().replace(/<[^>]+>/g, "").substring(0,500));     //CK会自动处理未闭合的标签，我们不用多管它。要是标签被切了一半显示出来了自己编辑下就好。
		}
    }
    return false;
}
</script>
    <p>
        <label  class="label" for="<%="xxj" %>">摘要: <a href="javascript:void(0);" onclick="createSummary('full');">从正文提取全部</a>/<a href="javascript:void(0);" onclick="createSummary('part');">部分</a></label>
        <asp:TextBox ID="txtSummary" runat="server" Height="120px" TextMode="MultiLine"    Width="95%"></asp:TextBox>
   </p>

<script type="text/javascript">
    CKEDITOR.replace('<%="xxj"%>',
                        {
                            height:320,width:'95%'
                        }
                     );

    CKEDITOR.replace( '<%=txtSummary.ClientID %>',
				{
				    height:130,width:'95%',
					// Defines a simpler toolbar to be used in this sample.
					// Note that we have added out "MyButton" button here.
					toolbar : [ [ 'Source', '-', 'Bold', 'Italic', 'Underline', 'Strike','-','Link', '-' ] ]
				});
</script>
 
   <p> <asp:Button ID="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"  CssClass="button" /></p>

</asp:Content>

