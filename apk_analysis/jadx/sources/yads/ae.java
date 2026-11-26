package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ae {
    public final kd a;

    public ae(kd kdVar) {
        this.a = kdVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ae) && defpackage.aa4.e(this.a, ((ae) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Success(advertisingInfoHolder=" + this.a + ")";
    }
}
