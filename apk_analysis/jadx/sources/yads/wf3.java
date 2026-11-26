package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wf3 extends yf3 {
    public final float a;

    public wf3(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wf3) && Float.compare(this.a, ((wf3) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Circle(radius=" + this.a + ")";
    }
}
