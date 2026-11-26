package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class xp6 {
    public final String a;

    public xp6(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xp6) && aa4.e(this.a, ((xp6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("PromocodeBadge(sum=", this.a, ")");
    }
}
