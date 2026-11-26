package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ko8 {

    @bq7("url")
    private final String a;

    @bq7("refresh")
    private final boolean b;

    public ko8(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ko8)) {
            return false;
        }
        ko8 ko8Var = (ko8) obj;
        return aa4.e(this.a, ko8Var.a) && this.b == ko8Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        return Boolean.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "TaskSimpleSubtaskResultResponse(url=" + this.a + ", refresh=" + this.b + ")";
    }
}
