close all
clear all
clc

%study = 'Beijing';
%load ../SPM/randomDifferenceEventsBeijingAllSubjects.mat

%study = 'Cambridge';
%load ../SPM/randomDifferenceEventsCambridgeAllSubjects.mat

study = 'Oulu';
load ../SPM/randomDifferenceEventsOuluAllSubjects.mat

numEvents = 13;

BeijingSubjects={
    
    'sub00440'
    'sub01018'
    'sub01244'
    'sub02403'
    'sub04050'
    'sub04191'
    'sub05267'
    'sub06880'
    'sub06899'
    'sub07144'
    'sub07716'
    'sub07717'
    'sub08001'
    'sub08251'
    'sub08455'
    'sub08816'
    'sub08992'
    'sub10186'
    'sub10277'
    'sub10869'
    'sub10973'
    'sub11072'
    'sub11344'
    'sub12220'
    'sub14238'
    'sub15441'
    'sub16091'
    'sub16943'
    'sub17093'
    'sub17159'
    'sub17315'
    'sub17586'
    'sub17603'
    'sub17642'
    'sub17688'
    'sub18326'
    'sub18758'
    'sub18960'
    'sub19642'
    'sub19974'
    'sub20127'
    'sub20246'
    'sub20765'
    'sub20948'
    'sub21115'
    'sub22201'
    'sub22595'
    'sub22661'
    'sub22715'
    'sub22890'
    'sub26713'
    'sub28206'
    'sub28403'
    'sub28698'
    'sub28792'
    'sub28801'
    'sub28907'
    'sub28965'
    'sub29590'
    'sub29785'
    'sub30272'
    'sub30310'
    'sub30556'
    'sub30616'
    'sub30988'
    'sub31058'
    'sub31729'
    'sub32517'
    'sub32587'
    'sub33747'
    'sub33943'
    'sub33991'
    'sub34895'
    'sub34943'
    'sub35309'
    'sub35776'
    'sub35806'
    'sub36580'
    'sub36942'
    'sub37602'
    'sub38602'
    'sub39725'
    'sub40037'
    'sub40427'
    'sub41170'
    'sub41621'
    'sub42512'
    'sub42555'
    'sub42843'
    'sub43290'
    'sub44573'
    'sub45552'
    'sub46058'
    'sub46259'
    'sub46541'
    'sub48501'
    'sub48563'
    'sub48676'
    'sub49782'
    'sub50498'
    'sub50873'
    'sub50972'
    'sub50985'
    'sub51015'
    'sub51586'
    'sub52044'
    'sub52259'
    'sub53572'
    'sub53998'
    'sub54890'
    'sub55301'
    'sub55541'
    'sub55736'
    'sub55856'
    'sub56136'
    'sub56659'
    'sub56703'
    'sub56757'
    'sub58029'
    'sub58332'
    'sub58614'
    'sub59347'
    'sub59448'
    'sub61961'
    'sub62083'
    'sub62438'
    'sub62843'
    'sub62966'
    'sub64923'
    'sub65467'
    'sub65659'
    'sub66158'
    'sub66528'
    'sub66781'
    'sub66889'
    'sub67435'
    'sub67844'
    'sub68012'
    'sub68597'
    'sub69518'
    'sub69696'
    'sub71693'
    'sub72654'
    'sub72678'
    'sub73098'
    'sub73245'
    'sub73279'
    'sub73421'
    'sub74386'
    'sub74587'
    'sub75878'
    'sub76377'
    'sub77440'
    'sub80163'
    'sub80551'
    'sub80569'
    'sub80927'
    'sub81062'
    'sub81074'
    'sub82352'
    'sub82426'
    'sub82714'
    'sub82826'
    'sub82980'
    'sub83430'
    'sub83624'
    'sub83728'
    'sub85030'
    'sub85543'
    'sub85818'
    'sub86114'
    'sub87089'
    'sub87776'
    'sub88306'
    'sub88947'
    'sub89088'
    'sub89238'
    'sub89592'
    'sub89742'
    'sub89941'
    'sub91145'
    'sub91399'
    'sub91952'
    'sub92430'
    'sub92490'
    'sub92544'
    'sub92602'
    'sub92799'
    'sub92859'
    'sub93689'
    'sub93856'
    'sub94536'
    'sub95575'
    'sub95755'
    'sub96163'
    'sub97442'
    'sub98353'
    'sub98617'
    
    };

