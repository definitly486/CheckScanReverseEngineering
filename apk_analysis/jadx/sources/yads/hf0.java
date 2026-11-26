package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hf0 extends mf0 {
    public final String b;

    public hf0(String str) {
        super("Ad Units");
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hf0) && defpackage.aa4.e(this.b, ((hf0) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("AdUnit(unitId=", this.b, ")");
    }
}
