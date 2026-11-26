package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class wda {
    public final String a;

    public final boolean equals(Object obj) {
        if (obj instanceof wda) {
            return this.a.equals(((wda) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return lt0.d(')', "MetricsEventUuid(value=", this.a);
    }
}
