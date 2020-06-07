namespace PWC.Forecast
{
    partial class frmItem
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.txtItemDescription = new System.Windows.Forms.TextBox();
            this.txtItemNumber = new System.Windows.Forms.TextBox();
            this.lblItemNumber = new System.Windows.Forms.Label();
            this.lblItemDescription = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.dgvItem = new System.Windows.Forms.DataGridView();
            this.ItemNumber = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ItemDescription = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ProductGroup = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.objectKeyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.objectKeyTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.objectKeyDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.parentDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.countDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isReadOnlyDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.bindingSourceItem = new System.Windows.Forms.BindingSource(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.chkUseClipboardDataOnNewRow = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cboProductGroup = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cboProductCategory = new System.Windows.Forms.ComboBox();
            this.lblBrand = new System.Windows.Forms.Label();
            this.cboBrand = new System.Windows.Forms.ComboBox();
            this.txtCompanyCode = new System.Windows.Forms.MaskedTextBox();
            this.txtCompanyName = new System.Windows.Forms.TextBox();
            this.lblCompany = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvItem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceItem)).BeginInit();
            this.SuspendLayout();
            // 
            // txtItemDescription
            // 
            this.txtItemDescription.Location = new System.Drawing.Point(323, 40);
            this.txtItemDescription.MaxLength = 100;
            this.txtItemDescription.Name = "txtItemDescription";
            this.txtItemDescription.Size = new System.Drawing.Size(187, 20);
            this.txtItemDescription.TabIndex = 7;
            this.txtItemDescription.GotFocus += new System.EventHandler(this.txtItemDescription_GotFocus);
            // 
            // txtItemNumber
            // 
            this.txtItemNumber.Location = new System.Drawing.Point(94, 40);
            this.txtItemNumber.MaxLength = 12;
            this.txtItemNumber.Name = "txtItemNumber";
            this.txtItemNumber.Size = new System.Drawing.Size(90, 20);
            this.txtItemNumber.TabIndex = 5;
            this.txtItemNumber.GotFocus += new System.EventHandler(this.txtItemNumber_GotFocus);
            // 
            // lblItemNumber
            // 
            this.lblItemNumber.AutoSize = true;
            this.lblItemNumber.Location = new System.Drawing.Point(15, 45);
            this.lblItemNumber.Name = "lblItemNumber";
            this.lblItemNumber.Size = new System.Drawing.Size(40, 13);
            this.lblItemNumber.TabIndex = 4;
            this.lblItemNumber.Text = "Item #:";
            // 
            // lblItemDescription
            // 
            this.lblItemDescription.AutoSize = true;
            this.lblItemDescription.Location = new System.Drawing.Point(258, 43);
            this.lblItemDescription.Name = "lblItemDescription";
            this.lblItemDescription.Size = new System.Drawing.Size(63, 13);
            this.lblItemDescription.TabIndex = 6;
            this.lblItemDescription.Text = "Description:";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(448, 93);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(62, 23);
            this.btnSearch.TabIndex = 14;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // dgvItem
            // 
            this.dgvItem.AutoGenerateColumns = false;
            this.dgvItem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvItem.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ItemNumber,
            this.ItemDescription,
            this.ProductGroup,
            this.objectKeyDataGridViewTextBoxColumn,
            this.objectKeyTypeDataGridViewTextBoxColumn,
            this.objectKeyDataGridViewTextBoxColumn1,
            this.parentDataGridViewTextBoxColumn,
            this.countDataGridViewTextBoxColumn,
            this.isReadOnlyDataGridViewCheckBoxColumn});
            this.dgvItem.DataSource = this.bindingSourceItem;
            this.dgvItem.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.dgvItem.Location = new System.Drawing.Point(14, 145);
            this.dgvItem.Name = "dgvItem";
            this.dgvItem.Size = new System.Drawing.Size(512, 302);
            this.dgvItem.TabIndex = 17;
            this.dgvItem.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dgvItem_CellBeginEdit);
            this.dgvItem.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvItem_CellEndEdit);
            this.dgvItem.CellParsing += new System.Windows.Forms.DataGridViewCellParsingEventHandler(this.dgvItem_CellParsing);
            this.dgvItem.CellValidating += new System.Windows.Forms.DataGridViewCellValidatingEventHandler(this.dgvItem_CellValidating);
            this.dgvItem.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.dgvItem_DataError);
            this.dgvItem.EditingControlShowing += new System.Windows.Forms.DataGridViewEditingControlShowingEventHandler(this.dgvItem_EditingControlShowing);
            this.dgvItem.RowValidating += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dgvItem_RowValidating);
            this.dgvItem.UserDeletingRow += new System.Windows.Forms.DataGridViewRowCancelEventHandler(this.dgvItem_UserDeletingRow);
            // 
            // ItemNumber
            // 
            this.ItemNumber.DataPropertyName = "ItemNumber";
            this.ItemNumber.HeaderText = "Item #";
            this.ItemNumber.MaxInputLength = 12;
            this.ItemNumber.Name = "ItemNumber";
            this.ItemNumber.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ItemNumber.Width = 75;
            // 
            // ItemDescription
            // 
            this.ItemDescription.DataPropertyName = "ItemDescription";
            this.ItemDescription.HeaderText = "Description";
            this.ItemDescription.MaxInputLength = 100;
            this.ItemDescription.Name = "ItemDescription";
            this.ItemDescription.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable;
            this.ItemDescription.Width = 220;
            // 
            // ProductGroup
            // 
            this.ProductGroup.DataPropertyName = "ProductGroupCodeBinding";
            this.ProductGroup.HeaderText = "Product Group";
            this.ProductGroup.Name = "ProductGroup";
            this.ProductGroup.Width = 150;
            // 
            // objectKeyDataGridViewTextBoxColumn
            // 
            this.objectKeyDataGridViewTextBoxColumn.HeaderText = "ObjectKey";
            this.objectKeyDataGridViewTextBoxColumn.Name = "objectKeyDataGridViewTextBoxColumn";
            this.objectKeyDataGridViewTextBoxColumn.Visible = false;
            // 
            // objectKeyTypeDataGridViewTextBoxColumn
            // 
            this.objectKeyTypeDataGridViewTextBoxColumn.DataPropertyName = "ObjectKeyType";
            this.objectKeyTypeDataGridViewTextBoxColumn.HeaderText = "ObjectKeyType";
            this.objectKeyTypeDataGridViewTextBoxColumn.Name = "objectKeyTypeDataGridViewTextBoxColumn";
            this.objectKeyTypeDataGridViewTextBoxColumn.ReadOnly = true;
            this.objectKeyTypeDataGridViewTextBoxColumn.Visible = false;
            // 
            // objectKeyDataGridViewTextBoxColumn1
            // 
            this.objectKeyDataGridViewTextBoxColumn1.DataPropertyName = "ObjectKey";
            this.objectKeyDataGridViewTextBoxColumn1.HeaderText = "ObjectKey";
            this.objectKeyDataGridViewTextBoxColumn1.Name = "objectKeyDataGridViewTextBoxColumn1";
            this.objectKeyDataGridViewTextBoxColumn1.Visible = false;
            // 
            // parentDataGridViewTextBoxColumn
            // 
            this.parentDataGridViewTextBoxColumn.DataPropertyName = "Parent";
            this.parentDataGridViewTextBoxColumn.HeaderText = "Parent";
            this.parentDataGridViewTextBoxColumn.Name = "parentDataGridViewTextBoxColumn";
            this.parentDataGridViewTextBoxColumn.Visible = false;
            // 
            // countDataGridViewTextBoxColumn
            // 
            this.countDataGridViewTextBoxColumn.DataPropertyName = "Count";
            this.countDataGridViewTextBoxColumn.HeaderText = "Count";
            this.countDataGridViewTextBoxColumn.Name = "countDataGridViewTextBoxColumn";
            this.countDataGridViewTextBoxColumn.ReadOnly = true;
            this.countDataGridViewTextBoxColumn.Visible = false;
            // 
            // isReadOnlyDataGridViewCheckBoxColumn
            // 
            this.isReadOnlyDataGridViewCheckBoxColumn.DataPropertyName = "IsReadOnly";
            this.isReadOnlyDataGridViewCheckBoxColumn.HeaderText = "IsReadOnly";
            this.isReadOnlyDataGridViewCheckBoxColumn.Name = "isReadOnlyDataGridViewCheckBoxColumn";
            this.isReadOnlyDataGridViewCheckBoxColumn.ReadOnly = true;
            this.isReadOnlyDataGridViewCheckBoxColumn.Visible = false;
            // 
            // bindingSourceItem
            // 
            this.bindingSourceItem.AllowNew = true;
            this.bindingSourceItem.DataSource = typeof(PWC.BusinessObject.Item.ParameteredCollection);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 123);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(202, 13);
            this.label1.TabIndex = 15;
            this.label1.Text = "Maximum number of rows returned is 300.";
            // 
            // chkUseClipboardDataOnNewRow
            // 
            this.chkUseClipboardDataOnNewRow.AutoSize = true;
            this.chkUseClipboardDataOnNewRow.Location = new System.Drawing.Point(343, 122);
            this.chkUseClipboardDataOnNewRow.Name = "chkUseClipboardDataOnNewRow";
            this.chkUseClipboardDataOnNewRow.Size = new System.Drawing.Size(183, 17);
            this.chkUseClipboardDataOnNewRow.TabIndex = 16;
            this.chkUseClipboardDataOnNewRow.Text = "Use Clipboard Data on New Row";
            this.chkUseClipboardDataOnNewRow.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 96);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(79, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Product Group:";
            // 
            // cboProductGroup
            // 
            this.cboProductGroup.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboProductGroup.FormattingEnabled = true;
            this.cboProductGroup.ItemHeight = 13;
            this.cboProductGroup.Location = new System.Drawing.Point(94, 93);
            this.cboProductGroup.Name = "cboProductGroup";
            this.cboProductGroup.Size = new System.Drawing.Size(227, 21);
            this.cboProductGroup.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(229, 68);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Product Category:";
            // 
            // cboProductCategory
            // 
            this.cboProductCategory.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboProductCategory.FormattingEnabled = true;
            this.cboProductCategory.ItemHeight = 13;
            this.cboProductCategory.Location = new System.Drawing.Point(323, 65);
            this.cboProductCategory.Name = "cboProductCategory";
            this.cboProductCategory.Size = new System.Drawing.Size(120, 21);
            this.cboProductCategory.TabIndex = 11;
            // 
            // lblBrand
            // 
            this.lblBrand.AutoSize = true;
            this.lblBrand.Location = new System.Drawing.Point(15, 71);
            this.lblBrand.Name = "lblBrand";
            this.lblBrand.Size = new System.Drawing.Size(38, 13);
            this.lblBrand.TabIndex = 8;
            this.lblBrand.Text = "Brand:";
            // 
            // cboBrand
            // 
            this.cboBrand.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboBrand.FormattingEnabled = true;
            this.cboBrand.ItemHeight = 13;
            this.cboBrand.Location = new System.Drawing.Point(94, 66);
            this.cboBrand.Name = "cboBrand";
            this.cboBrand.Size = new System.Drawing.Size(120, 21);
            this.cboBrand.TabIndex = 9;
            // 
            // txtCompanyCode
            // 
            this.txtCompanyCode.Location = new System.Drawing.Point(72, 12);
            this.txtCompanyCode.Mask = "000";
            this.txtCompanyCode.Name = "txtCompanyCode";
            this.txtCompanyCode.PromptChar = ' ';
            this.txtCompanyCode.Size = new System.Drawing.Size(25, 20);
            this.txtCompanyCode.TabIndex = 2;
            this.txtCompanyCode.Validating += new System.ComponentModel.CancelEventHandler(this.txtCompanyCode_Validating);
            this.txtCompanyCode.GotFocus += new System.EventHandler(this.txtCompanyCode_GotFocus);
            // 
            // txtCompanyName
            // 
            this.txtCompanyName.Location = new System.Drawing.Point(103, 12);
            this.txtCompanyName.Name = "txtCompanyName";
            this.txtCompanyName.ReadOnly = true;
            this.txtCompanyName.Size = new System.Drawing.Size(427, 20);
            this.txtCompanyName.TabIndex = 3;
            this.txtCompanyName.TabStop = false;
            // 
            // lblCompany
            // 
            this.lblCompany.AutoSize = true;
            this.lblCompany.Location = new System.Drawing.Point(14, 15);
            this.lblCompany.Name = "lblCompany";
            this.lblCompany.Size = new System.Drawing.Size(54, 13);
            this.lblCompany.TabIndex = 1;
            this.lblCompany.Text = "Company:";
            // 
            // frmItem
            // 
            this.AcceptButton = this.btnSearch;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(542, 464);
            this.Controls.Add(this.txtCompanyCode);
            this.Controls.Add(this.txtCompanyName);
            this.Controls.Add(this.lblCompany);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cboProductCategory);
            this.Controls.Add(this.lblBrand);
            this.Controls.Add(this.cboBrand);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboProductGroup);
            this.Controls.Add(this.chkUseClipboardDataOnNewRow);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvItem);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.lblItemDescription);
            this.Controls.Add(this.txtItemNumber);
            this.Controls.Add(this.lblItemNumber);
            this.Controls.Add(this.txtItemDescription);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmItem";
            this.Text = "Item";
            this.Load += new System.EventHandler(this.frmItem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvItem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSourceItem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion

        private System.Windows.Forms.TextBox txtItemDescription;
        private System.Windows.Forms.TextBox txtItemNumber;
        private System.Windows.Forms.Label lblItemNumber;
        private System.Windows.Forms.Label lblItemDescription;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.DataGridView dgvItem;
        private System.Windows.Forms.BindingSource bindingSourceItem;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox chkUseClipboardDataOnNewRow;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboProductGroup;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboProductCategory;
        private System.Windows.Forms.Label lblBrand;
        private System.Windows.Forms.ComboBox cboBrand;
        private System.Windows.Forms.DataGridViewTextBoxColumn ItemNumber;
        private System.Windows.Forms.DataGridViewTextBoxColumn ItemDescription;
        private System.Windows.Forms.DataGridViewComboBoxColumn ProductGroup;
        private System.Windows.Forms.DataGridViewTextBoxColumn objectKeyDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn objectKeyTypeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn objectKeyDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn parentDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn countDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isReadOnlyDataGridViewCheckBoxColumn;
        private System.Windows.Forms.MaskedTextBox txtCompanyCode;
        private System.Windows.Forms.TextBox txtCompanyName;
        private System.Windows.Forms.Label lblCompany;
    }
}