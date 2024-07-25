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
#' returnOrderServer_view()
returnOrderServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_returnOrder_view,{
    text_returnOrder_year=tsui::var_text("text_returnOrder_year")

    text_returnOrder_month=tsui::var_text("text_returnOrder_month")

    data = mdlsxIceboxPkg::returnOrder_view(token = dms_token,year =text_returnOrder_year() ,month = text_returnOrder_month())

    tsui::run_dataTable2(id = 'dt_returnOrder_res',data = data)
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
#' returnOrderServer()
returnOrderServer <- function(input,output,session,dms_token) {


  returnOrderServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
