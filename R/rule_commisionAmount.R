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
#' rule_commisionAmountUI()
rule_commisionAmountUI <- function(tabTitle ='佣金规则表',
                            colTitles =c('操作区域','操作区域','显示区域'),
                            widthRates =c(6,6,12),
                            func_left = rule_commisionAmountUI_left,
                            func_right =rule_commisionAmountUI_right,
                            func_bottom = rule_commisionAmountUI_bottom
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
#' rule_commisionAmountUI_left()
rule_commisionAmountUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_rule_commisionAmount_Fbillno',label ='编号' ,value ='R0000' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FSaleOrgName',label ='组织' ,value ='上海嘉好胶粘制品有限公司' ),
    tsui::mdl_text2(id = 'text_rule_commisionAmount_FSaleMan',label ='业务员' ,value ='' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_Fcountry',label ='国家' ,value ='' ),
    tsui::mdl_date(id='text_rule_commisionAmount_FStartDate',label = '开始日期'),
    tsui::mdl_date(id='text_rule_commisionAmount_FEndDate',label = '结束日期'),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FCustomerName',label ='客户' ,value ='' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FContidtionName',label ='佣金条款' ,value ='' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FCustMtrlName',label ='客户物料名称' ,value ='全部' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FCommisionBy',label ='计提依据' ,value ='实发数量' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FCommisionStandard',label ='计提标准（量/金额）' ,value ='' ),


    tsui::mdl_text2(id = 'text_rule_commisionAmount_Fcurrency',label ='币种' ,value ='美元' ),

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FFiscalFee',label ='打款手续费' ,value ='0' )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_commisionAmountUI_bottom()
rule_commisionAmountUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_rule_commisionAmount_FBillNo_delete',label ='删除编号' ,value ='R0000' ),

    shiny::actionButton(inputId = 'btn_rule_commisionAmount_view',label = '查询佣金规则表'),
    shiny::actionButton(inputId='btn_rule_commisionAmount_add',label = '添加规则'),

    shiny::actionButton(inputId='btn_rule_commisionAmount_delete',label = '删除规则')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_commisionAmountUI_bottom()
rule_commisionAmountUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rule_commisionAmount_resultView',label ='结果显示' ))

  )
  return(res)

}
