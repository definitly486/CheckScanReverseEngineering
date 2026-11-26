package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class km8 {

    @bq7("url")
    private final String a;

    @bq7("refresh")
    private final boolean b;

    public km8(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof km8)) {
            return false;
        }
        km8 km8Var = (km8) obj;
        return aa4.e(this.a, km8Var.a) && this.b == km8Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        return Boolean.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "TaskCheckboxSubtaskResultResponse(url=" + this.a + ", refresh=" + this.b + ")";
    }
}
