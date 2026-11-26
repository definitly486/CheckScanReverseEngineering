package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jp3 {

    @bq7("isNeeded")
    private final boolean a;

    public jp3(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jp3) && this.a == ((jp3) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("GeoNeedResponse(isNeeded=", ")", this.a);
    }
}
