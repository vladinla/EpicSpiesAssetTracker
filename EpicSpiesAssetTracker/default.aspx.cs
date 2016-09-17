using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EpicSpiesAssetTracker
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                double[] elections = new double[0];
                ViewState.Add("Elections", elections);

                double[] subterfuge = new double[0];
                ViewState.Add("Subterfuge", subterfuge);
            }
        }

        protected void resultButton_Click(object sender, EventArgs e)
        {
            double[] elections = (double[])ViewState["Elections"];

            Array.Resize(ref elections, elections.Length + 1);

            int newestItem = elections.GetUpperBound(0);

            elections[newestItem] = double.Parse(electionsTextBox.Text);

            ViewState["Elections"] = elections;


            double[] subterfuge = (double[])ViewState["Subterfuge"];

            Array.Resize(ref subterfuge, subterfuge.Length + 1);

            int newestItem2 = subterfuge.GetUpperBound(0);

            subterfuge[newestItem2] = double.Parse(subterfugeTextBox.Text);

            ViewState["Subterfuge"] = subterfuge;


            resultLabel.Text = String.Format("1. Total Elections Rigged: {0}<br><br>2. Average Acts of Subterfuge per Asset: {1:0.00}<br><br>3. Last Asset You Added: {2}"
                ,elections.Sum(), subterfuge.Average(), assetNameTextBox.Text);
        }
    }
}