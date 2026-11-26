package com.yandex.mobile.ads.common;

import defpackage.aa4;
import defpackage.ad2;
import defpackage.dg;

/* JADX INFO: loaded from: classes6.dex */
public final class Creative {
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    public Creative(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Creative.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        Creative creative = (Creative) obj;
        return aa4.e(this.a, creative.a) && aa4.e(this.b, creative.b) && aa4.e(this.c, creative.c) && aa4.e(this.d, creative.d);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        String str = this.a;
        String str2 = this.b;
        return dg.c(ad2.d("Creative(creativeId=", str, ", campaignId=", str2, ", placeId="), this.c, ", offerId=", this.d, ")");
    }
}
