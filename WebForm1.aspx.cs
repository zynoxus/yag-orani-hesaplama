using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                erkek_paneli.Visible = false;
                kadin_paneli.Visible = false;
            }
            /*if(txt_erkek_bel.Text=="" || txt_erkek_boy.Text== "" || txt_erkek_boyun.Text == "")
            {
                btn_erkek.Enabled = false;
            }
            else
            {
                btn_erkek.Enabled=true;
            }
            if(txt_kadin_bel.Text==""&& txt_kadin_boy.Text==""&& txt_kadin_boyun.Text == "" && txt_kadin_kalca.Text == "")
            {
                btn_kadin.Enabled = false;
            }
            else
            {
                btn_kadin.Enabled=true;
            }*/
        }

        protected void drp_cinsiyet_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt16(drp_cinsiyet.SelectedValue) == 1)
            {
                erkek_paneli.Visible = true;
                txt_kadin_bel.Text = "";
                txt_kadin_boy.Text = "";
                txt_kadin_boyun.Text = "";
                txt_kadin_kalca.Text = "";
                lbl_kadin_sonuc.Text = "";
            }
            if (Convert.ToInt16(drp_cinsiyet.SelectedValue) == 2)
            {
                kadin_paneli.Visible = true;
                txt_erkek_bel.Text = "";
                txt_erkek_boy.Text = "";
                txt_erkek_boyun.Text = "";
                lbl_erkek_sonuc.Text = "";
            }
            if (Convert.ToInt16(drp_cinsiyet.SelectedValue) == 0)
            {
                txt_erkek_bel.Text = "";
                txt_erkek_boy.Text = "";
                txt_erkek_boyun.Text = "";
                lbl_erkek_sonuc.Text = "";
                txt_kadin_bel.Text = "";
                txt_kadin_boy.Text = "";
                txt_kadin_boyun.Text = "";
                txt_kadin_kalca.Text = "";
                lbl_kadin_sonuc.Text = "";
            }
        }


        protected void btn_erkek_Click(object sender, EventArgs e)
        {
            erkek_paneli.Visible = true;
            double yagorani;
            double beleksiboyun, logboy;
            beleksiboyun = (Convert.ToDouble(txt_erkek_bel.Text)) - (Convert.ToDouble(txt_erkek_boyun.Text));
            logboy = Convert.ToDouble(txt_erkek_boy.Text);
            yagorani = 86.01 * Math.Log10(beleksiboyun) - 70.041 * Math.Log10(logboy) + 30.30;
            lbl_erkek_sonuc.Text = Convert.ToString(Convert.ToByte(yagorani));

        }

        protected void btn_kadin_Click(object sender, EventArgs e)
        {
            kadin_paneli.Visible = true;
            double yagorani;
            double logbelartikalcaeksiboyun, logboy;
            logbelartikalcaeksiboyun = (Convert.ToDouble(txt_kadin_bel.Text)) + (Convert.ToDouble(txt_kadin_kalca.Text)) - (Convert.ToDouble(txt_kadin_boyun.Text));
            logboy = Convert.ToDouble(txt_kadin_boy.Text);
            yagorani = 163.205 * Math.Log10(logbelartikalcaeksiboyun) - 97.684 * Math.Log10(logboy) - 104.912;
            lbl_kadin_sonuc.Text = Convert.ToString(Convert.ToByte(yagorani));
        }
    }
}