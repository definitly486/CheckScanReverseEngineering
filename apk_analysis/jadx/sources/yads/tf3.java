package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class tf3 implements vf3 {
    public final float a;

    public tf3(float f) {
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tf3) && Float.compare(this.a, ((tf3) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "Default(spaceBetweenCenters=" + this.a + ")";
    }
}
