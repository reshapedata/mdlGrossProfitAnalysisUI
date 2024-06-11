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
#' commision_actualUI()
commision_actualUI <- function(tabTitle ='佣金明细表财务口径',
                               colTitles =c('操作区域','操作区域','显示区域'),
                               widthRates =c(6,6,12),
                               func_left = commision_actualUI_left,
                               func_right =commision_actualUI_right,
                               func_bottom = commision_actualUI_bottom
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
#' commision_actualUI_left()
commision_actualUI_left <- function() {


  res <- tagList(

    tsui::mdl_text2(id = 'text_commision_actual_year',label ='请输入年份' ,value ='2023' ),
    tsui::mdl_text2(id = 'text_commision_actual_month',label ='请输入月份' ,value ='11' )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' commision_actualUI_bottom()
commision_actualUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_commision_actual_selectBydata',label = '计算佣金'),

    #shiny::actionButton(inputId = 'btn_commision_actual_selectBydata',label = '按日期查询'),

    shiny::actionButton(inputId = 'btn_commision_actual_select',label = '查询佣金明细表'),

    shiny::actionButton(inputId = 'btn_commision_actual_delete',label = '清空佣金明细表'),

    tsui::mdl_download_button(id = 'dl_commision_actual',label = '下载佣金明细表')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' commision_actualUI_bottom()
commision_actualUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'commision_actual_resultView',label ='结果显示' ))

  )
  return(res)

}
