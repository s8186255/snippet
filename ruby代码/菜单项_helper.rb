#在view层的使用方法如下：
# <%=side_menu_item "index_sales_area","新建会展"%>

#左侧菜单项分项名称
def side_menu_name name
  %Q{
      <a href="" class="auto">
          <span class="pull-right text-muted">
            <i class="fa fa-fw fa-angle-right text"></i>
            <i class="fa fa-fw fa-angle-down text-active"></i>
          </span>
      <b class="badge bg-info pull-right">3</b>
      <i class="glyphicon glyphicon-th"></i>
      <span>#{name}</span>
      </a>
      }.html_safe
end
#左侧的菜单项
def side_menu_item url,name
  %Q{
      <li>
      <a href=#{url}>
      <span>#{name}</span>
      </a>
      </li>
    }.html_safe
end