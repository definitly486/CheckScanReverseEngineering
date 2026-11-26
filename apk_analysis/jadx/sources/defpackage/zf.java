package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zf {

    @bq7("name")
    private final String a;

    @bq7("openInChrome")
    private final boolean b;

    public zf(String str, boolean z) {
        str.getClass();
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
        if (!(obj instanceof zf)) {
            return false;
        }
        zf zfVar = (zf) obj;
        return aa4.e(this.a, zfVar.a) && this.b == zfVar.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AndroidApp(name=" + this.a + ", openInChrome=" + this.b + ")";
    }
}