CambridgeSubjects={
    
'sub00156'
'sub00294'
'sub01361'
'sub02591'
'sub02953'
'sub04187'
'sub04270'
'sub04491'
'sub04665'
'sub05306'
'sub05453'
'sub06037'
'sub06272'
'sub06987'
'sub07413'
'sub07798'
'sub07902'
'sub08204'
'sub08588'
'sub08723'
'sub08947'
'sub09015'
'sub09397'
'sub09633'
'sub10268'
'sub10619'
'sub11388'
'sub12346'
'sub13093'
'sub13187'
'sub13216'
'sub13902'
'sub14183'
'sub14194'
'sub14278'
'sub15172'
'sub15258'
'sub15432'
'sub15905'
'sub16122'
'sub16390'
'sub16846'
'sub17584'
'sub17737'
'sub17772'
'sub18295'
'sub18449'
'sub19717'
'sub20389'
'sub20543'
'sub20563'
'sub21755'
'sub23780'
'sub23869'
'sub24670'
'sub24757'
'sub25044'
'sub25058'
'sub25099'
'sub26348'
'sub27065'
'sub27230'
'sub27613'
'sub27796'
'sub29044'
'sub29425'
'sub29800'
'sub31522'
'sub34586'
'sub34741'
'sub35430'
'sub35512'
'sub37374'
'sub39053'
'sub39065'
'sub39142'
'sub39737'
'sub40635'
'sub41567'
'sub41773'
'sub41814'
'sub42146'
'sub42253'
'sub43304'
'sub43358'
'sub45344'
'sub45354'
'sub45604'
'sub47162'
'sub47231'
'sub47278'
'sub47498'
'sub49259'
'sub49998'
'sub50272'
'sub50454'
'sub50953'
'sub51050'
'sub51172'
'sub51512'
'sub51671'
'sub52036'
'sub52300'
'sub52442'
'sub53059'
'sub53107'
'sub53193'
'sub53296'
'sub53615'
'sub54846'
'sub55114'
'sub55660'
'sub55874'
'sub57221'
'sub58360'
'sub58470'
'sub58682'
'sub58874'
'sub59434'
'sub59729'
'sub60578'
'sub60797'
'sub61185'
'sub61209'
'sub61436'
'sub61753'
'sub62383'
'sub62424'
'sub62732'
'sub62908'
'sub63412'
'sub63661'
'sub64308'
'sub64985'
'sub65373'
'sub65682'
'sub66351'
'sub67117'
'sub68101'
'sub68425'
'sub69287'
'sub69315'
'sub69397'
'sub71849'
'sub72068'
'sub73317'
'sub73399'
'sub73477'
'sub76631'
'sub76745'
'sub77337'
'sub77435'
'sub77598'
'sub77989'
'sub78547'
'sub78552'
'sub78614'
'sub80557'
'sub81289'
'sub81524'
'sub81562'
'sub82113'
'sub82213'
'sub82435'
'sub83409'
'sub83683'
'sub84064'
'sub84256'
'sub84504'
'sub84845'
'sub86115'
'sub86637'
'sub87846'
'sub88445'
'sub88464'
'sub88853'
'sub89107'
'sub89435'
'sub89894'
'sub90059'
'sub90674'
'sub90681'
'sub90699'
'sub92288'
'sub92393'
'sub92440'
'sub93269'
'sub93488'
'sub93609'
'sub94304'
'sub95187'
'sub95644'
'sub95959'
'sub98528'
'sub98624'
'sub99085'
'sub99330'
'sub99462'

};

OuluSubjects = {
    
'sub01077'
'sub01241'
'sub01261'
'sub01679'
'sub02036'
'sub05081'
'sub06307'
'sub07552'
'sub07876'
'sub07946'
'sub10958'
'sub12060'
'sub12126'
'sub12152'
'sub12379'
'sub14473'
'sub14725'
'sub15128'
'sub15422'
'sub15497'
'sub16378'
'sub18356'
'sub19159'
'sub19971'
'sub20495'
'sub20926'
'sub21499'
'sub21502'
'sub22180'
'sub23392'
'sub24781'
'sub25331'
'sub26554'
'sub27274'
'sub27392'
'sub29793'
'sub31444'
'sub32052'
'sub32596'
'sub33176'
'sub35020'
'sub35232'
'sub35967'
'sub39346'
'sub39460'
'sub40619'
'sub41433'
'sub41724'
'sub41731'
'sub42178'
'sub43055'
'sub43803'
'sub45566'
'sub46973'
'sub47094'
'sub49227'
'sub50637'
'sub51387'
'sub57150'
'sub58867'
'sub62124'
'sub63516'
'sub65041'
'sub65461'
'sub66467'
'sub68752'
'sub69925'
'sub72000'
'sub72795'
'sub73221'
'sub73709'
'sub73853'
'sub74276'
'sub74941'
'sub75293'
'sub75361'
'sub75620'
'sub76935'
'sub77629'
'sub78282'
'sub78327'
'sub78648'
'sub79784'
'sub84631'
'sub85532'
'sub86362'
'sub86410'
'sub86559'
'sub89213'
'sub90623'
'sub91105'
'sub91222'
'sub91232'
'sub94314'
'sub95854'
'sub96080'
'sub96197'
'sub98146'
'sub98207'
'sub98439'
'sub98661'
'sub98739'
'sub99718'

};

for subject = 1:103
    
    %subjectString = BeijingSubjects{subject};
    %subjectString = CambridgeSubjects{subject};
    subjectString = OuluSubjects{subject};
    
    fid = fopen(['/home/andek/Research_projects/RandomGroupAnalyses/' study '_randomevents/differenceEventsstim1_' subjectString '.txt'],'w');    
    for event = 1:numEvents
        fprintf(fid, ' %i  %i  1 \n ', allRandomOnsets1(subject,event), allRandomDurations1(subject,event));
    end
    fprintf(fid,' \n ');        
    fclose(fid);
    
    fid = fopen(['/home/andek/Research_projects/RandomGroupAnalyses/' study '_randomevents/differenceEventsstim2_' subjectString '.txt'],'w');    
    for event = 1:numEvents
        fprintf(fid, ' %i  %i  1 \n', allRandomOnsets2(subject,event), allRandomDurations2(subject,event));
    end
    fprintf(fid,' \n ');        
    fclose(fid);
    
end

