Add-Type -AssemblyName Microsoft.VisualBasic

$onTrackTimeoutInMinutes = 60
$offTrackTimeoutInMinutes = 2

$title = 'Priority Reminder'
$onTrackAnswer = "Yes"

$priority = [Microsoft.VisualBasic.Interaction]::InputBox('Please enter your current priority:', $title)
if($priority.Length -le 0) {
    Exit
}

function checkIfOnTrack {
    if($onTrackAnswer -eq "Yes"){
        Start-Sleep -Seconds ($onTrackTimeoutInMinutes * 60)
    } 
    if($onTrackAnswer -eq "No"){
        Start-Sleep -Seconds ($offTrackTimeoutInMinutes * 60)
    }
    if($onTrackAnswer -eq "Cancel"){
        Exit
    }
    
    $onTrackAnswer = [System.Windows.MessageBox]::Show("Are you working on $($priority)?", $title,'YesNoCancel','Question')
    checkIfOnTrack
}

checkIfOnTrack
