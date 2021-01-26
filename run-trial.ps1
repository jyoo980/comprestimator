<#
    run-trial.ps1
    Date: Jan 25, 2021
    Author: James YOo

    This file basically runs the IBM Comprestimator tool for a specified number of iterations for a given data set 
    and records the result to a file (file.log). You will need to specify <disk_name> in the body of the loop with
    the name of the data set you wish to run the comprestimator on. This can usually be obtained via running

    .\comprestimator.exe -l
#>

$NumRuns = 10

for ($i = 0; $i -lt $NumRuns; $i++)
{
    $time_taken = Measure-Command {
        .\comprestimator.exe -s DRP -d "<disk_name>" >> file.log
    }
    $time_taken >> file.log
}
