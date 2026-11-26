package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class is9 {
    public final String a;

    public final boolean equals(Object obj) {
        if (obj instanceof is9) {
            return aa4.e(this.a, ((is9) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return lt0.d(')', "VersionName(value=", this.a);
    }
}
