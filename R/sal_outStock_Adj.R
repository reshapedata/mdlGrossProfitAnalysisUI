#' 返利生成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' sal_outStock_AdjUI()
sal_outStock_AdjUI <- function(tabTitle ='手工调整单',
                               colTitles =c('操作区域','操作区域','显示区域'),
                               widthRates =c(6,6,12),
                               func_left = sal_outStock_AdjUI_left,
                               func_right =sal_outStock_AdjUI_right,
                               func_bottom = sal_outStock_AdjUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' sal_outStock_AdjUI_left()
sal_outStock_AdjUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '销售出库单手工调整单'),
    tsui::mdl_file(id = 'btn_sal_outStock_Adj', label = '上传手工调整单')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' sal_outStock_AdjUI_bottom()
sal_outStock_AdjUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_sal_outStock_AdjUp',label = '上传手工调整单数据'),

    shiny::actionButton(inputId = 'btn_sal_outStock_Adj',label = '查询手工调整单数据'),

    tsui::mdl_download_button(id = 'dl_sal_outStock_Adj',label = '下载手工调整单数据'),
    shiny::actionButton(inputId = 'btn_sal_outStock_Adj_delete',label = '删除手工调整单数据'),


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' sal_outStock_AdjUI_bottom()
sal_outStock_AdjUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'sal_outStock_Adj_resultView',label ='结果显示' ))

  )
  return(res)

}
