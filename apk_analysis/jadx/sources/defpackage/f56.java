package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f56 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final List<pz3> e;

    /* JADX WARN: Multi-variable type inference failed */
    public f56(String str, String str2, String str3, String str4, List<? extends pz3> list) {
        x7.b(str, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = list;
    }

    public static f56 d(f56 f56Var, ArrayList arrayList) {
        String str = f56Var.a;
        String str2 = f56Var.b;
        String str3 = f56Var.c;
        String str4 = f56Var.d;
        str.getClass();
        str3.getClass();
        str4.getClass();
        return new f56(str, str2, str3, str4, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f56)) {
            return false;
        }
        f56 f56Var = (f56) obj;
        return aa4.e(this.a, f56Var.a) && aa4.e(this.b, f56Var.b) && aa4.e(this.c, f56Var.c) && aa4.e(this.d, f56Var.d) && this.e.equals(f56Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.d, qn1.a0(this.e, null, null, null, 0, null, 63));
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.e.hashCode() + zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PersonalDataFormBlockViewModel(title=", this.a, ", description=", this.b, ", imageUrl=");
        kv2.c(sbD, this.c, ", key=", this.d, ", items=");
        return bg.e(")", this.e, sbD);
    }
}
