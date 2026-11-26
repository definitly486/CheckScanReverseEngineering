package yads;

import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
import yads.gs2;

/* JADX INFO: loaded from: classes6.dex */
public final class gs2 implements fs2 {
    public final String b;
    public final ub5 c;
    public final z66 d;
    public final bp2 e;
    public final ao2 f;
    public final String g;
    public final LinkedHashMap h;
    public final LinkedHashMap i;
    public final LinkedHashMap j;
    public boolean k;

    public gs2(String str, ub5 ub5Var, z66 z66Var, bp2 bp2Var, ao2 ao2Var, String str2) {
        this.b = str;
        this.c = ub5Var;
        this.d = z66Var;
        this.e = bp2Var;
        this.f = ao2Var;
        this.g = str2;
        this.h = new LinkedHashMap();
        this.i = new LinkedHashMap();
        this.j = new LinkedHashMap();
    }

    public final Object a(String str, String str2, uo2 uo2Var, nl3 nl3Var, l66 l66Var, n36 n36Var) {
        Object objInvoke = null;
        try {
            Object objA = a(str2, uo2Var);
            if (n36Var.a(objA)) {
                objA.getClass();
            } else {
                if (nl3Var != null) {
                    try {
                        objInvoke = nl3Var.invoke(objA);
                    } catch (ClassCastException e) {
                        throw gt4.a(str, str2, objA, e);
                    } catch (Exception e2) {
                        throw gt4.a(str, str2, objA, e2);
                    }
                } else if (objA != null) {
                    objInvoke = objA;
                }
                if (objInvoke != null && (n36Var.a() instanceof String) && !n36Var.a(objInvoke)) {
                    objInvoke = String.valueOf(objInvoke);
                }
                if (objInvoke == null) {
                    throw gt4.a(str, str2, objA);
                }
                objA = objInvoke;
            }
            try {
                if (l66Var.mo9528a(objA)) {
                    return objA;
                }
                throw gt4.a(objA, str2);
            } catch (ClassCastException e3) {
                throw gt4.a(str, str2, objA, e3);
            }
        } catch (vo2 e4) {
            String str3 = e4 instanceof b94 ? ((b94) e4).b : null;
            if (str3 != null) {
                throw gt4.a(str, str2, str3, e4);
            }
            throw gt4.a(str, (Object) str2, (Exception) e4);
        }
    }

    public final String b() {
        return this.g;
    }

    public final String c() {
        return this.b;
    }

    public final ub5 d() {
        return this.c;
    }

    public final z66 e() {
        return this.d;
    }

    public final void f() {
        this.d.a(this, new defpackage.si2(this, 2));
        this.d.c();
    }

    public /* synthetic */ gs2(String str, ub5 ub5Var, b76 b76Var, bp2 bp2Var, ao2 ao2Var) {
        this(str, ub5Var, b76Var, bp2Var, ao2Var, null);
    }

    @Override // yads.fs2
    public final Object a(String str, String str2, uo2 uo2Var, nl3 nl3Var, l66 l66Var, n36 n36Var, et4 et4Var) {
        try {
            return a(str, str2, uo2Var, nl3Var, l66Var, n36Var);
        } catch (ft4 e) {
            if (e.b == ht4.MISSING_VARIABLE) {
                if (this.k) {
                    throw gt4.a;
                }
                throw e;
            }
            et4Var.b(e);
            ao2 ao2Var = this.f;
            ao2Var.b.add(e);
            ao2Var.a();
            return a(str, str2, uo2Var, nl3Var, l66Var, n36Var);
        }
    }

    public final bp2 a() {
        return this.e;
    }

    public final Object a(String str, uo2 uo2Var) {
        Object obj = this.h.get(str);
        if (obj != null) {
            return obj;
        }
        Object objA = this.e.a(uo2Var);
        if (uo2Var.a()) {
            for (String str2 : uo2Var.d()) {
                LinkedHashMap linkedHashMap = this.i;
                Object linkedHashSet = linkedHashMap.get(str2);
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    linkedHashMap.put(str2, linkedHashSet);
                }
                ((Set) linkedHashSet).add(str);
            }
            this.h.put(str, objA);
        }
        return objA;
    }

    @Override // yads.fs2
    public final void a(ft4 ft4Var) {
        ao2 ao2Var = this.f;
        ao2Var.b.add(ft4Var);
        ao2Var.a();
    }

    public static final void a(gs2 gs2Var, String str, ll3 ll3Var) {
        gp4 gp4Var = (gp4) gs2Var.j.get(str);
        if (gp4Var != null) {
            gp4Var.b(ll3Var);
        }
    }

    public static final j59 a(gs2 gs2Var, u66 u66Var) {
        Set set = (Set) gs2Var.i.get(u66Var.a());
        List listT0 = set != null ? defpackage.qn1.t0(set) : null;
        if (listT0 != null) {
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                gs2Var.h.remove((String) it.next());
            }
        }
        if (listT0 != null) {
            Iterator it2 = listT0.iterator();
            while (it2.hasNext()) {
                gp4 gp4Var = (gp4) gs2Var.j.get((String) it2.next());
                if (gp4Var != null) {
                    Iterator it3 = gp4Var.iterator();
                    while (true) {
                        fp4 fp4Var = (fp4) it3;
                        if (fp4Var.hasNext()) {
                            ((ll3) fp4Var.next()).invoke();
                        }
                    }
                }
            }
        }
        return j59.a;
    }

    public final gs2 a(String str, z50 z50Var) {
        y66 y66Var = new y66(this.d, z50Var);
        return new gs2(defpackage.cg.d(this.b, "/", str), this.c, y66Var, new bp2(new yo2(y66Var, this.e.a().b(), this.e.a().a(), this.e.a().c())), this.f, str);
    }

    public final JSONObject a(int i, Object obj) {
        JSONObject jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        if (jSONObject != null) {
            return jSONObject;
        }
        ao2 ao2Var = this.f;
        ao2Var.b.add(gt4.a(i, obj));
        ao2Var.a();
        return null;
    }

    @Override // yads.fs2
    public final tp0 a(final String str, List list, final ll3 ll3Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            LinkedHashMap linkedHashMap = this.i;
            Object linkedHashSet = linkedHashMap.get(str2);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet();
                linkedHashMap.put(str2, linkedHashSet);
            }
            ((Set) linkedHashSet).add(str);
        }
        LinkedHashMap linkedHashMap2 = this.j;
        Object gp4Var = linkedHashMap2.get(str);
        if (gp4Var == null) {
            gp4Var = new gp4();
            linkedHashMap2.put(str, gp4Var);
        }
        ((gp4) gp4Var).a(ll3Var);
        return new tp0() { // from class: jw9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                gs2.a(this.b, str, ll3Var);
            }
        };
    }
}
