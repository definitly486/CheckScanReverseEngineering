package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mo2 extends uo2 {
    public final String e;
    public final ArrayList f;
    public uo2 g;

    public mo2(String str) {
        super(str);
        this.e = str;
        char[] charArray = str.toCharArray();
        charArray.getClass();
        this.f = uz5.a(charArray);
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        e();
        uo2 uo2Var = this.g;
        if (uo2Var == null) {
            defpackage.aa4.j("expression");
            throw null;
        }
        Object objA = uo2Var.a(bp2Var);
        uo2Var.c = true;
        uo2 uo2Var2 = this.g;
        if (uo2Var2 != null) {
            a(uo2Var2.b);
            return objA;
        }
        defpackage.aa4.j("expression");
        throw null;
    }

    @Override // yads.uo2
    public final List b() {
        e();
        j59 j59Var = j59.a;
        uo2 uo2Var = this.g;
        if (uo2Var != null) {
            return uo2Var.b();
        }
        defpackage.aa4.j("expression");
        throw null;
    }

    @Override // yads.uo2
    public final List d() {
        uo2 uo2Var = this.g;
        if (uo2Var != null) {
            return uo2Var.d();
        }
        ArrayList arrayList = this.f;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof hy5) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((hy5) it.next()).a);
        }
        return arrayList3;
    }

    public final void e() {
        if (this.g == null) {
            ArrayList arrayList = this.f;
            String str = this.a;
            if (arrayList.isEmpty()) {
                defpackage.qg.h("Expression expected");
                return;
            }
            vs4 vs4Var = new vs4(str, arrayList);
            uo2 uo2VarB = ws4.b(vs4Var);
            if (vs4Var.a()) {
                this.g = uo2VarB;
            } else {
                defpackage.qg.h("Expression expected");
            }
        }
    }

    public final String toString() {
        return this.e;
    }
}
