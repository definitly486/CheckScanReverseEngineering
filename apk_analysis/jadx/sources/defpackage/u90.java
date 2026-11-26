package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u90 {

    @bq7("android")
    private final String a;

    public /* synthetic */ u90(String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u90) && aa4.e(this.a, ((u90) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("BankInfoAppInfo(android=", this.a, ")");
    }

    public u90(String str) {
        str.getClass();
        this.a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u90() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
