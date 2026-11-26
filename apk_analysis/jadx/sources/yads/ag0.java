package yads;

import defpackage.ca8;
import defpackage.fb7;
import defpackage.kv2;
import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ag0 {
    public static final zf0 Companion = new zf0();
    public static final defpackage.cl4[] g = {null, null, null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new fb7(1)), null};
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final String f;

    public ag0(int i, String str, String str2, String str3, String str4, List list, String str5) {
        if (18 != (i & 18)) {
            defpackage.r96.f(yf0.b, i, 18);
            throw null;
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        this.b = str2;
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = str3;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.e = list;
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = str5;
        }
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(ca8.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ag0)) {
            return false;
        }
        ag0 ag0Var = (ag0) obj;
        return defpackage.aa4.e(this.a, ag0Var.a) && defpackage.aa4.e(this.b, ag0Var.b) && defpackage.aa4.e(this.c, ag0Var.c) && defpackage.aa4.e(this.d, ag0Var.d) && defpackage.aa4.e(this.e, ag0Var.e) && defpackage.aa4.e(this.f, ag0Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        int iA = l4.a((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
        String str2 = this.c;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iB = defpackage.e2.b(this.e, (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31);
        String str4 = this.f;
        return iB + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        List list = this.e;
        String str5 = this.f;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelMediationNetwork(id=", str, ", name=", str2, ", logoUrl=");
        kv2.c(sbD, str3, ", adapterStatus=", str4, ", adapters=");
        sbD.append(list);
        sbD.append(", latestAdapterVersion=");
        sbD.append(str5);
        sbD.append(")");
        return sbD.toString();
    }
}
