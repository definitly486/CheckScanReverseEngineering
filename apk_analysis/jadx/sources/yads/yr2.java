package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import yads.yr2;

/* JADX INFO: loaded from: classes6.dex */
public final class yr2 extends as2 {
    public final String a;
    public final String b;
    public final nl3 c;
    public final l66 d;
    public final et4 e;
    public final n36 f;
    public final as2 g;
    public final String h;
    public mo2 i;
    public Object j;

    public yr2(String str, String str2, nl3 nl3Var, l66 l66Var, et4 et4Var, n36 n36Var, as2 as2Var) {
        this.a = str;
        this.b = str2;
        this.c = nl3Var;
        this.d = l66Var;
        this.e = et4Var;
        this.f = n36Var;
        this.g = as2Var;
        this.h = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [aia] */
    @Override // yads.as2
    public final tp0 a(fs2 fs2Var, final nl3 nl3Var) {
        List listD;
        final fs2 fs2Var2 = fs2Var;
        try {
            listD = c().d();
        } catch (Exception e) {
            ft4 ft4VarA = gt4.a(this.a, (Object) this.b, e);
            this.e.b(ft4VarA);
            fs2Var2.a(ft4VarA);
            listD = defpackage.kx2.b;
        }
        List<uo2> listB = b();
        if (listD.isEmpty() && (listB == null || listB.isEmpty())) {
            return tp0.a;
        }
        ll3 ll3Var = new ll3() { // from class: aia
            @Override // defpackage.ll3
            public final Object invoke() {
                return yr2.a(nl3Var, this, fs2Var2);
            }
        };
        tp0 tp0VarA = fs2Var2.a(this.b, listD, ll3Var);
        if (listB == null || listB.isEmpty()) {
            return tp0VarA;
        }
        final x40 x40Var = new x40();
        x40Var.a(tp0VarA);
        ArrayList arrayList = new ArrayList();
        for (uo2 uo2Var : listB) {
            String str = (String) fs2Var2.a(this.a, uo2Var.toString(), uo2Var, uq3.b, uq3.a, w36.c, this.e);
            if (str != null) {
                arrayList.add(str);
            }
        }
        x40Var.a(arrayList.isEmpty() ? tp0.a : fs2Var2.a(this.b, arrayList, ll3Var));
        fs2 fs2Var3 = fs2Var2;
        ?? r10 = ll3Var;
        for (final uo2 uo2Var2 : listB) {
            final fs2 fs2Var4 = fs2Var3;
            final ?? r5 = r10;
            ll3 ll3Var2 = new ll3() { // from class: bia
                @Override // defpackage.ll3
                public final Object invoke() {
                    return yr2.a(x40Var, this, uo2Var2, fs2Var4, r5);
                }
            };
            fs2 fs2Var5 = fs2Var4;
            x40Var.a(fs2Var5.a(uo2Var2.toString(), uo2Var2.d(), ll3Var2));
            List<uo2> listB2 = uo2Var2.b();
            ArrayList arrayList2 = new ArrayList();
            for (uo2 uo2Var3 : listB2) {
                String str2 = (String) fs2Var5.a(this.a, uo2Var3.toString(), uo2Var3, uq3.b, uq3.a, w36.c, this.e);
                if (str2 != null) {
                    arrayList2.add(str2);
                }
            }
            x40Var.a(arrayList2.isEmpty() ? tp0.a : fs2Var5.a(this.b, arrayList2, ll3Var2));
            r10 = r5;
            fs2Var3 = fs2Var5;
        }
        return x40Var;
    }

    public final List b(fs2 fs2Var) {
        List listD;
        ArrayList arrayList;
        try {
            listD = c().d();
        } catch (Exception e) {
            ft4 ft4VarA = gt4.a(this.a, (Object) this.b, e);
            this.e.b(ft4VarA);
            fs2Var.a(ft4VarA);
            listD = defpackage.kx2.b;
        }
        List<uo2> listB = b();
        if (listB != null) {
            arrayList = new ArrayList();
            for (uo2 uo2Var : listB) {
                fs2 fs2Var2 = fs2Var;
                String str = (String) fs2Var2.a(this.a, uo2Var.toString(), uo2Var, uq3.b, uq3.a, w36.c, this.e);
                if (str != null) {
                    arrayList.add(str);
                }
                fs2Var = fs2Var2;
            }
        } else {
            arrayList = null;
        }
        return (arrayList == null || arrayList.isEmpty()) ? listD : defpackage.qn1.h0(arrayList, listD);
    }

    public final Object c(fs2 fs2Var) {
        Object objA = fs2Var.a(this.a, this.b, c(), this.c, this.d, this.f, this.e);
        if (objA == null) {
            throw gt4.a(this.a, (Object) this.b, (Exception) null);
        }
        if (this.f.a(objA)) {
            return objA;
        }
        throw gt4.a(this.a, this.b, objA, (ClassCastException) null);
    }

    public final String d() {
        return this.h;
    }

    public final uo2 c() {
        mo2 mo2Var = this.i;
        if (mo2Var != null) {
            return mo2Var;
        }
        try {
            Set set = uo2.d;
            mo2 mo2Var2 = new mo2(this.b);
            this.i = mo2Var2;
            return mo2Var2;
        } catch (vo2 e) {
            throw gt4.a(this.a, (Object) this.b, (Exception) e);
        }
    }

    public final List b() {
        Object aVar;
        try {
            mo2 mo2Var = this.i;
            aVar = mo2Var != null ? mo2Var.b() : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (List) (aVar instanceof k57.a ? null : aVar);
    }

    public static final j59 a(nl3 nl3Var, yr2 yr2Var, fs2 fs2Var) {
        nl3Var.invoke(yr2Var.a(fs2Var));
        return j59.a;
    }

    @Override // yads.as2
    public final Object a() {
        return this.h;
    }

    @Override // yads.as2
    public final Object a(fs2 fs2Var) {
        Object objA;
        try {
            Object objC = c(fs2Var);
            this.j = objC;
            return objC;
        } catch (ft4 e) {
            String message = e.getMessage();
            if (message != null && message.length() != 0) {
                this.e.b(e);
                fs2Var.a(e);
            }
            Object obj = this.j;
            if (obj != null) {
                return obj;
            }
            try {
                as2 as2Var = this.g;
                if (as2Var != null && (objA = as2Var.a(fs2Var)) != null) {
                    this.j = objA;
                    return objA;
                }
                return this.f.a();
            } catch (ft4 e2) {
                this.e.b(e2);
                fs2Var.a(e2);
                throw e2;
            }
        }
    }

    public static final j59 a(x40 x40Var, yr2 yr2Var, uo2 uo2Var, fs2 fs2Var, ll3 ll3Var) {
        tp0 tp0VarA;
        String str = (String) fs2Var.a(yr2Var.a, uo2Var.toString(), uo2Var, uq3.b, uq3.a, w36.c, yr2Var.e);
        if (str == null) {
            tp0VarA = tp0.a;
        } else {
            tp0VarA = fs2Var.a(yr2Var.b, u96.h(str), ll3Var);
        }
        x40Var.a(tp0VarA);
        return j59.a;
    }
}
