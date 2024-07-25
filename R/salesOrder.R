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
#' salesOrderServer_view()
salesOrderServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_salesOrder_view,{
    text_salesOrder_year=tsui::var_text("text_salesOrder_year")

    text_salesOrder_month=tsui::var_text("text_salesOrder_month")

    data = mdlsxIceboxPkg::salesOrder_view(token = dms_token,year =text_salesOrder_year() ,month = text_salesOrder_month())

    tsui::run_dataTable2(id = 'dt_salesOrder_res',data = data)
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
#' salesOrderServer()
salesOrderServer <- function(input,output,session,dms_token) {


  salesOrderServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
