package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class j56 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final List<w56> f;

    /* JADX WARN: Multi-variable type inference failed */
    public j56(String str, String str2, String str3, String str4, boolean z, List<? extends w56> list) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
        this.f = list;
    }

    public static j56 d(j56 j56Var, boolean z) {
        String str = j56Var.a;
        String str2 = j56Var.b;
        String str3 = j56Var.c;
        String str4 = j56Var.d;
        List<w56> list = j56Var.f;
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        return new j56(str, str2, str3, str4, z, list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j56)) {
            return false;
        }
        j56 j56Var = (j56) obj;
        return aa4.e(this.a, j56Var.a) && aa4.e(this.b, j56Var.b) && aa4.e(this.c, j56Var.c) && aa4.e(this.d, j56Var.d) && this.e == j56Var.e && this.f.equals(j56Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d + this.e + qn1.a0(this.f, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.f.hashCode() + tg.c(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PersonalDataFormChipViewModel(title=", this.a, ", blockKey=", this.b, ", parentKey=");
        kv2.c(sbD, this.c, ", key=", this.d, ", selected=");
        sbD.append(this.e);
        sbD.append(", subQuestions=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
