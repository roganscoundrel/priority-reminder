# priority-reminder
Small windows powershell script to be used as a simple focus reminder.

# Instructions

1. Copy or checkout the Invoke-PriorityReminder.ps1 file from this repository.

2. Run the powershell script from the command prompt:
```
powershell ./Invoke-PriorityReminder.ps1  
```

3. A prompt will appear that you can type your current priority into.
    - Pressing 'Ok' will start the sixty minute timer for the first reminder.
    - Pressing 'Cancel' will exit the program

4. After sixty minutes another prompt will be displayed asking if you are still on task.
    - Pressing 'Yes' will reset the sixty minute timer.
    - Pressing 'No' will start the two minute timer.
    - Pressing 'Cancel' will stop the program.

# Thanks
Thanks goes out to reddit user Replies_With_GIFs for the idea for this program.
