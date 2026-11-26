package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class l64 {
    public static final k64 Companion = new k64();
    public final String a;
    public final String b;
    public final boolean c;

    public l64(int i, String str, String str2, boolean z) {
        if (7 != (i & 7)) {
            defpackage.r96.f(j64.b, i, 7);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l64)) {
            return false;
        }
        l64 l64Var = (l64) obj;
        return defpackage.aa4.e(this.a, l64Var.a) && defpackage.aa4.e(this.b, l64Var.b) && this.c == l64Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Boolean.hashCode(this.c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.dh.e(defpackage.ad2.d("MediationAdapterData(format=", str, ", version=", str2, ", isIntegrated="), this.c, ")");
    }

    public l64(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }
}
