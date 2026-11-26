package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hn8 implements kk1 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;

    public hn8(int i, String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hn8)) {
            return false;
        }
        hn8 hn8Var = (hn8) obj;
        return this.a == hn8Var.a && aa4.e(this.b, hn8Var.b) && aa4.e(this.c, hn8Var.c) && aa4.e(this.d, hn8Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return dg.c(ng.e(this.a, "TaskError(taskId=", ", title=", this.b, ", description="), this.c, ", btnText=", this.d, ")");
    }
}
