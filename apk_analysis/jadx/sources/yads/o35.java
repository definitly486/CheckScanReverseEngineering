package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o35 extends p35 {
    public final float a;

    public o35(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o35) && Float.compare(this.a, ((o35) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Relative(value=" + this.a + ")";
    }
}
