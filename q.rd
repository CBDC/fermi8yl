<resource schema="fermilat4">
  <meta name="title"> Pre 4th Fermi-LAT catalog</meta>

  <meta name="creationDate">2018-01-01T01:02:03</meta>

  <meta name="description">Preliminary 4th Fermi-LAT catalog</meta>

  <meta name="subject">catalogs</meta>
  <meta name="subject">photometry</meta>
  <meta name="subject">high energy</meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex"
    primary="Source_Name">
    <index columns="RAJ2000,DEJ2000"/>
 <!-- 
    <column>
      <name>ID</name>
      <type>text</type>
      <ucd>meta.id;meta.main</ucd>
    </column>
-->
    <column>
      <name>Source_Name</name>
      <type>text</type>
      <ucd>meta.id;meta.main</ucd>
    </column>
    <column>
      <name>RAJ2000</name>
      <type>real</type>
      <ucd>pos.eq.ra;meta.main</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>DEJ2000</name>
      <type>real</type>
      <ucd>pos.eq.dec;meta.main</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>GLON</name>
      <type>real</type>
      <ucd>pos.galactic.lon</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>GLAT</name>
      <type>real</type>
      <ucd>pos.galactic.lat</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>Conf_95_SemiMajor</name>
      <type>real</type>
      <ucd>pos;stat.error</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>Conf_95_SemiMinor</name>
      <type>real</type>
      <ucd>pos;stat.error</ucd>
      <unit>deg</unit>
    </column>
    <column>
      <name>Conf_95_PosAng</name>
      <type>real</type>
      <unit>deg</unit>
    </column>
    <column>
      <name>ROI_num</name>
      <type>integer</type>
    </column>
    <column>
      <name>Extended_Source_Name</name>
      <type>text</type>
    </column>
    <column>
      <name>Signif_Avg</name>
      <type>real</type>
    </column>
    <column>
      <name>Pivot_Energy</name>
      <type>real</type>
      <ucd>em.energy</ucd>
      <unit>MeV</unit>
    </column>
    <column>
      <name>Flux_Density</name>
      <type>real</type>
      <ucd>phot.flux.density</ucd>
      <unit>ph/(cm2 s MeV)</unit>
    </column>
    <column>
      <name>Unc_Flux_Density</name>
      <type>real</type>
      <ucd>stat.error;phot.flux.density</ucd>
      <unit>ph/(cm2 s MeV)</unit>
    </column>
    <column>
      <name>Flux1000</name>
      <type>real</type>
      <ucd>phot.count;em.gamma</ucd>
      <unit>ph/(cm2 s)</unit>
    </column>
    <column>
      <name>Unc_Flux1000</name>
      <type>real</type>
      <ucd>stat.error;phot.flux.density;em.gamma</ucd>
      <unit>ph/(cm2 s)</unit>
    </column>
    <column>
      <name>Energy_Flux100</name>
      <type>real</type>
      <ucd>phot.flux</ucd>
      <unit>erg/(cm2 s)</unit>
    </column>
    <column>
      <name>Unc_Energy_Flux100</name>
      <type>real</type>
      <ucd>stat.error;phot.flux</ucd>
      <unit>erg/(cm2 s)</unit>
    </column>
    <column>
      <name>SpectrumType</name>
      <type>text</type>
    </column>
    <column>
      <name>PL_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_PL_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>LP_SigCurv</name>
      <type>real</type>
    </column>
    <column>
      <name>LP_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_LP_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>LP_beta</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_LP_beta</name>
      <type>real</type>
    </column>
    <column>
      <name>PLEC_SigCurv</name>
      <type>real</type>
    </column>
    <column>
      <name>PLEC_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_PLEC_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>PLEC_Expfactor</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_PLEC_Expfactor</name>
      <type>real</type>
    </column>
    <column>
      <name>PLEC_Exp_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>Unc_PLEC_Exp_Index</name>
      <type>real</type>
    </column>
    <column>
      <name>Npred</name>
      <type>real</type>
    </column>
    <column>
      <name>ASSOC_GAM</name>
      <type>text</type>
    </column>
    <column>
      <name>TEVCAT_FLAG</name>
      <type>text</type>
    </column>
    <column>
      <name>ASSOC_TEV</name>
      <type>text</type>
    </column>
    <column>
      <name>CLASS</name>
      <type>text</type>
    </column>
    <column>
      <name>ASSOC1</name>
      <type>text</type>
    </column>
    <column>
      <name>ASSOC2</name>
      <type>text</type>
    </column>
    <column>
      <name>ASSOC_PROB_BAY</name>
      <type>real</type>
    </column>
  </table>
  <data id="import">
    <sources>fermi.fits</sources>
    <fitsTableGrammar/>
    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>
  <service id="cone" allowed="scs.xml,form">
    <meta name="title">Fermi-Lat 4pre</meta>
    <meta name="shortName">4th Fermi cone</meta>
    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>
    <publish render="form" sets="local"/>
  </service>
</resource>

