# PowerShellFormProject_ScriptWrap.designer.ps1 - Standard Visual Studio designer pattern

# Load required assemblies
[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')

# Form and control declarations (module level)
$mainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$tabControl = $null
[System.Windows.Forms.TabPage]$tabConnection = $null
[System.Windows.Forms.TabPage]$tabScripts = $null
[System.Windows.Forms.Button]$btnTest = $null
[System.Windows.Forms.Label]$lblScripts = $null
[System.Windows.Forms.Panel]$pnlBottom = $null
[System.Windows.Forms.Button]$btnExit = $null

function InitializeComponent
{
    # Create controls
    $tabControl = (New-Object -TypeName System.Windows.Forms.TabControl)
    $tabConnection = (New-Object -TypeName System.Windows.Forms.TabPage)
    $tabScripts = (New-Object -TypeName System.Windows.Forms.TabPage)
    $btnTest = (New-Object -TypeName System.Windows.Forms.Button)
    $lblScripts = (New-Object -TypeName System.Windows.Forms.Label)
    $pnlBottom = (New-Object -TypeName System.Windows.Forms.Panel)
    $btnExit = (New-Object -TypeName System.Windows.Forms.Button)
    
    # Suspend layout
    $tabControl.SuspendLayout()
    $tabConnection.SuspendLayout()
    $tabScripts.SuspendLayout()
    $pnlBottom.SuspendLayout()
    $mainForm.SuspendLayout()
    
    #
    # tabControl
    #
    $tabControl.Controls.Add($tabConnection)
    $tabControl.Controls.Add($tabScripts)
    $tabControl.Dock = [System.Windows.Forms.DockStyle]::Fill
    $tabControl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
    $tabControl.Name = [System.String]'tabControl'
    $tabControl.SelectedIndex = [System.Int32]0
    $tabControl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]521))
    $tabControl.TabIndex = [System.Int32]0
    
    #
    # tabConnection
    #
    $tabConnection.Controls.Add($btnTest)
    $tabConnection.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
    $tabConnection.Name = [System.String]'tabConnection'
    $tabConnection.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
    $tabConnection.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]776,[System.Int32]495))
    $tabConnection.TabIndex = [System.Int32]0
    $tabConnection.Text = [System.String]'Connection'
    $tabConnection.UseVisualStyleBackColor = $true
    
    #
    # btnTest
    #
    $btnTest.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]20))
    $btnTest.Name = [System.String]'btnTest'
    $btnTest.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]30))
    $btnTest.TabIndex = [System.Int32]0
    $btnTest.Text = [System.String]'Test Button'
    $btnTest.UseVisualStyleBackColor = $true
    
    #
    # tabScripts
    #
    $tabScripts.Controls.Add($lblScripts)
    $tabScripts.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
    $tabScripts.Name = [System.String]'tabScripts'
    $tabScripts.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
    $tabScripts.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]776,[System.Int32]495))
    $tabScripts.TabIndex = [System.Int32]1
    $tabScripts.Text = [System.String]'Scripts'
    $tabScripts.UseVisualStyleBackColor = $true
    
    #
    # lblScripts
    #
    $lblScripts.AutoSize = $true
    $lblScripts.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]20))
    $lblScripts.Name = [System.String]'lblScripts'
    $lblScripts.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]13))
    $lblScripts.TabIndex = [System.Int32]0
    $lblScripts.Text = [System.String]'Scripts functionality will go here'
    
    #
    # pnlBottom
    #
    $pnlBottom.Controls.Add($btnExit)
    $pnlBottom.Dock = [System.Windows.Forms.DockStyle]::Bottom
    $pnlBottom.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]521))
    $pnlBottom.Name = [System.String]'pnlBottom'
    $pnlBottom.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]40))
    $pnlBottom.TabIndex = [System.Int32]1
    
    #
    # btnExit
    #
    $btnExit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]8))
    $btnExit.Name = [System.String]'btnExit'
    $btnExit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]25))
    $btnExit.TabIndex = [System.Int32]0
    $btnExit.Text = [System.String]'Exit'
    $btnExit.UseVisualStyleBackColor = $true
    
    #
    # mainForm
    #
    $mainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]561))
    $mainForm.Controls.Add($tabControl)
    $mainForm.Controls.Add($pnlBottom)
    $mainForm.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]600,[System.Int32]400))
    $mainForm.Name = [System.String]'mainForm'
    $mainForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
    $mainForm.Text = [System.String]'vCenter Migration Workflow Manager'
    
    # Resume layout
    $tabControl.ResumeLayout($false)
    $tabConnection.ResumeLayout($false)
    $tabConnection.PerformLayout()
    $tabScripts.ResumeLayout($false)
    $tabScripts.PerformLayout()
    $pnlBottom.ResumeLayout($false)
    $mainForm.ResumeLayout($false)
    
    # Add controls as properties to the form for easy access
    Add-Member -InputObject $mainForm -Name tabControl -Value $tabControl -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name tabConnection -Value $tabConnection -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name tabScripts -Value $tabScripts -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name btnTest -Value $btnTest -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name lblScripts -Value $lblScripts -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name pnlBottom -Value $pnlBottom -MemberType NoteProperty
    Add-Member -InputObject $mainForm -Name btnExit -Value $btnExit -MemberType NoteProperty
}

Write-Host "✓ Designer pattern form template loaded" -ForegroundColor Green
