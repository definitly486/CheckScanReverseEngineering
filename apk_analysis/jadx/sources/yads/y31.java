package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class y31 extends a41 {
    public final float a;

    public y31(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y31) && Float.compare(this.a, ((y31) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Fixed(valuePx=" + this.a + ")";
    }
}
