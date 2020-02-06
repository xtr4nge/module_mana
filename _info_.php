<?
$mod_name="mana";
$mod_version="2.b";
$mod_path="/usr/share/fruitywifi/www/modules/$mod_name";
$mod_logs="$log_path/$mod_name.log"; 
$mod_logs_history="$mod_path/includes/logs/";
$mod_logs_panel="enabled";
$mod_panel="show";
$mod_type="service";
$mod_isup="$bin_sudo /usr/share/fruitywifi/www/modules/$mod_name/includes/hostapd_cli -p /var/run/hostapd mana_get_state | tail -1 | grep 'MANA EN'";
$mod_alias="Mana";
$mod_dep="Responder";
$mod_responderisup="ps auxww | grep -iEe 'responder' | grep -v -e grep";

# EXEC
$bin_sudo = "/usr/bin/sudo";
$bin_hostapd = "$mod_path/includes/hostapd";
$bin_hostapd_cli = "$mod_path/includes/hostapd_cli";
$bin_responder = "/usr/bin/responder";
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
?>
