<%@ Page Language="C#" MasterPageFile="../layouts/SiteTemplate.master" CodeFile="New.aspx.cs" Inherits="community.main.New" %>

<asp:Content ID="NewContent" ContentPlaceHolderID="cphFirstContent" Runat="Server">
    <div>
        <label for="username">�г���:</label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </div>
    <div>
        <label>����:</label>
        <asp:TextBox ID="title" runat="server"></asp:TextBox>
    </div>
    <div>
      <asp:Label ID="Label" runat="server">�±�:</asp:Label>
        <asp:DropDownList ID="tag" runat="server">
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>���α׷���</asp:ListItem>
            <asp:ListItem>�����Խ���</asp:ListItem>
        </asp:DropDownList>
     
    </div>
    <div>
       <div>
           <label>�� �ۼ�:</label>
       </div> 
        <asp:TextBox ID="message" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
    </div>
    <asp:Button ID="SubmitButton" runat="server" onclick="btnWrite_Click" Text="submit" />
</asp:Content>
