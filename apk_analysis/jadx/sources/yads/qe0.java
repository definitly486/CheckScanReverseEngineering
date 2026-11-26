package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class qe0 {
    public static final pe0 Companion = new pe0();
    public final String a;
    public final String b;
    public final String c;

    public qe0(int i, String str, String str2, String str3) {
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
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qe0)) {
            return false;
        }
        qe0 qe0Var = (qe0) obj;
        return defpackage.aa4.e(this.a, qe0Var.a) && defpackage.aa4.e(this.b, qe0Var.b) && defpackage.aa4.e(this.c, qe0Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.me0.d(defpackage.ad2.d("DebugPanelAlert(title=", str, ", message=", str2, ", type="), this.c, ")");
    }
}
