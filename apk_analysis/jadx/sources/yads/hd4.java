package yads;

import defpackage.j59;
import defpackage.nl3;
import defpackage.x19;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hd4 implements ds2 {
    public final String a;
    public final ArrayList b;
    public final st3 c;
    public final et4 d;
    public ArrayList e;

    public hd4(String str, ArrayList arrayList, st3 st3Var, et4 et4Var) {
        this.a = str;
        this.b = arrayList;
        this.c = st3Var;
        this.d = et4Var;
    }

    @Override // yads.ds2
    public final tp0 a(fs2 fs2Var, nl3 nl3Var) {
        x19 x19Var = new x19(nl3Var, this, fs2Var, 1);
        if (this.b.size() == 1) {
            return ((as2) defpackage.qn1.T(this.b)).a(fs2Var, x19Var);
        }
        x40 x40Var = new x40();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            x40Var.a(((as2) it.next()).a(fs2Var, x19Var));
        }
        return x40Var;
    }

    public final ArrayList b(fs2 fs2Var) {
        ArrayList arrayList = this.b;
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((as2) it.next()).a(fs2Var));
        }
        if (this.c.a(arrayList2)) {
            return arrayList2;
        }
        throw gt4.a(arrayList2, this.a);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof hd4) && defpackage.aa4.e(this.b, ((hd4) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode() * 16;
    }

    @Override // yads.ds2
    public final List a(fs2 fs2Var) {
        try {
            ArrayList arrayListB = b(fs2Var);
            this.e = arrayListB;
            return arrayListB;
        } catch (ft4 e) {
            this.d.b(e);
            ArrayList arrayList = this.e;
            if (arrayList != null) {
                return arrayList;
            }
            throw e;
        }
    }

    public static final j59 a(nl3 nl3Var, hd4 hd4Var, fs2 fs2Var, Object obj) {
        nl3Var.invoke(hd4Var.a(fs2Var));
        return j59.a;
    }
}
