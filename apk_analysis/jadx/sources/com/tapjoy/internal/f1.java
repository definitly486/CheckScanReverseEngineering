package com.tapjoy.internal;

import com.tapjoy.TJDeviceNetwork;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.dg;
import defpackage.kv2;

/* JADX INFO: loaded from: classes4.dex */
public final class f1 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public f1() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        TJDeviceNetwork tJDeviceNetwork = TJDeviceNetwork.INSTANCE;
        this.a = tJDeviceNetwork.getCarrierName();
        this.b = tJDeviceNetwork.getCarrierNameSim();
        this.f = tJDeviceNetwork.getDeviceCountrySIM();
        this.c = tJDeviceNetwork.getCarrierCountryCode();
        this.d = tJDeviceNetwork.getMobileCountryCode();
        this.e = tJDeviceNetwork.getMobileNetworkCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f1)) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return aa4.e(this.a, f1Var.a) && aa4.e(this.b, f1Var.b) && aa4.e(this.c, f1Var.c) && aa4.e(this.d, f1Var.d) && aa4.e(this.e, f1Var.e) && aa4.e(this.f, f1Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        StringBuilder sbD = ad2.d("TJCarrierModel(carrierName=", str, ", carrierNameSim=", str2, ", carrierCountryCode=");
        kv2.c(sbD, str3, ", mobileCountryCode=", str4, ", mobileNetworkCode=");
        return dg.c(sbD, str5, ", countrySim=", str6, ")");
    }
}
