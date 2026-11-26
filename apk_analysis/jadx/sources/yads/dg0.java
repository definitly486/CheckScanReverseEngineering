package yads;

import defpackage.it9;
import defpackage.jt9;
import defpackage.kv2;
import defpackage.up7;
import defpackage.y70;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class dg0 {
    public static final cg0 Companion = new cg0();
    public static final defpackage.cl4[] h;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final List f;
    public final List g;

    static {
        defpackage.po4 po4Var = defpackage.po4.PUBLICATION;
        h = new defpackage.cl4[]{null, null, null, null, defpackage.nm4.a(po4Var, new it9()), defpackage.nm4.a(po4Var, new jt9(0)), defpackage.nm4.a(po4Var, new y70(2))};
    }

    public dg0(int i, String str, String str2, String str3, String str4, List list, List list2, List list3) {
        if (64 != (i & 64)) {
            defpackage.r96.f(bg0.b, i, 64);
            throw null;
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = str2;
        }
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
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = list;
        }
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = list2;
        }
        this.g = list3;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(oe0.a);
    }

    public static final /* synthetic */ defpackage.df4 b() {
        return new defpackage.mr(md0.a);
    }

    public static final /* synthetic */ defpackage.df4 c() {
        return new defpackage.mr(yf0.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dg0)) {
            return false;
        }
        dg0 dg0Var = (dg0) obj;
        return defpackage.aa4.e(this.a, dg0Var.a) && defpackage.aa4.e(this.b, dg0Var.b) && defpackage.aa4.e(this.c, dg0Var.c) && defpackage.aa4.e(this.d, dg0Var.d) && defpackage.aa4.e(this.e, dg0Var.e) && defpackage.aa4.e(this.f, dg0Var.f) && defpackage.aa4.e(this.g, dg0Var.g);
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
        List list = this.e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f;
        return this.g.hashCode() + ((iHashCode5 + (list2 != null ? list2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        List list = this.e;
        List list2 = this.f;
        List list3 = this.g;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelRemoteData(pageId=", str, ", latestSdkVersion=", str2, ", appAdsTxtUrl=");
        kv2.c(sbD, str3, ", appStatus=", str4, ", alerts=");
        sbD.append(list);
        sbD.append(", adUnits=");
        sbD.append(list2);
        sbD.append(", mediationNetworks=");
        return defpackage.bg.e(")", list3, sbD);
    }
}
