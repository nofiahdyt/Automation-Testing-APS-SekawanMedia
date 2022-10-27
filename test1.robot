*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
#Your Browser
${Browser}    chrome
#Testing URL
${SiteUrl}    https://aps-rejanglebong.skwn.dev/dev/

*** Keywords ***

*** Test Cases ***

Login page - fail1
    #Failed login
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Wait Until Element Is Visible  id:username  timeout=10
    Input Text  id:username  superadmin
    Input Password  id:password  password123@
    Click Element    //*[@id="login_form"]/div[3]/div/span
    Click Element  css:button[type="button"]
    Close Browser

Login page - fail2
    #Failed login
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Wait Until Element Is Visible  id:username  timeout=15
    Input Text  id:username  superadmins
    Input Password  id:password  password123@
    Click Element    //*[@id="login_form"]/div[3]/div/span
    Click Element  css:button[type="button"]
    Close Browser
 
Login page - pass
    #Pass login
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Wait Until Element Is Visible  id:username  timeout=15
    Input Text  id:username  superadmin
    Input Password  id:password  password123
    Click Element    //*[@id="login_form"]/div[3]/div/span
    Click Element  css:button[type="button"]
    Close Browser

PerhitunganSuaraKPU
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    Sleep    10
    #klik menu perhitungan suara KPU
    Click Element    //*[@id="kt_aside_menu"]/ul/li[4]/a
    Sleep    10
    #klik button edit
    Click Element    //*[@id="inputkpu-table"]/tbody/tr[6]/td[5]/a[2]
    Sleep    8
    #input suara
    Input Text    id:detail_total_status-a421faa42981c85da65694339f068ad2-0926a39a50026a88279cc70b79e9bc97    27
    Sleep    7
    #button simpan
    Click Button    //*[@id="form_inputkpu"]/div[2]/button
    #konfirmasi tidak
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]
    Sleep    7
    #button simpan
    Click Button    //*[@id="form_inputkpu"]/div[2]/button
    Sleep    7 
    #konfir Ya
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[3]
    Sleep    5
    #button OK
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]

Master provinsi
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    3
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    #Data Master
    Click Element    //*[@id="kt_header_menu"]/ul/li[1]/a
    Sleep    10
    #Provinsi
    Click Element    //*[@id="kt_header_menu"]/ul/li[1]/div/ul/li[1]/a
    Sleep    10
    #button tambah
    Click Element    //*[@id="pagecontainer"]/div[1]/div/div/div[1]/div[2]/div/div[2]/a
    Sleep    10
    Input Text  id:provinsi_kode  ntb
    Input Text  id:provinsi_nama  Nusa Tenggara Barat
    #button simpan
    Click Button    //*[@id="form_provinsi"]/div[2]/button
    #konfir tidak
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]
    #button simpan
    Click Button    //*[@id="form_provinsi"]/div[2]/button
    #konfir Ya
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[3]
    #button OK
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]

Import Excel Pemilih Tetap
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    Sleep    10
    #klik menu pemilih tetap
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    Sleep    10
    #klik dropdown
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[2]
    Sleep    7  
    #donwload template
    Click Element    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/div/a[1]
    Sleep    7
    #klik dropdown
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[2]
    Sleep    7    
    #import excel
    Click Element    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/div/a[2]
    Sleep    5  
    #pilih file
    Click Element    //*[@id="form_upload_pemilih"]/div[1]/div/div/input
    Sleep    5  

Menu Pemilih Tetap
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    Sleep    10
    #klik menu pemilih tetap
    Click Element    //*[@id="kt_aside_menu"]/ul/li[3]/a
    #klik button tambah
    Click Button    //*[@id="cardDataPemilih"]/div/div[1]/div[2]/div/div[2]/div/button[1]
    Sleep    15    
    Input Text  id:pemilih_kk  99999999999999999
    Input Text  id:pemilih_nik  9090909090000000
    Input Text  id:pemilih_nama  Yusuf
    Input Text  id:pemilih_alamat  Gerung
    Input Text  id:pemilih_rt  1
    Input Text  id:pemilih_rw  1
    Select From List By Label    pemilih_kelurahan_id    Tunas Harapan
    Input Text  id:pemilih_tempat_lahir    Malang
    Input Text  id:pemilih_tgl_lahir    25/01/1996
    Click Element    //*[@id="form_inputpemilih"]/div[1]/div/div[1]/div[7]/div
    #milih jk
    Click Element    //*[@id="form_inputpemilih"]/div[1]/div/div[2]/div[3]/div/div[1]/label[2]
    #milih status kawin
    Select From List By Label    pemilih_status_kawin    B - Belum Kawin
    #milih caleg
    Select From List By Label    pemilih_caleg_id    Dummy
    #milih caleg
    Select From List By Label    pemilih_tps_id    TPS001 - Tunas Harapan
    #milih potensi
    Click Element    //*[@id="Statusradio"]/label[1]
    Sleep    8
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    10
    #konfir tidak
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]
    Sleep    10
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    10 
    #konfir Ya
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[3]
    Sleep    5
    #button OK
    Click Element    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]

