package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pi0 implements u0 {
    public final String a;
    public final String b;
    public final List c;
    public final List d;

    public pi0(String str, String str2, List list, List list2) {
        this.a = str;
        this.b = str2;
        this.c = list;
        this.d = list2;
    }

    @Override // yads.u0
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pi0)) {
            return false;
        }
        pi0 pi0Var = (pi0) obj;
        return defpackage.aa4.e(this.a, pi0Var.a) && defpackage.aa4.e(this.b, pi0Var.b) && defpackage.aa4.e(this.c, pi0Var.c) && defpackage.aa4.e(this.d, pi0Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(this.a.hashCode() * 31, 31, this.b);
        List list = this.c;
        return this.d.hashCode() + ((iA + (list == null ? 0 : list.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        List list = this.c;
        List list2 = this.d;
        StringBuilder sbD = defpackage.ad2.d("DeeplinkAction(actionType=", str, ", fallbackUrl=", str2, ", fallbackTrackingUrls=");
        sbD.append(list);
        sbD.append(", preferredPackages=");
        sbD.append(list2);
        sbD.append(")");
        return sbD.toString();
    }
}
