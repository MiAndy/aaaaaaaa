<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html><script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
<script type="text/javascript">
    var t = n = 0,
    count;
    $(document).ready(function() {
        count = $("#banner_list a").length;
        $("#banner_list a:not(:first-child)").hide();
        $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
        $("#banner_info").click(function() {
            window.open($("#banner_list a:first-child").attr('href'), "_blank")
        });
        $("#banner li").click(function() {
            var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
            n = i;
            if (i >= count) return;
            $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
            $("#banner_info").unbind().click(function() {
                window.open($("#banner_list a").eq(i).attr('href'), "_blank")
            })
            $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            document.getElementById("banner").style.background = "";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#banner").hover(function() {
            clearInterval(t)
        },
        function() {
            t = setInterval("showAuto()", 4000);
        });
    })
 
    function showAuto() {
        n = n >= (count - 1) ? 0 : ++n;
        $("#banner li").eq(n).trigger('click');
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server"><link href="StyleSheet.css" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <style type="text/css">
        .auto-style10 {
            width: 80000px;
            height: 70px;
        }
        .auto-style11 {
            width: 25000px;
            font-family: "Microsoft YaHei","Old English Text MT";
            color: black;
            height: 70px;
        }
        .auto-style12 {
            width: 100%;
            height: 1106px;
        }  
            .auto-style13 {
                width: 22px;
            }
            .auto-style15 {
                width: 67px;
            }
            .auto-style16 {
                width: 109px;
            }
            </style>      
        </head>
    <body>   
            <form runat="server">                                                                                                                                                                               
       <div class="tableAllStyle">
    
        <table class="tableTopBorder">
            <tr>

                <td class="tableTopLeftAndRight" style="margin-bottom: inherit; border-bottom-style: none; "></td>
                <td class="tableTopIntroduction" style="margin-bottom: inherit; border-bottom-style: none; ">天堂网 — 创建于2006年，大型网上纪念馆平台，绿色网上祭奠、网上扫墓</td>
                <td class="tableTopAmong" style="margin-bottom: inherit; border-bottom-style: none; "></td>
                <td class="tableTopUser" style="margin-bottom: inherit; border-bottom-style: none; ">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="#333333">用户登录</asp:LinkButton>
                    <asp:Label ID="Label1" runat="server" Text="|"></asp:Label>
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="#333333">免费注册</asp:LinkButton>
                    <asp:Label ID="Label2" runat="server" Text="|"></asp:Label>
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="#333333">帮助中心</asp:LinkButton>
                </td>
                <td class="tableTopLeftAndRight" style="margin-bottom: inherit; border-bottom-style: none; "></td>
            </tr>
        </table>
    
    </div >
        <table class:"tableTitleAllStyle">
            <tr>
                <td class="tableTitleLeftAndRight"></td>
                <td class="tableTitleImage">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pictures/天堂网.png" />
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="查找纪念馆："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="tableTitleFindImage" Height="18px" ImageUrl="~/pictures/find.jpg" Width="20px" />
                </td>
                <td class="tableTitleLeftAndRight"></td>
            </tr>
        </table>
        <table class="tableAllFunction" style="background-color: #FFCC99">
            <tr>
                <td class="tableLeftFunction" >&nbsp;</td>
                <td class="tableLeftFunction" >
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" ForeColor="#993300">首页</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFiveFunction" >
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" ForeColor="Maroon">网上纪念馆</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFourFunction" >
                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" ForeColor="Maroon">快速建馆</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFourFunction" >
                    <asp:LinkButton ID="LinkButton7" runat="server" Font-Underline="False" ForeColor="Maroon">民俗文化</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFourFunction" >
                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Underline="False" ForeColor="Maroon">生命文化</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFourFunction" >
                    <asp:LinkButton ID="LinkButton9" runat="server" Font-Underline="False" ForeColor="Maroon">天堂咨询</asp:LinkButton>
                </td>
                <td class="tableAmongFunction" >&nbsp;</td>
                <td class="tableFourFunction" >
                    <asp:LinkButton ID="LinkButton10" runat="server" Font-Underline="False" ForeColor="Maroon">帮助中心</asp:LinkButton>
                </td>
                <td class="tableAmongFunction">&nbsp;</td>
                <td class="tableFiveFunction" >
                    <asp:LinkButton ID="LinkButton11" runat="server" Font-Underline="False" ForeColor="Maroon">关于天堂网</asp:LinkButton>
                </td>
                <td >&nbsp;</td>
            </tr>
        </table>

                <div id="banner">  
    <div id="banner_bg">       
    </div>
<!--标题背景-->
    <div id="banner_info"> 
    </div>
<!--标题-->
    <ul>   
        <li class="on">
            1
        </li>
        <li>
            2
        </li>
        <li>
            3
        </li>
        <li>
            4
        </li>
    </ul>
    <div id="banner_list">
        <a href="#" target="_blank"><img src="pictures/pictures5555.jpg" title="" alt=""/></a> <a href="#" target="_blank"><img src="pictures/pictures2222.jpg" title="" alt=""/></a> <a href="#" target="_blank"><img src="pictures/pictures3333.jpg" title="" alt=""/></a> <a href="#" target="_blank"><img src="pictures/picture4444.jpg" title="" alt=""/></a>
         <div style="float:right">
        <table class="auto-style12">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
             </div>
    </div>
</div>
    <table class="auto-style13">
        <tr>
            <td class="tableAllFunction">&nbsp;</td>
            <td class="tableAllFunction">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
            <div style="width:1350px;">
                <table class="tableAllAmongIntroduction">
                    <tr>
                        <td class="tableAmongLeftIntro"></td>
                        <td class="auto-style19" style="border-bottom-style: groove; border-bottom-width: thin">
                            <table>
                                <tr>
                                    <td class="tableAmongFourFunction">
                                        <asp:LinkButton ID="LinkButton12" runat="server" Font-Underline="False" ForeColor="#CC0000">最新祭奠</asp:LinkButton>
                                    </td>
                                    <td class="tableFunAmong"></td>
                                    <td class="tableIntroduction">
                                        <asp:LinkButton ID="LinkButton13" runat="server" Font-Underline="False" ForeColor="#333333">祭奠祖先</asp:LinkButton>
                                        <asp:Label ID="Label4" runat="server" ForeColor="Gray" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton14" runat="server" Font-Underline="False" ForeColor="#333333">纪念父母</asp:LinkButton>
                                        <asp:Label ID="Label5" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton15" runat="server" Font-Underline="False" ForeColor="#333333">兄弟姐妹</asp:LinkButton>
                                        <asp:Label ID="Label6" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton16" runat="server" Font-Underline="False" ForeColor="#333333">怀念爱人</asp:LinkButton>
                                        <asp:Label ID="Label7" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton17" runat="server" Font-Underline="False" ForeColor="#333333">缅怀亲属</asp:LinkButton>
                                        <asp:Label ID="Label8" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton18" runat="server" Font-Underline="False" ForeColor="#333333">伟人英雄烈士</asp:LinkButton>
                                        <asp:Label ID="Label9" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton19" runat="server" Font-Underline="False" ForeColor="#333333">名人艺人</asp:LinkButton>
                                        <asp:Label ID="Label10" runat="server" ForeColor="#333333" Text="|"></asp:Label>
                                        <asp:LinkButton ID="LinkButton20" runat="server" Font-Underline="False" ForeColor="#333333">更多哀思</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>

    <div style="float:left">
    <table style="width: 1026px;text-align:center;">
        <tr><td class="tableLeftPictures"></td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pictures/xp1 (1).jpg" />
                <br />
               <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; font-style: normal; text-decoration: none; color: #000000;">有</a></td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pictures/xp1 (2).jpg" />
              <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">花</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/pictures/xp1 (3).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">堪</a>
                
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/pictures/xp1 (4).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">折</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/pictures/xp1 (5).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">直</a>
            </td>
            
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/pictures/xp1 (6).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">须</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/pictures/xp1 (7).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">折</a>
            </td>
        </tr>
        <tr>
            <td class="tableLeftPictures">&nbsp;</td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/pictures/xp1 (8).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">莫</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/pictures/xp1 (9).jpg" />
                <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">待</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/pictures/xp1 (10).jpg" />
                <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">无</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/pictures/xp1 (11).jpg" />
                <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">花</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/pictures/xp1 (12).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">空</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/pictures/xp113 (13).jpg" />
                <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">折</a>
            </td>
            <td class="tablePictureFun">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/pictures/xp1 14(14).jpg" />
                 <br/>
                <a href="Default.aspx" style="font-family: 宋体, Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; text-transform: none; color: #000000; font-size: small;text-decoration: none; ">枝</a>
            </td>
        </tr>
    </table></div>
            <div  style="float:right; margin-top: 0px; background-color: #FFCCCC;">
    <table>
        <tr>
            <td class="tableLogFun" style="background-color: #FFFFCC">
                <table class="auto-style20">
                    <tr >
                        <td class="tableLog">
                            <asp:Label ID="Label11" runat="server" Font-Size="X-Large" ForeColor="#FF3300" Text="             用户登录"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="tableLogUserAndPassword">
                            <asp:Label ID="Label12" runat="server" Text="用户名："></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableLogUserAndPassword">&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="密码：                "></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Groove" style="margin-left: 4px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="tableLogUserAndPassword">
                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="30天内免登陆" />
                        </td>
                        <td class="tableLogUserAndPassword">
                            <asp:LinkButton ID="LinkButton21" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="Black">忘记密码?</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="tableLogIn">
                            <asp:Button ID="Button1" runat="server" BackColor="#993333" BorderStyle="None" ForeColor="White" Height="30px" Text="登录" Width="200px" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td class="tableLog">
                            <asp:LinkButton ID="LinkButton22" runat="server" Font-Underline="False" ForeColor="#990000">注册用户，免费建立网上纪念馆</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="tableLogEmpty" style="border: thin none #FFFFFF; background-color: #FFFFFF">
                &nbsp;</td>
        </tr>
    </table></div>
</div>
<div style="width:1350px;height:350px;">

        <div   style="float:left;">                                                                                                                                                                                                 
    <table class="tablePictureAll" >
        <tr>
            <td class="tablePicture"></td>
            <td class="tablePicture">
                <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/pictures/祈祷1.jpg" />
            </td>
            <td class="tablePictureOne" style="border-top-width: thin; border-top-color: #666666; border-right-width: thin; border-style: groove groove groove none; border-bottom-width: thin; border-bottom-color: #666666; border-right-color: #666666">
                <asp:LinkButton ID="LinkButton27" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="Black">你见，或者不见我，我就在那里，不悲不喜。</asp:LinkButton>
            </td>
            <td class="tablePicture">
                <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/pictures/祈祷2.jpg" />
            </td>
            <td class="tablePictureOne">
                <asp:LinkButton ID="LinkButton24" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="Black">你念，或者不念我，情就在那里，不来不去。</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="tablePicturesEmpty"></td>
            <td class="auto-style22"></td>
            <td class="tablePictureAmongEmpty"></td>
            <td class="auto-style22"></td>
            <td class="tablePictureAmongEmpty"></td>
        </tr>
        <tr>
            <td class="tablePictureEmpty"></td>
            <td class="tablePicture">
                <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/pictures/祈祷3.jpg" />
            </td>
            <td class="tablePictureOne">
                <asp:LinkButton ID="LinkButton25" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="Black">你爱，或者不爱我，爱就在那里，不增不减。</asp:LinkButton>
            </td>
            <td class="tablePicture">
                <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/pictures/祈祷4.jpg" />
            </td>
            <td class="tablePictureOne">
                <asp:LinkButton ID="LinkButton26" runat="server" Font-Size="Small" Font-Underline="False" ForeColor="Black">你跟，或者不跟我，我的手就在你手里，不舍不弃。</asp:LinkButton>
            </td>
        </tr>
    </table>

      
    <table style="width: 1022px;float:left;">
        <tr>
            <td class="tablePictureEmpty">&nbsp;</td>
            <td class="tablePictureTwo">
                <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/pictures/Picture1 (1).png" />
            </td>
            <td class="tablePictureTwo">
                <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/pictures/Picture1 (2).png" />
            </td>
        </tr>
    </table>
            </div> 
    <div style="float:right";>
                      <table  margin-left: 0px;" class="tableIntro">
                    <tr>
                        <td class="tableIntro">
                            <table class="tableIntro">
                                <tr>
                                    <td class="tableIntroOne">
                                        <asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="~/pictures/People.png" style="margin-top: 0px" />
                                        <table>
                                            <tr>
                                                <td class="auto-style16">&nbsp;</td>
                                                <td class="auto-style15">
                                                    <asp:LinkButton ID="LinkButton28" runat="server" Font-Size="Small" ForeColor="#FF3300">+查看更多</asp:LinkButton>
                                                </td>
                                                <td class="tableMore">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
    </table>
        </div>
    
           </div>
     
    </form>                                                                                                                                                                               
    <table>
        <tr>
            <td class="tableAllFunction">&nbsp;</td>
        </tr>
    </table>
            <table class="tableAllWrite">
                <tr>
                    <td class="tableWriteEmptyLeft">&nbsp;</td>
                    <td class="tableWrite">&nbsp;</td>
                    <td class="tableWrite">&nbsp;</td>
                    <td class="tableWriteAmong">&nbsp;</td>
                    <td class="tableAm">&nbsp;</td>
                    <td class="tableWriteEmptyRight">&nbsp;</td>
                </tr>
            </table>
</body>
</html>
