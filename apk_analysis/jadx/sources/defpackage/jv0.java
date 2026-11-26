package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jv0 {

    @bq7("mainButton")
    private final sy4 a;

    public jv0(sy4 sy4Var) {
        sy4Var.getClass();
        this.a = sy4Var;
    }

    public final sy4 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jv0) && aa4.e(this.a, ((jv0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ButtonBlockResponse(mainButton=" + this.a + ")";
    }
}
