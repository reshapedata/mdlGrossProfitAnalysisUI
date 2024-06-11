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
#' rule_fanLiAmountUI()
rule_fanLiAmountUI <- function(tabTitle ='返利金额规则表',
                               colTitles =c('操作区域','操作区域','显示区域'),
                               widthRates =c(6,6,12),
                               func_left = rule_fanLiAmountUI_left,
                               func_right =rule_fanLiAmountUI_right,
                               func_bottom = rule_fanLiAmountUI_bottom
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
#' rule_fanLiAmountUI_left()
rule_fanLiAmountUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FBillNo',label ='编号' ,value ='R0001' ),
    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FCustomerName',label ='客户名称' ,value ='深圳市力科信实业有限公司' ),

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FIndexType',label ='指标类型' ,value ='所有产品' ),

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FStartRealAmount',label ='回款金额(大于等于)' ,value ='0' ),

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FEndRealAmount',label ='回款金额(到)' ,value ='999999999' ),

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FUnit',label ='计量单位' ,value ='万元' ),

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FRebateRate',label ='返利%' ,value ='1' ),
    tsui::mdl_date(id='text_rule_fanLiAmount_FEffectDate',label = '生效日期'),
    tsui::mdl_date(id='text_rule_fanLiAmount_FExpireDate',label = '失效日期')


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_fanLiAmountUI_bottom()
rule_fanLiAmountUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_rule_fanLiAmount_FBillNo_delete',label ='删除编号' ,value ='R0000' ),

    shiny::actionButton(inputId = 'btn_rule_fanLiAmount_view',label = '查询返利规则表'),
    shiny::actionButton(inputId='btn_rule_fanLiAmount_add',label = '添加规则'),

    shiny::actionButton(inputId='btn_rule_fanLiAmount_delete',label = '删除规则')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_fanLiAmountUI_bottom()
rule_fanLiAmountUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rule_fanLiAmount_resultView',label ='结果显示' ))

  )
  return(res)

}
