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
#' rule_payment_monthUI()
rule_payment_monthUI <- function(tabTitle ='支付金额USD表',
                                 colTitles =c('操作区域','操作区域','显示区域'),
                                 widthRates =c(6,6,12),
                                 func_left = rule_payment_monthUI_left,
                                 func_right =rule_payment_monthUI_right,
                                 func_bottom = rule_payment_monthUI_bottom
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
#' rule_payment_monthUI_left()
rule_payment_monthUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_rule_payment_month_FContractNumber',label ='合同协议号' ,value ='000000' ),

    tsui::mdl_text2(id = 'text_rule_payment_month_FSaleOrgName',label ='组织名称' ,value ='组织名称' ),
    tsui::mdl_text2(id = 'text_rule_payment_month_FCustomerName',label ='客户名称' ,value ='客户名称' ),

    tsui::mdl_text2(id = 'text_rule_payment_month_Fyear',label ='年份' ,value ='2023' ),

    tsui::mdl_text2(id = 'text_rule_payment_month_Fmonth',label ='月份' ,value ='11' ),

    tsui::mdl_text2(id = 'text_rule_payment_month_FPaymentAmount',label ='支付金额' ,value ='0' )


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_payment_monthUI_bottom()
rule_payment_monthUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_rule_payment_month_FContractNumber_delete',label ='删除合同协议号' ,value ='000000' ),

    shiny::actionButton(inputId = 'btn_rule_payment_month_view',label = '查询支付金额USD表'),
    shiny::actionButton(inputId='btn_rule_payment_month_add',label = '添加支付金额_美元'),

    shiny::actionButton(inputId='btn_rule_payment_month_delete',label = '删除金额')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_payment_monthUI_bottom()
rule_payment_monthUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rule_payment_month_resultView',label ='结果显示' ))

  )
  return(res)

}
