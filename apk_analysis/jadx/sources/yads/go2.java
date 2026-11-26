package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class go2 {
    public final boolean a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;

    public go2(boolean z, int i, int i2, String str, String str2) {
        this.a = z;
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = str2;
    }

    public final String a() {
        int i;
        int i2 = this.b;
        if (i2 <= 0 || (i = this.c) <= 0) {
            int i3 = this.c;
            if (i3 > 0) {
                return String.valueOf(i3);
            }
            return i2 > 0 ? String.valueOf(i2) : "";
        }
        return i2 + "/" + i;
    }

    public final String b() {
        if (this.b <= 0 || this.c <= 0) {
            return this.c > 0 ? this.e : this.d;
        }
        return defpackage.cg.d(this.d, "\n\n", this.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof go2)) {
            return false;
        }
        go2 go2Var = (go2) obj;
        return this.a == go2Var.a && this.b == go2Var.b && this.c == go2Var.c && defpackage.aa4.e(this.d, go2Var.d) && defpackage.aa4.e(this.e, go2Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + l4.a(i96.a(this.c, i96.a(this.b, Boolean.hashCode(this.a) * 31, 31), 31), 31, this.d);
    }

    public final String toString() {
        boolean z = this.a;
        int i = this.b;
        int i2 = this.c;
        String str = this.d;
        String str2 = this.e;
        StringBuilder sb = new StringBuilder("ErrorViewModel(showDetails=");
        sb.append(z);
        sb.append(", errorCount=");
        sb.append(i);
        sb.append(", warningCount=");
        sb.append(i2);
        sb.append(", errorDetails=");
        sb.append(str);
        sb.append(", warningDetails=");
        return defpackage.me0.d(sb, str2, ")");
    }

    public static go2 a(go2 go2Var, boolean z, int i, int i2, String str, String str2, int i3) {
        if ((i3 & 1) != 0) {
            z = go2Var.a;
        }
        boolean z2 = z;
        if ((i3 & 2) != 0) {
            i = go2Var.b;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            i2 = go2Var.c;
        }
        int i5 = i2;
        if ((i3 & 8) != 0) {
            str = go2Var.d;
        }
        String str3 = str;
        if ((i3 & 16) != 0) {
            str2 = go2Var.e;
        }
        go2Var.getClass();
        return new go2(z2, i4, i5, str3, str2);
    }
}
