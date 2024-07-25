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
#' eigenvaluesServer_view()
eigenvaluesServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_eigenvalues_view,{
    text_eigenvalues_year=tsui::var_text("text_eigenvalues_year")

    text_eigenvalues_month=tsui::var_text("text_eigenvalues_month")

    data = mdlsxIceboxPkg::eigenvalues_view(token = dms_token,year =text_eigenvalues_year() ,month = text_eigenvalues_month())


    tsui::run_dataTable2(id = 'dt_eigenvalues_res',data = data)
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
#' eigenvaluesServer()
eigenvaluesServer <- function(input,output,session,dms_token) {


  eigenvaluesServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
