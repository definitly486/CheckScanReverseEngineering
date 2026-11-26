package yads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yb implements rp {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public final ArrayList e;
    public final boolean f;

    public yb(String str, String str2, String str3, boolean z, ArrayList arrayList, boolean z2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = arrayList;
        this.f = z2;
    }

    @Override // yads.u0
    public final String a() {
        return this.a;
    }

    @Override // yads.rp
    public final List b() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yb)) {
            return false;
        }
        yb ybVar = (yb) obj;
        return defpackage.aa4.e(this.a, ybVar.a) && defpackage.aa4.e(this.b, ybVar.b) && defpackage.aa4.e(this.c, ybVar.c) && this.d == ybVar.d && defpackage.aa4.e(this.e, ybVar.e) && this.f == ybVar.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + defpackage.tg.d(this.e, m7.a(l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        boolean z = this.d;
        ArrayList arrayList = this.e;
        boolean z2 = this.f;
        StringBuilder sbD = defpackage.ad2.d("AdtuneAction(actionType=", str, ", adtuneUrl=", str2, ", optOutUrl=");
        defpackage.ud.f(sbD, str3, ", darkTheme=", z, ", trackingUrls=");
        sbD.append(arrayList);
        sbD.append(", showInline=");
        sbD.append(z2);
        sbD.append(")");
        return sbD.toString();
    }
}
