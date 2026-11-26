package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class j70 extends l70 {
    public final Object a;

    public j70(Object obj) {
        this.a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j70) && defpackage.aa4.e(this.a, ((j70) obj).a);
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return defpackage.ch.c(this.a, "Failure(error=", ")");
    }
}
