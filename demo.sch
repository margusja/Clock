<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <port polarity="Input" name="XLXN_3" />
        <port polarity="Input" name="XLXN_4" />
        <port polarity="Input" name="XLXN_5" />
        <port polarity="Input" name="XLXN_6" />
        <port polarity="Input" name="XLXN_7" />
        <port polarity="Input" name="XLXN_8" />
        <port polarity="Input" name="XLXN_9" />
        <port polarity="Input" name="XLXN_10" />
        <port polarity="Input" name="XLXN_11" />
        <port polarity="Output" name="XLXN_12" />
        <port polarity="Output" name="XLXN_13" />
        <port polarity="Output" name="XLXN_14" />
        <port polarity="Output" name="XLXN_15" />
        <port polarity="Output" name="XLXN_16" />
        <port polarity="Output" name="XLXN_17" />
        <blockdef name="comp2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="add4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="112" y1="-832" y2="-804" x1="112" />
            <line x2="112" y1="-832" y2="-832" x1="64" />
            <line x2="64" y1="-832" y2="-832" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-352" y2="-352" x1="448" />
            <line x2="384" y1="-416" y2="-416" x1="448" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="384" y1="-544" y2="-544" x1="448" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-736" y2="-816" x1="384" />
            <line x2="384" y1="-160" y2="-736" x1="384" />
            <line x2="384" y1="-80" y2="-160" x1="64" />
            <line x2="64" y1="-416" y2="-80" x1="64" />
            <line x2="64" y1="-448" y2="-416" x1="144" />
            <line x2="144" y1="-480" y2="-448" x1="64" />
            <line x2="64" y1="-816" y2="-480" x1="64" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <block symbolname="comp2" name="XLXI_4">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="B0" />
            <blockpin name="B1" />
            <blockpin signalname="XLXN_2" name="EQ" />
        </block>
        <block symbolname="d2_4e" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="A0" />
            <blockpin name="A1" />
            <blockpin name="E" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
        </block>
        <block symbolname="add4" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="A0" />
            <blockpin signalname="XLXN_4" name="A1" />
            <blockpin signalname="XLXN_3" name="A2" />
            <blockpin signalname="XLXN_7" name="A3" />
            <blockpin signalname="XLXN_8" name="B0" />
            <blockpin signalname="XLXN_9" name="B1" />
            <blockpin signalname="XLXN_10" name="B2" />
            <blockpin signalname="XLXN_11" name="B3" />
            <blockpin signalname="XLXN_6" name="CI" />
            <blockpin signalname="XLXN_17" name="CO" />
            <blockpin signalname="XLXN_16" name="OFL" />
            <blockpin signalname="XLXN_12" name="S0" />
            <blockpin signalname="XLXN_13" name="S1" />
            <blockpin signalname="XLXN_14" name="S2" />
            <blockpin signalname="XLXN_15" name="S3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="3520">
        <instance x="432" y="848" name="XLXI_4" orien="R0" />
        <instance x="1184" y="832" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="992" y1="624" y2="624" x1="816" />
            <wire x2="992" y1="512" y2="624" x1="992" />
            <wire x2="1184" y1="512" y2="512" x1="992" />
        </branch>
        <instance x="592" y="2032" name="XLXI_6" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="592" y1="1456" y2="1456" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1456" name="XLXN_3" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="592" y1="1392" y2="1392" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1392" name="XLXN_4" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="592" y1="1328" y2="1328" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1328" name="XLXN_5" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="592" y1="1200" y2="1200" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1200" name="XLXN_6" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="592" y1="1520" y2="1520" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1520" name="XLXN_7" orien="R180" />
        <branch name="XLXN_8">
            <wire x2="592" y1="1648" y2="1648" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1648" name="XLXN_8" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="592" y1="1712" y2="1712" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1712" name="XLXN_9" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="592" y1="1776" y2="1776" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1776" name="XLXN_10" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="592" y1="1840" y2="1840" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1840" name="XLXN_11" orien="R180" />
        <branch name="XLXN_12">
            <wire x2="1072" y1="1488" y2="1488" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1488" name="XLXN_12" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1072" y1="1552" y2="1552" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1552" name="XLXN_13" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1072" y1="1616" y2="1616" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1616" name="XLXN_14" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1072" y1="1680" y2="1680" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1680" name="XLXN_15" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1072" y1="1904" y2="1904" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1904" name="XLXN_16" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1072" y1="1968" y2="1968" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1968" name="XLXN_17" orien="R0" />
    </sheet>
</drawing>