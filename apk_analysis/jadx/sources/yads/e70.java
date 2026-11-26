package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e70 extends g70 {
    public final String a;
    public final Throwable b;

    public e70(String str, Throwable th) {
        this.a = str;
        this.b = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e70)) {
            return false;
        }
        e70 e70Var = (e70) obj;
        return defpackage.aa4.e(this.a, e70Var.a) && defpackage.aa4.e(this.b, e70Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "Failure(missingAssetName=" + this.a + ", exception=" + this.b + ")";
    }
}
