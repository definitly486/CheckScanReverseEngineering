package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class x06 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final ya5 e;

    public x06(String str, String str2, String str3, String str4, ya5 ya5Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = ya5Var;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (x06.class.equals(obj != null ? obj.getClass() : null)) {
                obj.getClass();
                x06 x06Var = (x06) obj;
                if (this.a.equals(x06Var.a) && this.b.equals(x06Var.b) && this.c.equals(x06Var.c)) {
                    String str = x06Var.d;
                    String str2 = this.d;
                    if (str2 == null) {
                        if (str == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str == null) {
                        zEquals = false;
                    } else {
                        zEquals = str2.equals(str);
                    }
                    if (zEquals && this.e.equals(x06Var.e)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        is9 is9Var = str != null ? new is9(str) : null;
        return this.e.hashCode() + ((iB + (is9Var != null ? is9Var.a.hashCode() : 0)) * 31);
    }
}
