package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ff8 {
    public final int a;
    public final String b;
    public final String c;
    public final ArrayList d;
    public final od8 e;

    public ff8(int i, String str, String str2, ArrayList arrayList, od8 od8Var) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = arrayList;
        this.e = od8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ff8)) {
            return false;
        }
        ff8 ff8Var = (ff8) obj;
        return this.a == ff8Var.a && aa4.e(this.b, ff8Var.b) && aa4.e(this.c, ff8Var.c) && this.d.equals(ff8Var.d) && aa4.e(this.e, ff8Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iD = tg.d(this.d, (iB + (str == null ? 0 : str.hashCode())) * 31, 31);
        od8 od8Var = this.e;
        return iD + (od8Var != null ? od8Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SupportQuestion(id=", ", title=", this.b, ", description=");
        sbE.append(this.c);
        sbE.append(", children=");
        sbE.append(this.d);
        sbE.append(", button=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }
}
