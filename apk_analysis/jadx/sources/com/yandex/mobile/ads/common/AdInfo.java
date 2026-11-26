package com.yandex.mobile.ads.common;

import defpackage.aa4;
import defpackage.ad2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class AdInfo {
    private final String a;
    private final String b;
    private final String c;
    private final List d;

    public AdInfo(String str, String str2, String str3, List<Creative> list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AdInfo.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        AdInfo adInfo = (AdInfo) obj;
        return aa4.e(this.a, adInfo.a) && aa4.e(this.b, adInfo.b) && aa4.e(this.c, adInfo.c) && aa4.e(this.d, adInfo.d);
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        List list = this.d;
        StringBuilder sbD = ad2.d("AdInfo(adUnitId='", str, "', extraData=", str2, ", partnerText=");
        sbD.append(str3);
        sbD.append(", creatives=");
        sbD.append(list);
        sbD.append(")");
        return sbD.toString();
    }
}
