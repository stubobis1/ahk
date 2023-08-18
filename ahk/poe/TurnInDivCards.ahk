global minRandWait := 50
global maxRandWait := 100


randSleep()
{
	Sleep, % rand(minRandWait,maxRandWait)
}

mouseSpeed()
{
   
   return rand(4,15)
}

rand(min, max)
{
   random, ran, %min%, %max%
   return ran
}


Loop, 1
{

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Path of Exile ahk_class POEWindowClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

randSleep()

Send, {Blind}{Ctrl Down}

randSleep()

MouseClick, L, 1724, 828

randSleep()

MouseClick, L, 824, 987

randSleep()

MouseClick, L, 830, 830

randSleep()

MouseClick, L, 1736, 885

randSleep()

MouseClick, L, 824, 978

randSleep()

MouseClick, L, 834, 824

randSleep()

MouseClick, L, 1729, 957

randSleep()

MouseClick, L, 824, 983

randSleep()

MouseClick, L, 823, 809

randSleep()

MouseClick, L, 1738, 1023

randSleep()

MouseClick, L, 827, 997

randSleep()

MouseClick, L, 839, 826

randSleep()

MouseClick, L, 1752, 1117

randSleep()

MouseClick, L, 853, 988

randSleep()

MouseClick, L, 814, 815

randSleep()

MouseClick, L, 1775, 822

randSleep()

MouseClick, L, 849, 981

randSleep()

MouseClick, L, 832, 809

randSleep()

MouseClick, L, 1786, 874

randSleep()

MouseClick, L, 854, 970

randSleep()

MouseClick, L, 821, 801

randSleep()

MouseClick, L, 1803, 961

randSleep()

MouseClick, L, 837, 1000

randSleep()

MouseClick, L, 832, 821

randSleep()

MouseClick, L, 1805, 1015

randSleep()

MouseClick, L, 870, 981

randSleep()

MouseClick, L, 859, 804

randSleep()

MouseClick, L, 1807, 1089

randSleep()

MouseClick, L, 822, 986

randSleep()

MouseClick, L, 808, 787

randSleep()

MouseClick, L, 1870, 803

randSleep()

MouseClick, L, 808, 976

randSleep()

MouseClick, L, 815, 791

randSleep()

MouseClick, L, 1859, 873

randSleep()

MouseClick, L, 800, 1000

randSleep()

MouseClick, L, 838, 768

randSleep()

MouseClick, L, 1855, 971

randSleep()

MouseClick, L, 849, 987

randSleep()

MouseClick, L, 838, 788

randSleep()

MouseClick, L, 1870, 1031

randSleep()

MouseClick, L, 867, 974

randSleep()

MouseClick, L, 840, 755

randSleep()

MouseClick, L, 1886, 1111

randSleep()

MouseClick, L, 835, 979

randSleep()

MouseClick, L, 822, 783

randSleep()

MouseClick, L, 1936, 817

randSleep()

MouseClick, L, 842, 972

randSleep()

MouseClick, L, 856, 808

randSleep()

MouseClick, L, 1949, 909

randSleep()

MouseClick, L, 883, 988

randSleep()

MouseClick, L, 849, 781

randSleep()

MouseClick, L, 1954, 939

randSleep()

MouseClick, L, 833, 971

randSleep()

MouseClick, L, 836, 781

randSleep()

MouseClick, L, 1936, 1026

randSleep()

MouseClick, L, 809, 968

randSleep()

MouseClick, L, 828, 790

randSleep()

MouseClick, L, 1949, 1091

randSleep()

MouseClick, L, 828, 985

randSleep()

MouseClick, L, 859, 799

randSleep()

MouseClick, L, 2007, 834

randSleep()

MouseClick, L, 827, 975

randSleep()

MouseClick, L, 841, 786

randSleep()

MouseClick, L, 2011, 896

randSleep()

MouseClick, L, 860, 1006

randSleep()

MouseClick, L, 833, 807

randSleep()

MouseClick, L, 1997, 948

randSleep()

MouseClick, L, 847, 962

randSleep()

MouseClick, L, 836, 777

randSleep()

MouseClick, L, 2012, 1006

randSleep()

MouseClick, L, 790, 971

randSleep()

MouseClick, L, 847, 808

randSleep()

MouseClick, L, 2004, 1093

randSleep()

MouseClick, L, 817, 975

randSleep()

MouseClick, L, 829, 792

randSleep()

MouseClick, L, 2095, 812

randSleep()

MouseClick, L, 831, 966

randSleep()

MouseClick, L, 835, 792

randSleep()

MouseClick, L, 2080, 887

randSleep()

MouseClick, L, 843, 980

randSleep()

MouseClick, L, 836, 790

randSleep()

MouseClick, L, 2087, 969

randSleep()

MouseClick, L, 821, 980

randSleep()

MouseClick, L, 848, 753

randSleep()

MouseClick, L, 2081, 1035

randSleep()

MouseClick, L, 814, 997

randSleep()

MouseClick, L, 874, 794

randSleep()

MouseClick, L, 2079, 1098

randSleep()

MouseClick, L, 886, 989

randSleep()

MouseClick, L, 874, 812

randSleep()

MouseClick, L, 2140, 815

randSleep()

MouseClick, L, 831, 989

randSleep()

MouseClick, L, 860, 805

randSleep()

MouseClick, L, 2143, 907

randSleep()

MouseClick, L, 851, 990

randSleep()

MouseClick, L, 851, 791

randSleep()

MouseClick, L, 2144, 961

randSleep()

MouseClick, L, 863, 985

randSleep()

MouseClick, L, 840, 802

randSleep()

MouseClick, L, 2146, 1018

randSleep()

MouseClick, L, 865, 989

randSleep()

MouseClick, L, 854, 784

randSleep()

MouseClick, L, 2131, 1084

randSleep()

MouseClick, L, 819, 983

randSleep()

MouseClick, L, 852, 803

randSleep()

MouseClick, L, 2195, 826

randSleep()

MouseClick, L, 837, 987

randSleep()

MouseClick, L, 812, 795

randSleep()

MouseClick, L, 2223, 886

randSleep()

MouseClick, L, 859, 977

randSleep()

MouseClick, L, 858, 777

randSleep()

MouseClick, L, 2195, 964

randSleep()

MouseClick, L, 806, 996

randSleep()

MouseClick, L, 818, 787

randSleep()

MouseClick, L, 2228, 1031

randSleep()

MouseClick, L, 851, 986

randSleep()

MouseClick, L, 835, 781

randSleep()

MouseClick, L, 2216, 1084

randSleep()

MouseClick, L, 875, 971

randSleep()

MouseClick, L, 832, 767

randSleep()

MouseClick, L, 2296, 808

randSleep()

MouseClick, L, 810, 971

randSleep()

MouseClick, L, 823, 803

randSleep()

MouseClick, L, 2284, 882

randSleep()

MouseClick, L, 869, 994

randSleep()

MouseClick, L, 848, 763

randSleep()

MouseClick, L, 2269, 962

randSleep()

MouseClick, L, 843, 985

randSleep()

MouseClick, L, 834, 782

randSleep()

MouseClick, L, 2282, 1035

randSleep()

MouseClick, L, 851, 1000

randSleep()

MouseClick, L, 851, 789

randSleep()

MouseClick, L, 2298, 1102

randSleep()

MouseClick, L, 889, 985

randSleep()

MouseClick, L, 857, 798

randSleep()

MouseClick, L, 2374, 814

randSleep()

MouseClick, L, 844, 972

randSleep()

MouseClick, L, 841, 800

randSleep()

MouseClick, L, 2372, 901

randSleep()

MouseClick, L, 839, 984

randSleep()

MouseClick, L, 842, 787

randSleep()

MouseClick, L, 2362, 976

randSleep()

MouseClick, L, 873, 984

randSleep()

MouseClick, L, 862, 782

randSleep()

MouseClick, L, 2367, 1040

randSleep()

MouseClick, L, 798, 985

randSleep()

MouseClick, L, 847, 804

randSleep()

MouseClick, L, 2352, 1089

randSleep()

MouseClick, L, 810, 978

randSleep()

MouseClick, L, 842, 822

randSleep()

MouseClick, L, 2445, 816

randSleep()

MouseClick, L, 848, 984

randSleep()

MouseClick, L, 844, 795

randSleep()

MouseClick, L, 2437, 899

randSleep()

MouseClick, L, 838, 976

randSleep()

MouseClick, L, 835, 790

randSleep()

MouseClick, L, 2432, 956

randSleep()

MouseClick, L, 870, 989

randSleep()

MouseClick, L, 852, 804

randSleep()

MouseClick, L, 2409, 1032

randSleep()

MouseClick, L, 830, 975

randSleep()

MouseClick, L, 833, 789

randSleep()

MouseClick, L, 2435, 1105

randSleep()

MouseClick, L, 856, 989

randSleep()

MouseClick, L, 840, 810

randSleep()

MouseClick, L, 2511, 818

randSleep()

MouseClick, L, 840, 981

randSleep()

MouseClick, L, 847, 805

randSleep()

MouseClick, L, 2511, 886

randSleep()

MouseClick, L, 832, 982

randSleep()

MouseClick, L, 835, 807

randSleep()

MouseClick, L, 2497, 950

randSleep()

MouseClick, L, 810, 990

randSleep()

MouseClick, L, 827, 804

randSleep()

MouseClick, L, 2493, 1025

randSleep()

MouseClick, L, 847, 989

randSleep()

MouseClick, L, 840, 834

randSleep()

MouseClick, L, 2507, 1084

randSleep()

MouseClick, L, 858, 987

randSleep()

MouseClick, L, 864, 760

randSleep()

Send, {Blind}{Ctrl Up}

randSleep()

}
