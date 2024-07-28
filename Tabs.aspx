<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tabs.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="simpletabs.css" rel="stylesheet" type="text/css" />  
<link href="style.css" rel="stylesheet" type="text/css" />  
<script src="simpletabs_1.3.js" type="text/javascript"></script>  
<script src="simpletabs_1.3.packed.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div id="container">
  <div class="simpleTabs">
    <ul class="simpleTabsNavigation">

      <li><a href="#">Tab 1</a></li>
      <li><a href="#">Tab 2</a></li>
      <li><a href="#">Tab 3</a></li>
    </ul>
    <div class="simpleTabsContent">
      <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec turpis. Fusce aliquet lorem vitae est. In hac habitasse platea dictumst. Phasellus iaculis facilisis pede. Fusce vulputate elit non magna. Nunc commodo rhoncus dolor. Integer auctor. Aliquam tincidunt purus id mauris. Vivamus eros. Vestibulum velit libero, dapibus ac, consectetuer dignissim, adipiscing sed, libero. Ut mi metus, tempor eget, aliquet sit amet, euismod ut, est. Sed nec leo eu lacus laoreet venenatis. Praesent massa sem, facilisis quis, mollis non, consequat et, sapien. Vestibulum dui sapien, sollicitudin ut, hendrerit id, cursus sed, eros. Aliquam eu purus. Proin iaculis. Vestibulum elementum metus sed ipsum. Integer facilisis. Donec aliquam ligula eu neque. Etiam urna. </p>

      <p>Cras pretium fringilla nibh. Duis posuere. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque semper. Ut quis arcu. Integer ac nulla. Ut auctor. Pellentesque scelerisque nisl in tortor. Integer eget purus. Ut volutpat, neque eu tincidunt tincidunt, justo tortor pretium elit, vitae varius mauris arcu a lectus. Phasellus bibendum pretium urna. Donec non quam in augue molestie congue. Aenean metus diam, volutpat vitae, tristique id, porttitor a, elit. Cras bibendum, augue non pulvinar aliquam, est nulla posuere nunc, gravida gravida magna leo nec arcu. Donec arcu mi, pellentesque quis, placerat quis, egestas id, leo. Morbi urna est, convallis eget, tristique at, egestas a, lectus.</p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" DataKeyNames="cod" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="cod" HeaderText="cod" ReadOnly="True" 
                    SortExpression="cod" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="end" HeaderText="end" SortExpression="end" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:TABSConnectionString %>" 
            DeleteCommand="DELETE FROM [Table1] WHERE [cod] = @original_cod AND (([nome] = @original_nome) OR ([nome] IS NULL AND @original_nome IS NULL)) AND (([end] = @original_end) OR ([end] IS NULL AND @original_end IS NULL))" 
            InsertCommand="INSERT INTO [Table1] ([cod], [nome], [end]) VALUES (@cod, @nome, @end)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [cod], [nome], [end] FROM [Table1]" 
            UpdateCommand="UPDATE [Table1] SET [nome] = @nome, [end] = @end WHERE [cod] = @original_cod AND (([nome] = @original_nome) OR ([nome] IS NULL AND @original_nome IS NULL)) AND (([end] = @original_end) OR ([end] IS NULL AND @original_end IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cod" Type="Int32" />
                <asp:Parameter Name="original_nome" Type="String" />
                <asp:Parameter Name="original_end" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="end" Type="String" />
                <asp:Parameter Name="original_cod" Type="Int32" />
                <asp:Parameter Name="original_nome" Type="String" />
                <asp:Parameter Name="original_end" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="cod" Type="Int32" />
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="end" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    <div class="simpleTabsContent">
              <p>Proin ullamcorper bibendum tellus. Donec vel ipsum sit amet mi convallis lacinia. Maecenas non nunc bibendum orci commodo aliquam. Integer vel justo. Sed vestibulum semper mi. Vestibulum tincidunt leo at augue. Morbi ut justo. Sed cursus, lorem nec lobortis blandit, urna nisl rhoncus erat, id vulputate dui sem sed erat. Sed velit diam, pretium in, hendrerit non, eleifend ut, nisi. Nullam at risus. Donec vitae tellus ut tellus dictum adipiscing. Sed nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam condimentum, odio at rhoncus cursus, dolor lacus malesuada est, in pulvinar arcu justo ultricies justo. Ut sagittis luctus dui. </p>
      <p> Maecenas fringilla diam fermentum ante. Vivamus tempor, sem vitae semper aliquam, arcu nunc pretium quam, vitae auctor sapien dolor ut lorem. Integer eros. Sed pulvinar mi eu tortor. Pellentesque faucibus neque eu erat. Nullam pulvinar, urna vitae elementum malesuada, tortor lectus consequat nulla, in pharetra augue lacus et odio. Donec enim nulla, lacinia sed, interdum non, laoreet ut, nisi. Quisque posuere, purus id pretium luctus, dui ligula porttitor neque, vitae consequat sem arcu posuere metus. Duis dictum convallis ipsum. Nulla mi. </p>
    </div>
     <div class="simpleTabsContent">
      <p>LULU Proin ullamcorper bibendum tellus. Donec vel ipsum sit amet mi convallis lacinia. Maecenas non nunc bibendum orci commodo aliquam. Integer vel justo. Sed vestibulum semper mi. Vestibulum tincidunt leo at augue. Morbi ut justo. Sed cursus, lorem nec lobortis blandit, urna nisl rhoncus erat, id vulputate dui sem sed erat. Sed velit diam, pretium in, hendrerit non, eleifend ut, nisi. Nullam at risus. Donec vitae tellus ut tellus dictum adipiscing. Sed nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam condimentum, odio at rhoncus cursus, dolor lacus malesuada est, in pulvinar arcu justo ultricies justo. Ut sagittis luctus dui. </p>
      <p> Maecenas fringilla diam fermentum ante. Vivamus tempor, sem vitae semper aliquam, arcu nunc pretium quam, vitae auctor sapien dolor ut lorem. Integer eros. Sed pulvinar mi eu tortor. Pellentesque faucibus neque eu erat. Nullam pulvinar, urna vitae elementum malesuada, tortor lectus consequat nulla, in pharetra augue lacus et odio. Donec enim nulla, lacinia sed, interdum non, laoreet ut, nisi. Quisque posuere, purus id pretium luctus, dui ligula porttitor neque, vitae consequat sem arcu posuere metus. Duis dictum convallis ipsum. Nulla mi. </p>
    </div>
        <div class="simpleTabsContent">
    </div>
  </div>
</div>
   </form>
</body>
</html>
