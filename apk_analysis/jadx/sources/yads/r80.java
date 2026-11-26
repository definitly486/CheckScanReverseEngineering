package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class r80 {
    public final String a;
    public final float b;

    public r80(String str) {
        this.a = str;
        this.b = 0.12f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r80)) {
            return false;
        }
        r80 r80Var = (r80) obj;
        return defpackage.aa4.e(this.a, r80Var.a) && Float.compare(this.b, r80Var.b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CoreNativeAdWarning(value=" + this.a + ", minimumRequiredArea=" + this.b + ")";
    }

    public r80(String str, float f) {
        this.a = str;
        this.b = f;
    }
}