Menu Manajemen
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    Sleep    10
    #klik menu manajemen
    Click Element    //*[@id="kt_aside_menu"]/ul/li[6]/a
    Sleep    10
    #klik menu hak akses
    Click Element    //*[@id="kt_aside_menu"]/ul/li[6]/div/ul/li[2]/a
    Sleep    15

    #button tambah
    # Click Button    //div[@id='hakakses-tabel_wrapper']/parent::div/div[1]/div[1]/div[2]/a
    Click Element    //div[@id='hakakses-tabel_wrapper']/parent::div/div[1]/div[1]/div[2]/a
    Sleep    10
    #input kode
    Input Text    id:role_kode    klm
    Input Text    id:role_nama    Super Admin
    Sleep    10
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    #konfirmasi tidak
    Click Button    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]
    Sleep    10
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    10 
    #konfir Ya
    Click Button    //*[@id="kt_body"]/div[7]/div/div[3]/button[3]
    Sleep    10
    #button OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    Sleep    10

    #button edit
    Click Element    //*[@id="hakakses-tabel"]/tbody/tr[5]/td[3]/a[1]
    Sleep    10
    Input Text    id:role_kode    sopp
    Input Text    id:role_nama    Super Operators
    Sleep    10
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    7
    #konfir tidak
    Click Button    //*[@id="kt_body"]/div[7]/div/div[3]/button[1]
    Sleep    7
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    #konfir ya
    Click Button    //*[@id="kt_body"]/div[7]/div/div[3]/button[3]
    #button OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]

    #button delete
    # Click Element        //*[@id="hakakses-tabel"]/tbody/tr[6]/td[3]/a[2]
    Sleep    10
    #konfir tidak
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    Sleep    10
    #button delete
    Click Element    //*[@id="hakakses-tabel"]/tbody/tr[6]/td[3]/a[2]
    #konfir ya
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[3]
    #konfir OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]

Master Kabupaten
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    3
    Input Text  id:username  superadmin 
    Input Password    id:password  password123
    Click Element    css:button[type="button"]
    #Data Master
    Click Element    //*[@id="kt_header_menu"]/ul/li[1]/a
    Sleep    7
    #klik kabupaten/kota
    Click Element    //*[@id="kt_header_menu"]/ul/li[1]/div/ul/li[2]/a
    Sleep    7

    #button tambah
    Click Element    //*[@id="pagecontainer"]/div[1]/div/div/div[1]/div[2]/div/div[2]/a
    Sleep    5
    #pilih provinsi
    Select From List By Label    kota_provinsi_id    Maluku
    Input Text    id:kota_kode    BTU
    Input Text    id:kota_nama    Batu
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    7
    #konfir tidak
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    Sleep    7
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    #konfir ya
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[3]
    Sleep    7
    #konfir OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    
    #button edit
    Click Element    //*[@id="kota-table"]/tbody/tr[3]/td[5]/a[1]
    Sleep    7
    Select From List By Label    kota_provinsi_id    Jawa Timur
    # Input Text    id:kota_kode    xzy
    Input Text    id:kota_nama    Jember
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    Sleep    7
    #konfir tidak
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    Sleep    7
    #button simpan
    Click Button    //*[@id="btn-simpan"]
    #konfir ya 
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[3]
    #konfir OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]

    #button hapus
    Click Element    //*[@id="kota-table"]/tbody/tr[3]/td[5]/a[2]
    Sleep    7
    #konfir tidak
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1]
    Sleep    5
    #button hapus
    Click Element    //*[@id="kota-table"]/tbody/tr[3]/td[5]/a[2]
    Sleep    7
    #konfir ya
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[3]
    #konfir OK
    Click Button    //*[@id="kt_body"]/div[6]/div/div[3]/button[1] 
