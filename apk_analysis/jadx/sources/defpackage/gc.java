package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gc {
    public final String a;
    public final String b;
    public final int c;
    public final boolean d;

    public gc(int i, String str, String str2, boolean z) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gc)) {
            return false;
        }
        gc gcVar = (gc) obj;
        return aa4.e(this.a, gcVar.a) && this.b.equals(gcVar.b) && this.c == gcVar.c && this.d == gcVar.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + ej0.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("AlfaChequesProgress(title=", this.a, ", progressText=", this.b, ", progress=");
        sbD.append(this.c);
        sbD.append(", complete=");
        sbD.append(this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
