package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s6 {
    public final String a;

    public s6(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s6) && aa4.e(this.a, ((s6) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("ActivatedPromocode(promocode=", this.a, ")");
    }
}
