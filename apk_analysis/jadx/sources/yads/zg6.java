package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zg6 {
    public final String a;
    public final int b;

    public zg6(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zg6)) {
            return false;
        }
        zg6 zg6Var = (zg6) obj;
        return defpackage.aa4.e(this.a, zg6Var.a) && this.b == zg6Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.hg.d(this.b, "ViewSizeKey(adUnitId=", this.a, ", screenOrientation=", ")");
    }
}
