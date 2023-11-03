using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LYRISETask
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAddress();
                refreshdata();

            }
        }

        private void LoadAddress()
        {
            AddressDrop.Items.Add("Afghanistan");
            AddressDrop.Items.Add("United States Of America");
            AddressDrop.Items.Add("United Kingdom");
            AddressDrop.Items.Add("KingDom Of Saudi Arabia");
            AddressDrop.Items.Insert(0, new ListItem("Select", string.Empty));
            AddressDrop.SelectedIndex = 0;
        }

        private void refreshdata()
        {
            fullNameLbl.Text = FullName.Text;
            addressLbl.Text = AddressDrop.SelectedItem.Text;
            userNameLbl.Text = UserName.Text;
        }


        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 2)
            {
                refreshdata();
            }

        }
    }
}