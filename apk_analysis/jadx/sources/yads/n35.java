package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n35 extends p35 {
    public final float a;

    public n35(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n35) && Float.compare(this.a, ((n35) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Fixed(value=" + this.a + ")";
    }
}
