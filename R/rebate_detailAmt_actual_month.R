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
#' rebate_detailAmt_actual_monthUI()
rebate_detailAmt_actual_monthUI <- function(tabTitle ='返利金额月度汇总表',
                                            colTitles =c('操作区域','操作区域','显示区域'),
                                            widthRates =c(6,6,12),
                                            func_left = rebate_detailAmt_actual_monthUI_left,
                                            func_right =rebate_detailAmt_actual_monthUI_right,
                                            func_bottom = rebate_detailAmt_actual_monthUI_bottom
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
#' rebate_detailAmt_actual_monthUI_left()
rebate_detailAmt_actual_monthUI_left <- function() {


  res <- tagList(

    tsui::mdl_text2(id = 'text_rebate_detailAmt_actual_month_year',label ='请输入年份' ,value ='2023' ),
    tsui::mdl_text2(id = 'text_rebate_detailAmt_actual_month_month',label ='请输入月份' ,value ='11' )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rebate_detailAmt_actual_monthUI_bottom()
rebate_detailAmt_actual_monthUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_rebate_detailAmt_actual_month_selectBydata',label = '计算月度汇总返利金额'),

    shiny::actionButton(inputId = 'btn_rebate_detailAmt_actual_month_select',label = '查询返利金额月度汇总表'),

    shiny::actionButton(inputId = 'btn_rebate_detailAmt_actual_month_delete',label = '清空返利金额月度汇总表'),

    tsui::mdl_download_button(id = 'dl_rebate_detailAmt_actual_month',label = '下载返利金额月度汇总表')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rebate_detailAmt_actual_monthUI_bottom()
rebate_detailAmt_actual_monthUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rebate_detailAmt_actual_month_resultView',label ='结果显示' ))

  )
  return(res)

}
