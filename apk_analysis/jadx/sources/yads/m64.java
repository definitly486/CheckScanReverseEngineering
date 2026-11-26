package yads;

import defpackage.up7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class m64 {
    public static final i64 Companion = new i64();
    public static final defpackage.cl4[] e = {null, null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.kr2(4))};
    public final String a;
    public final String b;
    public final String c;
    public final List d;

    public m64(int i, String str, String str2, String str3, List list) {
        if (15 != (i & 15)) {
            defpackage.r96.f(h64.b, i, 15);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(j64.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m64)) {
            return false;
        }
        m64 m64Var = (m64) obj;
        return defpackage.aa4.e(this.a, m64Var.a) && defpackage.aa4.e(this.b, m64Var.b) && defpackage.aa4.e(this.c, m64Var.c) && defpackage.aa4.e(this.d, m64Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return this.d.hashCode() + ((iA + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        List list = this.d;
        StringBuilder sbD = defpackage.ad2.d("MediationNetworkData(name=", str, ", id=", str2, ", version=");
        sbD.append(str3);
        sbD.append(", adapters=");
        sbD.append(list);
        sbD.append(")");
        return sbD.toString();
    }

    public m64(String str, String str2, String str3, ArrayList arrayList) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
    }
}
