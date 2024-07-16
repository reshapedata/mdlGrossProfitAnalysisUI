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
#' rule_fanLiQtyUI()
rule_fanLiQtyUI <- function(tabTitle ='返利数量规则表',
                            colTitles =c('操作区域','操作区域','显示区域'),
                            widthRates =c(7,5,12),
                            func_left = rule_fanLiQtyUI_left,
                            func_right =rule_fanLiQtyUI_right,
                            func_bottom = rule_fanLiQtyUI_bottom
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
#' rule_fanLiQtyUI_left()
rule_fanLiQtyUI_left <- function() {


  res <- tagList(

    tsui::mdl_file(id = 'file_rule_fanLiQty_FileName',label ='请上传文件' ),

    tsui::layout_2C(x = tsui::mdl_text2(id = 'text_rule_fanLiQty_FBillNo',label ='编号' ,value ='R0001' ),
                    y=tsui::mdl_text2(id = 'text_rule_fanLiQty_FCustomerName',label ='客户名称' ,value ='深圳深汕特别合作区昌茂粘胶新材料有限公司' )
                    ),

    tsui::layout_2C(x = tsui::mdl_text2(id = 'text_rule_fanLiQty_FIndexType',label ='指标类型' ,value ='所有产品' ),
                      y=tsui::mdl_text2(id = 'text_rule_fanLiQty_FIndexCustomerName',label ='计量客户' ,value ='深圳深汕特别合作区昌茂粘胶新材料有限公司' )
    ),

    tsui::layout_2C(x =tsui::mdl_text2(id = 'text_rule_fanLiQty_FStartRealQty',label ='实发数量(大于等于)' ,value ='0' ),

                    y=tsui::mdl_text2(id = 'text_rule_fanLiQty_FEndRealQty',label ='实发数量(到)' ,value ='99999' )
    ),


    tsui::layout_2C(x =tsui::mdl_text2(id = 'text_rule_fanLiQty_FUnit',label ='计量单位' ,value ='T' ),

                    y=tsui::mdl_text2(id = 'text_rule_fanLiQty_FRebateProduct',label ='返利产品' ,value ='所有产品' )
    ),


    tsui::layout_2C(x =tsui::mdl_text2(id = 'text_rule_fanLiQty_FRebateType',label ='返利类型' ,value ='所有期间' ),

                    y=tsui::mdl_text2(id = 'text_rule_fanLiQty_FRebateRate',label ='返利%' ,value ='1' )
    ),

    tsui::layout_2C(x =tsui::mdl_date(id='text_rule_fanLiQty_FEffectDate',label = '生效日期'),

                    y=tsui::mdl_date(id='text_rule_fanLiQty_FExpireDate',label = '失效日期')
    ),

    tsui::layout_2C(x =tsui::mdl_date(id='text_rule_fanLiQty_FStartDate',label = '返利开始日期'),

                    y=tsui::mdl_date(id='text_rule_fanLiQty_FEndDate',label = '返利结束日期')
    )



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_fanLiQtyUI_bottom()
rule_fanLiQtyUI_right <- function() {
  res <- tagList(

    tsui::mdl_text2(id = 'text_rule_fanLiQty_FBillNo_delete',label ='删除编号' ,value ='R0000' ),

    shiny::actionButton(inputId = 'btn_rule_fanLiQty_upload',label = '上传返利规则表'),

    shiny::actionButton(inputId = 'btn_rule_fanLiQty_view',label = '查询返利规则表'),
    tsui::mdl_download_button(id = 'btn_rule_fanLiQty_download',label ='下载规则表' ),
    shiny::actionButton(inputId='btn_rule_fanLiQty_add',label = '添加规则'),

    shiny::actionButton(inputId='btn_rule_fanLiQty_delete',label = '删除规则')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' rule_fanLiQtyUI_bottom()
rule_fanLiQtyUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'rule_fanLiQty_resultView',label ='结果显示' ))

  )
  return(res)

}
