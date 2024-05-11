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
#' transportFee_managementUI()
transportFee_managementUI <- function(tabTitle ='运费明细表管理口径',
                                  colTitles =c('操作区域','操作区域','显示区域'),
                                  widthRates =c(6,6,12),
                                  func_left = transportFee_managementUI_left,
                                  func_right =transportFee_managementUI_right,
                                  func_bottom = transportFee_managementUI_bottom
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
#' transportFee_managementUI_left()
transportFee_managementUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_transportFee_management_year',label ='请输入年份' ,value ='2023' ),
    tsui::mdl_text2(id = 'text_transportFee_management_month',label ='请输入月份' ,value ='11' )


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' transportFee_managementUI_bottom()
transportFee_managementUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId = 'btn_transportFee_management',label = '查询数据'),

    tsui::mdl_download_button(id = 'dl_transportFee_management',label = '下载数据')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' transportFee_managementUI_bottom()
transportFee_managementUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'transportFee_management_resultView',label ='结果显示' ))

  )
  return(res)

}
