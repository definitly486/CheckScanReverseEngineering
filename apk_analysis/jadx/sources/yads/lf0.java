package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lf0 extends mf0 {
    public final String b;

    public lf0(String str) {
        super(str);
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lf0) && defpackage.aa4.e(this.b, ((lf0) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("MediationNetwork(network=", this.b, ")");
    }
}
