package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class p80 {
    public final float a;
    public final boolean b;

    public p80(float f, boolean z) {
        this.a = f;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p80)) {
            return false;
        }
        p80 p80Var = (p80) obj;
        return Float.compare(this.a, p80Var.a) == 0 && this.b == p80Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "CoreNativeAdMedia(aspectRatio=" + this.a + ", hasVideo=" + this.b + ")";
    }
}
