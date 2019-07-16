# Create-AutomatedSnapshots
A PowerShell Script to Sequentially create VM snapshots based on a list of named VMs in a plaintext file and creates each snapshot with a ticket reference. 

Why would I need this script?

If you've ever worked in a Managed Services Environment which uses VMware, you'll find customers will want to snapshot VMs prior to them deploying updates. You might find that you have a lot of them, maybe 50-100 VMs that all need snapshotting. That'll take a lot of time with the UI. Seriously, I saw people doing this manually by hand, it was painful! With this script, all you need to do is provide the list of VMs that your client or boss has provided into a test file, then specify the path to that text file when prompted. For an added bonus, the script will prompt you for a Ticket Reference number when carrying out the operation. This makes it easy to see why a snapshot was created as well as simple to remove all snapshots for a particular ticket. 

If you have any questions, please feel free to send them to wgriffiths@huskynet.ca!
