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
#' FestivalShopServer_view()
FestivalShopServer_view <- function(input,output,session,dms_token) {


  shiny::observeEvent(input$btn_FestivalShop_view,{
    text_FestivalShop_year=tsui::var_text("text_FestivalShop_year")

    data = mdlsxIceboxPkg::FestivalShop_view(token = dms_token,year =text_FestivalShop_year() )

    tsui::run_dataTable2(id = 'dt_FestivalShop_res',data = data)
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
#' FestivalShopServer()
FestivalShopServer <- function(input,output,session,dms_token) {


  FestivalShopServer_view(input = input,output = output,session = session,dms_token = dms_token)






}
