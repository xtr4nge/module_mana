<?
$mod_name="mana";
$mod_version="1.4";
$mod_path="/usr/share/fruitywifi/www/modules/$mod_name";
$mod_logs="$log_path/$mod_name.log"; 
$mod_logs_history="$mod_path/includes/logs/";
$mod_panel="show";
$mod_type="service";
$mod_alias="Mana";

# EXEC
$bin_danger = "/usr/share/fruitywifi/bin/danger";
$bin_sudo = "/usr/bin/sudo";
$bin_hostapd = "$mod_path/includes/hostapd";
$bin_hostapd_cli = "$mod_path/includes/hostapd_cli";
$bin_sh = "/bin/sh";
$bin_echo = "/bin/echo";
$bin_grep = "/usr/bin/ngrep";
$bin_killall = "/usr/bin/killall";
$bin_cp = "/bin/cp";
$bin_chmod = "/bin/chmod";
$bin_sed = "/bin/sed";
$bin_rm = "/bin/rm";
$bin_route = "/sbin/route";
$bin_perl = "/usr/bin/perl";

# ISUP
//$mod_isup="$bin_danger \"/usr/share/fruitywifi/www/modules/$mod_name/includes/hostapd_cli -p /var/run/hostapd karma_get_state | tail -1 | grep 'KARMA EN'\"";
$mod_isup="$bin_sudo /usr/share/fruitywifi/www/modules/$mod_name/includes/hostapd_cli -p /var/run/hostapd karma_get_state | tail -1 | grep 'KARMA EN'";
?>
