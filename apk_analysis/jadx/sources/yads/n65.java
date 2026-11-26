package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n65 {
    public static final n65 b = new n65(false);
    public final boolean a;

    public n65(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && n65.class == obj.getClass() && this.a == ((n65) obj).a;
    }

    public final int hashCode() {
        return !this.a ? 1 : 0;
    }
}
