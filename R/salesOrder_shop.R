#' 处理逻辑
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' salesOrder_shopServer_view()
salesOrder_shopServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_salesOrder_shop_view,{
    text_salesOrder_shop_year=tsui::var_text("text_salesOrder_shop_year")

    text_salesOrder_shop_month=tsui::var_text("text_salesOrder_shop_month")

    data = mdlsxIceboxPkg::salesOrder_shop_view(token = dms_token,year =text_salesOrder_shop_year() ,month = text_salesOrder_shop_month())

    tsui::run_dataTable2(id = 'dt_salesOrder_shop_res',data = data)
  })







}

#' 处理逻辑
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples
#' salesOrder_shopServer()
salesOrder_shopServer <- function(input,output,session,dms_token) {


  salesOrder_shopServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
