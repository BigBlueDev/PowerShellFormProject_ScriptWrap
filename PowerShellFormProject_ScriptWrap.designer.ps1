[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$mainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$tabControl = $null
[System.Windows.Forms.TabPage]$tabConnection = $null
[System.Windows.Forms.TabPage]$tabScripts = $null
[System.Windows.Forms.Label]$lblScripts = $null
[System.Windows.Forms.Panel]$pnlBottom = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.ComboBox]$comboBox2 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Button]$button1 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.TextBox]$textBox4 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Button]$button5 = $null
[System.Windows.Forms.Button]$button4 = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$toolStripStatusLabel1 = $null
[System.Windows.Forms.Button]$button3 = $null
[System.Windows.Forms.GroupBox]$grpTarget = $null
[System.Windows.Forms.GroupBox]$grpSource = $null
[System.Windows.Forms.Label]$lblSourceServer = $null
[System.Windows.Forms.ComboBox]$cboSourceServer = $null
[System.Windows.Forms.Label]$lblSourcePassword = $null
[System.Windows.Forms.Label]$lblSourceUsername = $null
[System.Windows.Forms.Button]$btnTestSourceConnection = $null
[System.Windows.Forms.TextBox]$txtSourcePassword = $null
[System.Windows.Forms.TextBox]$txtSourceServer = $null
[System.Windows.Forms.Button]$btnExit = $null
function InitializeComponent
{
$tabControl = (New-Object -TypeName System.Windows.Forms.TabControl)
$tabConnection = (New-Object -TypeName System.Windows.Forms.TabPage)
$btnTestSourceConnection = (New-Object -TypeName System.Windows.Forms.Button)
$tabScripts = (New-Object -TypeName System.Windows.Forms.TabPage)
$lblScripts = (New-Object -TypeName System.Windows.Forms.Label)
$pnlBottom = (New-Object -TypeName System.Windows.Forms.Panel)
$btnExit = (New-Object -TypeName System.Windows.Forms.Button)
$txtSourceServer = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtSourcePassword = (New-Object -TypeName System.Windows.Forms.TextBox)
$grpSource = (New-Object -TypeName System.Windows.Forms.GroupBox)
$lblSourceUsername = (New-Object -TypeName System.Windows.Forms.Label)
$lblSourcePassword = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$cboSourceServer = (New-Object -TypeName System.Windows.Forms.ComboBox)
$lblSourceServer = (New-Object -TypeName System.Windows.Forms.Label)
$grpTarget = (New-Object -TypeName System.Windows.Forms.GroupBox)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$comboBox2 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$textBox4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$button3 = (New-Object -TypeName System.Windows.Forms.Button)
$statusStrip1 = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$toolStripStatusLabel1 = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$button4 = (New-Object -TypeName System.Windows.Forms.Button)
$button5 = (New-Object -TypeName System.Windows.Forms.Button)
$tabControl.SuspendLayout()
$tabConnection.SuspendLayout()
$tabScripts.SuspendLayout()
$pnlBottom.SuspendLayout()
$grpSource.SuspendLayout()
$grpTarget.SuspendLayout()
$statusStrip1.SuspendLayout()
$mainForm.SuspendLayout()
#
#tabControl
#
$tabControl.Controls.Add($tabConnection)
$tabControl.Controls.Add($tabScripts)
$tabControl.Dock = [System.Windows.Forms.DockStyle]::Fill
$tabControl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tabControl.Name = [System.String]'tabControl'
$tabControl.SelectedIndex = [System.Int32]0
$tabControl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]459))
$tabControl.TabIndex = [System.Int32]0
#
#tabConnection
#
$tabConnection.Controls.Add($button5)
$tabConnection.Controls.Add($button4)
$tabConnection.Controls.Add($grpTarget)
$tabConnection.Controls.Add($grpSource)
$tabConnection.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabConnection.Name = [System.String]'tabConnection'
$tabConnection.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabConnection.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]776,[System.Int32]433))
$tabConnection.TabIndex = [System.Int32]0
$tabConnection.Text = [System.String]'Connection'
$tabConnection.UseVisualStyleBackColor = $true
#
#btnTestSourceConnection
#
$btnTestSourceConnection.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]48,[System.Int32]185))
$btnTestSourceConnection.Name = [System.String]'btnTestSourceConnection'
$btnTestSourceConnection.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]30))
$btnTestSourceConnection.TabIndex = [System.Int32]0
$btnTestSourceConnection.Text = [System.String]'Test Button'
$btnTestSourceConnection.UseVisualStyleBackColor = $true
#
#tabScripts
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
#lblScripts
#
$lblScripts.AutoSize = $true
$lblScripts.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]20))
$lblScripts.Name = [System.String]'lblScripts'
$lblScripts.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]154,[System.Int32]13))
$lblScripts.TabIndex = [System.Int32]0
$lblScripts.Text = [System.String]'Scripts functionality will go here'
#
#pnlBottom
#
$pnlBottom.Controls.Add($statusStrip1)
$pnlBottom.Controls.Add($button3)
$pnlBottom.Controls.Add($button2)
$pnlBottom.Controls.Add($btnExit)
$pnlBottom.Dock = [System.Windows.Forms.DockStyle]::Bottom
$pnlBottom.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]459))
$pnlBottom.Name = [System.String]'pnlBottom'
$pnlBottom.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]102))
$pnlBottom.TabIndex = [System.Int32]1
#
#btnExit
#
$btnExit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]8))
$btnExit.Name = [System.String]'btnExit'
$btnExit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]25))
$btnExit.TabIndex = [System.Int32]0
$btnExit.Text = [System.String]'Exit'
$btnExit.UseVisualStyleBackColor = $true
#
#txtSourceServer
#
$txtSourceServer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]77))
$txtSourceServer.Name = [System.String]'txtSourceServer'
$txtSourceServer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]20))
$txtSourceServer.TabIndex = [System.Int32]1
#
#txtSourcePassword
#
$txtSourcePassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]120))
$txtSourcePassword.Name = [System.String]'txtSourcePassword'
$txtSourcePassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]20))
$txtSourcePassword.TabIndex = [System.Int32]3
#
#grpSource
#
$grpSource.Controls.Add($lblSourceServer)
$grpSource.Controls.Add($cboSourceServer)
$grpSource.Controls.Add($label4)
$grpSource.Controls.Add($lblSourcePassword)
$grpSource.Controls.Add($lblSourceUsername)
$grpSource.Controls.Add($btnTestSourceConnection)
$grpSource.Controls.Add($txtSourcePassword)
$grpSource.Controls.Add($txtSourceServer)
$grpSource.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]18))
$grpSource.Name = [System.String]'grpSource'
$grpSource.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]256,[System.Int32]233))
$grpSource.TabIndex = [System.Int32]4
$grpSource.TabStop = $false
$grpSource.Text = [System.String]'groupBox1'
#
#lblSourceUsername
#
$lblSourceUsername.AutoSize = $true
$lblSourceUsername.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]9,[System.Int32]83))
$lblSourceUsername.Name = [System.String]'lblSourceUsername'
$lblSourceUsername.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$lblSourceUsername.TabIndex = [System.Int32]5
$lblSourceUsername.Text = [System.String]'User Name'
#
#lblSourcePassword
#
$lblSourcePassword.AutoSize = $true
$lblSourcePassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]9,[System.Int32]126))
$lblSourcePassword.Name = [System.String]'lblSourcePassword'
$lblSourcePassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]13))
$lblSourcePassword.TabIndex = [System.Int32]6
$lblSourcePassword.Text = [System.String]'Password'
#
#label4
#
$label4.AutoSize = $true
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]70,[System.Int32]154))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]13))
$label4.TabIndex = [System.Int32]7
$label4.Text = [System.String]'label4'
#
#cboSourceServer
#
$cboSourceServer.FormattingEnabled = $true
$cboSourceServer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]35))
$cboSourceServer.Name = [System.String]'cboSourceServer'
$cboSourceServer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]21))
$cboSourceServer.TabIndex = [System.Int32]8
#
#lblSourceServer
#
$lblSourceServer.AutoSize = $true
$lblSourceServer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]42))
$lblSourceServer.Name = [System.String]'lblSourceServer'
$lblSourceServer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]78,[System.Int32]13))
$lblSourceServer.TabIndex = [System.Int32]9
$lblSourceServer.Text = [System.String]'Vcenter Server'
#
#grpTarget
#
$grpTarget.Controls.Add($label5)
$grpTarget.Controls.Add($comboBox2)
$grpTarget.Controls.Add($label6)
$grpTarget.Controls.Add($label7)
$grpTarget.Controls.Add($label8)
$grpTarget.Controls.Add($button1)
$grpTarget.Controls.Add($textBox2)
$grpTarget.Controls.Add($textBox4)
$grpTarget.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]347,[System.Int32]18))
$grpTarget.Name = [System.String]'grpTarget'
$grpTarget.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]256,[System.Int32]233))
$grpTarget.TabIndex = [System.Int32]5
$grpTarget.TabStop = $false
$grpTarget.Text = [System.String]'groupBox2'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]42))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]13))
$label5.TabIndex = [System.Int32]9
$label5.Text = [System.String]'label5'
#
#comboBox2
#
$comboBox2.FormattingEnabled = $true
$comboBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]35))
$comboBox2.Name = [System.String]'comboBox2'
$comboBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]21))
$comboBox2.TabIndex = [System.Int32]8
#
#label6
#
$label6.AutoSize = $true
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]70,[System.Int32]154))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]13))
$label6.TabIndex = [System.Int32]7
$label6.Text = [System.String]'label6'
#
#label7
#
$label7.AutoSize = $true
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]9,[System.Int32]126))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]13))
$label7.TabIndex = [System.Int32]6
$label7.Text = [System.String]'label7'
#
#label8
#
$label8.AutoSize = $true
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]9,[System.Int32]83))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]13))
$label8.TabIndex = [System.Int32]5
$label8.Text = [System.String]'label8'
#
#button1
#
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]48,[System.Int32]185))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]30))
$button1.TabIndex = [System.Int32]0
$button1.Text = [System.String]'Test Button'
$button1.UseVisualStyleBackColor = $true
#
#textBox2
#
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]120))
$textBox2.Name = [System.String]'textBox2'
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]20))
$textBox2.TabIndex = [System.Int32]3
#
#textBox4
#
$textBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]115,[System.Int32]77))
$textBox4.Name = [System.String]'textBox4'
$textBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]20))
$textBox4.TabIndex = [System.Int32]1
#
#button2
#
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]127,[System.Int32]9))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button2.TabIndex = [System.Int32]1
$button2.Text = [System.String]'SaveAll Settings'
$button2.UseVisualStyleBackColor = $true
#
#button3
#
$button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]228,[System.Int32]9))
$button3.Name = [System.String]'button3'
$button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button3.TabIndex = [System.Int32]2
$button3.Text = [System.String]'Load Settings'
$button3.UseVisualStyleBackColor = $true
#
#statusStrip1
#
$statusStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($toolStripStatusLabel1))
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]80))
$statusStrip1.Name = [System.String]'statusStrip1'
$statusStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]22))
$statusStrip1.TabIndex = [System.Int32]3
$statusStrip1.Text = [System.String]'statusStrip1'
#
#toolStripStatusLabel1
#
$toolStripStatusLabel1.Name = [System.String]'toolStripStatusLabel1'
$toolStripStatusLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]118,[System.Int32]17))
$toolStripStatusLabel1.Text = [System.String]'toolStripStatusLabel1'
#
#button4
#
$button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]23,[System.Int32]289))
$button4.Name = [System.String]'button4'
$button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]38))
$button4.TabIndex = [System.Int32]6
$button4.Text = [System.String]'Save Connection'
$button4.UseVisualStyleBackColor = $true
#
#button5
#
$button5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]151,[System.Int32]289))
$button5.Name = [System.String]'button5'
$button5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]38))
$button5.TabIndex = [System.Int32]7
$button5.Text = [System.String]'Load Connection'
$button5.UseVisualStyleBackColor = $true
#
#mainForm
#
$mainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]561))
$mainForm.Controls.Add($tabControl)
$mainForm.Controls.Add($pnlBottom)
$mainForm.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]600,[System.Int32]400))
$mainForm.Name = [System.String]'mainForm'
$mainForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$mainForm.Text = [System.String]'vCenter Migration Workflow Manager'
$tabControl.ResumeLayout($false)
$tabConnection.ResumeLayout($false)
$tabScripts.ResumeLayout($false)
$tabScripts.PerformLayout()
$pnlBottom.ResumeLayout($false)
$pnlBottom.PerformLayout()
$grpSource.ResumeLayout($false)
$grpSource.PerformLayout()
$grpTarget.ResumeLayout($false)
$grpTarget.PerformLayout()
$statusStrip1.ResumeLayout($false)
$statusStrip1.PerformLayout()
$mainForm.ResumeLayout($false)
Add-Member -InputObject $mainForm -Name tabControl -Value $tabControl -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name tabConnection -Value $tabConnection -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name tabScripts -Value $tabScripts -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name lblScripts -Value $lblScripts -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name pnlBottom -Value $pnlBottom -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name comboBox2 -Value $comboBox2 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name button1 -Value $button1 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name textBox4 -Value $textBox4 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name button5 -Value $button5 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name button4 -Value $button4 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name toolStripStatusLabel1 -Value $toolStripStatusLabel1 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name button3 -Value $button3 -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name grpTarget -Value $grpTarget -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name grpSource -Value $grpSource -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name lblSourceServer -Value $lblSourceServer -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name cboSourceServer -Value $cboSourceServer -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name lblSourcePassword -Value $lblSourcePassword -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name lblSourceUsername -Value $lblSourceUsername -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name btnTestSourceConnection -Value $btnTestSourceConnection -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name txtSourcePassword -Value $txtSourcePassword -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name txtSourceServer -Value $txtSourceServer -MemberType NoteProperty
Add-Member -InputObject $mainForm -Name btnExit -Value $btnExit -MemberType NoteProperty
}
$mainForm.Write-Host()
