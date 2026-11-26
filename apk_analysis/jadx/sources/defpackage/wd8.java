package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class wd8 {
    public final int a;
    public final String b;
    public final ArrayList c;
    public final od8 d;

    public wd8(int i, String str, ArrayList arrayList, od8 od8Var) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = arrayList;
        this.d = od8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wd8)) {
            return false;
        }
        wd8 wd8Var = (wd8) obj;
        return this.a == wd8Var.a && aa4.e(this.b, wd8Var.b) && this.c.equals(wd8Var.c) && aa4.e(this.d, wd8Var.d);
    }

    public final int hashCode() {
        int iD = tg.d(this.c, zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31);
        od8 od8Var = this.d;
        return iD + (od8Var == null ? 0 : od8Var.hashCode());
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SupportChildQuestion(id=", ", title=", this.b, ", blocks=");
        sbE.append(this.c);
        sbE.append(", button=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}
