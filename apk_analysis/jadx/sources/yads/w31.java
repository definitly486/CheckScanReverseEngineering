package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class w31 extends x31 {
    public final float a;

    public w31(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w31) && Float.compare(this.a, ((w31) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Relative(value=" + this.a + ")";
    }
}
