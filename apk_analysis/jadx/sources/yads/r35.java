package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class r35 extends u35 {
    public final float a;

    public r35(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r35) && Float.compare(this.a, ((r35) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Fixed(value=" + this.a + ")";
    }
}
