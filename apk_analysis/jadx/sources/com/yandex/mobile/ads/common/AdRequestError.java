package com.yandex.mobile.ads.common;

import defpackage.aa4;
import defpackage.me0;
import defpackage.ng;

/* JADX INFO: loaded from: classes6.dex */
public final class AdRequestError {
    private final int a;
    private final String b;
    private final String c;

    public AdRequestError(int i, String str, String str2) {
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !AdRequestError.class.equals(obj.getClass())) {
            return false;
        }
        AdRequestError adRequestError = (AdRequestError) obj;
        if (this.a == adRequestError.a && aa4.e(this.c, adRequestError.c)) {
            return aa4.e(this.b, adRequestError.b);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((this.b.hashCode() * 31) + this.a) * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        if (str2 == null) {
            str2 = "";
        }
        return me0.d(ng.e(i, "AdRequestError (code: ", ", description: ", str, ", adUnitId: "), str2, ")");
    }
}
