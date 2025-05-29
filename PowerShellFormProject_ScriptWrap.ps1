# PowerShellFormProject_ScriptWrap.ps1 - Main form logic

# Load the designer
. (Join-Path $PSScriptRoot 'PowerShellFormProject_ScriptWrap.designer.ps1')

# Call InitializeComponent to build the form
InitializeComponent

# Add event handlers
if ($mainForm.btnExit) {
    $mainForm.btnExit.Add_Click({
        $mainForm.Close()
    })
}

if ($mainForm.btnTest) {
    $mainForm.btnTest.Add_Click({
        [System.Windows.Forms.MessageBox]::Show("Test button clicked!", "Test", "OK", "Information")
    })
}

# Show the form
if ($mainForm) {
    $mainForm.ShowDialog()
}