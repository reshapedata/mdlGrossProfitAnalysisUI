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
#' rule_rebateFobamountUI()
rule_rebateFobamountUI <- function(tabTitle ='FOB金额表',
                                   colTitles =c('操作区域','操作区域','显示区域'),
                                   widthRates =c(6,6,12),
                                   func_left = rule_rebateFobamountUI_left,
                                   func_right =rule_rebateFobamountUI_right,
                                   func_bottom = rule_rebateFobamountUI_bottom
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
#' rule_rebateFobamountUI_left()
rule_rebateFobamountUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_rule_rebateFobamount_Fbillno',label ='单据编号' ,value ='' ),

    tsui::mdl_text2(id = 'text_rule_rebateFobamount_FCountStandard',label ='计提依据' ,value ='' ),


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_rebateFobamountUI_bottom()
rule_rebateFobamountUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_rule_rebateFobamount_FBillNo_delete',label ='删除单据编号' ,value ='' ),

    shiny::actionButton(inputId = 'btn_rule_rebateFobamount_view',label = '查询FOB金额表'),
    shiny::actionButton(inputId='btn_rule_rebateFobamount_add',label = '添加计提依据'),

    shiny::actionButton(inputId='btn_rule_rebateFobamount_delete',label = '删除计提依据')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_rebateFobamountUI_bottom()
rule_rebateFobamountUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rule_rebateFobamount_resultView',label ='结果显示' ))

  )
  return(res)

}
