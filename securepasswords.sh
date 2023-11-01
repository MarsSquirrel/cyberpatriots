echo "Starting Program."
the_path="/etc/login.defs"
 
echo "Editing DAYS"
sudo sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/' $the_path
sudo sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/' $the_path
sudo sed -i 's/PASS_WARN_DAYS.*/PASS_WARN_DAYS   7/' $the_path
 
echo "Editing Logs"
sudo sed -i 's/LOG_UNKFAIL_ENAB.*/LOG_UNKFAIL_ENAB   yes/' $the_path
sudo sed -i 's/LOG_OK_LOGINS.*/LOG_OK_LOGINS   yes/' $the_path
 
echo "Completed"
