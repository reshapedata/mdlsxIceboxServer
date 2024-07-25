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
#' NationalMacroDataServer_view()
NationalMacroDataServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_NationalMacroData_view,{
    text_NationalMacroData_year=tsui::var_text("text_NationalMacroData_year")

    text_NationalMacroData_month=tsui::var_text("text_NationalMacroData_month")

    data = mdlsxIceboxPkg::NationalMacroData_view(token = dms_token,year =text_NationalMacroData_year() ,month = text_NationalMacroData_month())

    tsui::run_dataTable2(id = 'dt_NationalMacroData_res',data = data)
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
#' NationalMacroDataServer()
NationalMacroDataServer <- function(input,output,session,dms_token) {


  NationalMacroDataServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
