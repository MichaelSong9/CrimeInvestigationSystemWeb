using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace CrimeInvestigationSystemWeb
{
    public partial class Report1 : System.Web.UI.Page
    {
        CrimeInvestigationDBEntities db = new CrimeInvestigationDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var caseId = Convert.ToInt16(Session["ReportCaseId"].ToString());
            var pointList = db.AddEvidences.Where(x => x.CaseId == caseId).Select(x => x.Points).ToList();

            List<int> intPointList = new List<int>();
            for (int i = 0; i < pointList.Count; i++)
            {
                intPointList.Add(Convert.ToInt32(pointList[i]));
            }
            //var maxPoint = Convert.ToString(intPointList.Max());

            var maxPoint = Convert.ToInt16(intPointList.Max());

            var suspectId =
                db.AddEvidences.Where(x => x.CaseId == caseId && x.Points == maxPoint)
                    .Select(x => x.SuspectId)
                    .ToList()
                    .LastOrDefault();
            caseNameTextBox.Text =
                db.AddCases.Where(x => x.Id == caseId).Select(x => x.CaseName).ToList().LastOrDefault();
            suspectTextBox.Text =
                db.AddSuspects.Where(x => x.Id == suspectId).Select(x => x.Name).ToList().LastOrDefault();
            suspectImage.ImageUrl = db.AddSuspects.Where(x => x.Id == suspectId).Select(x => x.Image).ToList().LastOrDefault();
            pointTextBox.Text = maxPoint.ToString();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.ContentType = ".pdf";
        //    Response.AddHeader("content-disposition", "filename = TestNewPdf.pdf");
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    StringWriter sw = new StringWriter();
        //    sw.Write("<h1 style='text-align: center; color: red'>Crime Investigation System</h1>" +
        //             "<p style='text-align: Center;'>We deliver beef and mutton every FRIDAY!!!</p><br/>");
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    this.Page.RenderControl(hw);
        //    StringReader sr = new StringReader(sw.ToString());

        //    iTextSharp.text.Rectangle pageSize = new iTextSharp.text.Rectangle(400, 500);
        //    //pageSize.BackgroundColor = new BaseColor(0, 0, 0);  //black
        //    pageSize.BackgroundColor = new BaseColor(255, 255, 255);
        //    Document pdfDoc = new Document(pageSize);

        //    //Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);

        //    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //    pdfDoc.Open();
        //    htmlparser.Parse(sr);
        //    pdfDoc.Close();
        //    Response.Write(pdfDoc);
        //    Response.End();
        //}

        
    }
}