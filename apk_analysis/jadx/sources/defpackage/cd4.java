package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cd4 extends pd4 {
    public final boolean b;
    public final String c;

    public cd4(Object obj, boolean z) {
        obj.getClass();
        this.b = z;
        this.c = obj.toString();
    }

    @Override // defpackage.pd4
    public final String a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || cd4.class != obj.getClass()) {
            return false;
        }
        cd4 cd4Var = (cd4) obj;
        return this.b == cd4Var.b && aa4.e(this.c, cd4Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (Boolean.hashCode(this.b) * 31);
    }

    @Override // defpackage.pd4
    public final String toString() {
        boolean z = this.b;
        String str = this.c;
        if (!z) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        aa8.a(sb, str);
        return sb.toString();
    }
}
