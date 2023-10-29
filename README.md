# NoteScriptSyncer
You can use cron job on linux or what ever the equvivalent on mac to automate



To automate the batch script on Windows and have it run on a schedule, you can use the built-in Task Scheduler. Here's how to do it:

1. **Open Task Scheduler**:
   - You can press `Win + R`, type `taskschd.msc`, and press Enter to open the Task Scheduler.

2. **Create a Basic Task**:
   - In the Task Scheduler, click on "Create Basic Task" from the right-hand side under "Actions."

3. **Name and Description**:
   - Provide a name and description for your task, then click "Next."

4. **Trigger**:
   - Choose when you want the task to start. You can set it to run daily, weekly, monthly, or based on specific events. Click "Next" to configure your chosen trigger.

5. **Action**:
   - Select "Start a Program" and click "Next."

6. **Program/script**:
   - Browse and select your batch script by clicking "Browse" or manually enter the full path to your batch script.

7. **Start in (optional)**:
   - You can specify the directory where your script should run. If your batch script has relative paths, it's a good idea to set this to the directory containing your script.

8. **Finish**:
   - Review your settings, and if they're correct, click "Finish."

9. **Conditions and Settings (optional)**:
   - You can configure additional conditions and settings for your task if needed. For example, you can set it to run only when the computer is idle or not on battery power.

10. **Finish**:
    - Click "Finish" to create the scheduled task.

Your batch script will now run based on the schedule you've defined in the Task Scheduler. You can also manually trigger it from the Task Scheduler if needed.

Keep in mind that your batch script should be able to run independently, including handling its dependencies, as scheduled tasks may run with different privileges and environments. If your script depends on external software or resources, make sure those dependencies are set up correctly. 
