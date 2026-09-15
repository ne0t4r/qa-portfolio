//package org.it.v.kurze.bankoveUcty;
//
//public class BeznyUcet extends BankovyUcet {
//
//    private static final double POPLATOK_ZA_VEDENIE_UCTU = 2.0;
//    private static final double POPLATOK_ZA_TRANSAKCIU_NAVYSE = 0.05;
//    private static final int POCET_TRANSAKCII_ZDARMA = 3;
//
//    private int pocetTransakcii;
//
//    public BeznyUcet() {
//        super(0);
//    }
//
//    public BeznyUcet(double pociatocnyZostatok) {
//        super(pociatocnyZostatok);
//    }
//
//    public void vloz(double ciastka) {
//        pocetTransakcii++;
//        super.vloz(ciastka);
//    }
//
//    public void vyber(double ciastka) {
//        pocetTransakcii++;
//        super.vyber(ciastka);
//    }
//
//    public void zauctujPoplatky() {
//        double poplatky = POPLATOK_ZA_VEDENIE_UCTU;
//
//        if (pocetTransakcii > POCET_TRANSAKCII_ZDARMA) {
//            poplatky += (pocetTransakcii - POCET_TRANSAKCII_ZDARMA) * POPLATOK_ZA_TRANSAKCIU_NAVYSE;
//        }
//
//        super.vyber(poplatky);
//        pocetTransakcii = 0;
//    }
//}
