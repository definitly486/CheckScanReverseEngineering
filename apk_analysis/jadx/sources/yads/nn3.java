package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nn3 {
    public final String a;
    public final String b;
    public final int c;
    public final int d;

    public nn3(int i, int i2, String str, String str2) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nn3)) {
            return false;
        }
        nn3 nn3Var = (nn3) obj;
        return defpackage.aa4.e(this.a, nn3Var.a) && defpackage.aa4.e(this.b, nn3Var.b) && this.c == nn3Var.c && this.d == nn3Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + i96.a(this.c, l4.a(this.a.hashCode() * 31, 31, this.b), 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        int i = this.c;
        int i2 = this.d;
        StringBuilder sbD = defpackage.ad2.d("InteractiveCreativeFile(html=", str, ", mimeType=", str2, ", height=");
        sbD.append(i);
        sbD.append(", width=");
        sbD.append(i2);
        sbD.append(")");
        return sbD.toString();
    }
}
