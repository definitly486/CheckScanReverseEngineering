package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class we0 {
    public static final ve0 Companion = new ve0();
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public we0(int i, String str, String str2, String str3, String str4) {
        if (15 != (i & 15)) {
            defpackage.r96.f(ue0.b, i, 15);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof we0)) {
            return false;
        }
        we0 we0Var = (we0) obj;
        return defpackage.aa4.e(this.a, we0Var.a) && defpackage.aa4.e(this.b, we0Var.b) && defpackage.aa4.e(this.c, we0Var.c) && defpackage.aa4.e(this.d, we0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.dg.c(defpackage.ad2.d("DebugPanelAppData(appId=", str, ", appVersion=", str2, ", system="), this.c, ", androidApiLevel=", this.d, ")");
    }

    public we0(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }
}
