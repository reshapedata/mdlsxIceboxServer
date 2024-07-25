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
#' rushDateServer_view()
rushDateServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_rushDate_view,{
    text_rushDate_year=tsui::var_text("text_rushDate_year")

    data = mdlsxIceboxPkg::rushDate_view(token = dms_token,year =text_rushDate_year() )

    tsui::run_dataTable2(id = 'dt_rushDate_res',data = data)
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
#' rushDateServer()
rushDateServer <- function(input,output,session,dms_token) {


  rushDateServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
