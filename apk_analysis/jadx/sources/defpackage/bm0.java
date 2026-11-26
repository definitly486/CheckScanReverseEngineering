package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes5.dex */
public final class bm0 {
    public final rp0 a;
    public final aa b;
    public final t42 c;
    public final n53 d;
    public final int e;
    public final z68 f;
    public final gy6 g;
    public final hi0<List<cs0>> h;
    public final hi0<List<cs0>> i;
    public final tq5<List<cs0>> j;
    public final tq5<List<cs0>> k;
    public final hi0<x68<hc0.b>> l;
    public final hi0<x68<cs0>> m;
    public final hi0<x68<er6>> n;
    public final tq5<List<cs0>> o;

    public static final class a extends gh4 implements bm3<List<? extends cs0>, Boolean, List<? extends cs0>> {
        @Override // defpackage.bm3
        public final List<? extends cs0> invoke(List<? extends cs0> list, Boolean bool) {
            List<? extends cs0> list2 = list;
            Boolean bool2 = bool;
            list2.getClass();
            bool2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            final am0 am0Var = am0.f;
            arrayList.removeIf(new Predicate() { // from class: zl0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((Boolean) am0Var.invoke(obj)).booleanValue();
                }
            });
            return bm0.d(arrayList, bool2.booleanValue());
        }
    }

    public static final class b extends gh4 implements bm3<List<? extends cs0>, Boolean, List<? extends cs0>> {
        @Override // defpackage.bm3
        public final List<? extends cs0> invoke(List<? extends cs0> list, Boolean bool) {
            List<? extends cs0> list2 = list;
            Boolean bool2 = bool;
            list2.getClass();
            bool2.getClass();
            return bm0.d(list2, bool2.booleanValue());
        }
    }

    public static final class c extends gh4 implements nl3<x68<hc0.b>, Boolean> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final Boolean invoke(x68<hc0.b> x68Var) {
            x68<hc0.b> x68Var2 = x68Var;
            x68Var2.getClass();
            return Boolean.valueOf(!(x68Var2 instanceof x68.c));
        }
    }

    public static final class d extends gh4 implements nl3<x68<cs0>, Boolean> {
        public static final d f = new d(1);

        @Override // defpackage.nl3
        public final Boolean invoke(x68<cs0> x68Var) {
            x68<cs0> x68Var2 = x68Var;
            x68Var2.getClass();
            return Boolean.valueOf(!(x68Var2 instanceof x68.c));
        }
    }

    public static final class e extends gh4 implements nl3<x68<er6>, Boolean> {
        public static final e f = new e(1);

        @Override // defpackage.nl3
        public final Boolean invoke(x68<er6> x68Var) {
            x68<er6> x68Var2 = x68Var;
            x68Var2.getClass();
            return Boolean.valueOf(!(x68Var2 instanceof x68.c));
        }
    }

    public static final class f extends gh4 implements fm3<x68<hc0.b>, x68<cs0>, x68<er6>, Boolean, List<? extends cs0>> {
        @Override // defpackage.fm3
        public final List<? extends cs0> invoke(x68<hc0.b> x68Var, x68<cs0> x68Var2, x68<er6> x68Var3, Boolean bool) {
            x68<hc0.b> x68Var4 = x68Var;
            x68<cs0> x68Var5 = x68Var2;
            x68<er6> x68Var6 = x68Var3;
            Boolean bool2 = bool;
            x68Var4.getClass();
            x68Var5.getClass();
            x68Var6.getClass();
            bool2.getClass();
            List<hc0.b> list = x68Var4.a;
            List<cs0> list2 = x68Var5.a;
            List<er6> list3 = x68Var6.a;
            ArrayList arrayList = new ArrayList();
            if (!list.isEmpty()) {
                arrayList.add(new xv7(list));
            }
            if (!list3.isEmpty()) {
                List<er6> listSubList = list3.size() > 4 ? list3.subList(0, 4) : list3;
                arrayList.add(new hv7("Купоны и Промокоды"));
                arrayList.add(new nu7(listSubList));
                if (list3.size() > 4) {
                    arrayList.add(new av7(kv2.b(list3.size(), "Показать больше (", ")")));
                }
            }
            if (!list2.isEmpty()) {
                arrayList.add(new hv7("Магазины"));
            }
            arrayList.addAll(bm0.d(list2, bool2.booleanValue()));
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (hashSet.add(((cs0) obj).id())) {
                    arrayList2.add(obj);
                }
            }
            return qn1.t0(arrayList2);
        }
    }

    public static final class g extends gh4 implements ll3<List<? extends tu7>> {
        public static final g f = new g(0);

        @Override // defpackage.ll3
        public final List<? extends tu7> invoke() {
            ArrayList arrayList = new ArrayList(10);
            for (int i = 0; i < 10; i++) {
                arrayList.add(tu7.a);
            }
            return arrayList;
        }
    }

    public static final class h implements xl3 {
        public final /* synthetic */ nl3 b;

        public h(nl3 nl3Var) {
            nl3Var.getClass();
            this.b = nl3Var;
        }

        @Override // defpackage.xl3
        public final /* synthetic */ Object apply(Object obj) {
            return this.b.invoke(obj);
        }
    }

    public bm0(rp0 rp0Var, jf6 jf6Var, aa aaVar, t42 t42Var, n53 n53Var) {
        this.a = rp0Var;
        this.b = aaVar;
        this.c = t42Var;
        this.d = n53Var;
        this.e = jf6Var.O0();
        fh8 fh8VarB = nm4.b(g.f);
        new ArrayList();
        z68 z68VarA = px.a((List) fh8VarB.getValue());
        this.f = z68VarA;
        this.g = bf3.b(z68VarA);
        kx2 kx2Var = kx2.b;
        hi0<List<cs0>> hi0VarI = hi0.i(kx2Var);
        this.h = hi0VarI;
        hi0<List<cs0>> hi0VarI2 = hi0.i(kx2Var);
        this.i = hi0VarI2;
        tq5<List<cs0>> tq5VarB = tq5.b(hi0VarI, rp0Var.m(), new fl0(new b(2), 0));
        tq5VarB.getClass();
        this.j = tq5VarB;
        tq5<List<cs0>> tq5VarB2 = tq5.b(hi0VarI2, rp0Var.m(), new p9(new a(2), 1));
        tq5VarB2.getClass();
        this.k = tq5VarB2;
        hi0<x68<hc0.b>> hi0VarI3 = hi0.i(new x68.c(kx2Var));
        this.l = hi0VarI3;
        hi0<x68<cs0>> hi0VarI4 = hi0.i(new x68.c(kx2Var));
        this.m = hi0VarI4;
        hi0<x68<er6>> hi0VarI5 = hi0.i(new x68.c(kx2Var));
        this.n = hi0VarI5;
        er5 er5Var = new er5(hi0VarI3, new ba(c.f));
        er5 er5Var2 = new er5(hi0VarI4, new ca(d.f));
        er5 er5Var3 = new er5(hi0VarI5, new da(e.f, 1));
        hi0<Boolean> hi0VarM = rp0Var.m();
        ea eaVar = new ea(new f(4));
        nq5.a(hi0VarM, "source4 is null");
        tq5<List<cs0>> tq5VarC = tq5.c(new wr5[]{er5Var, er5Var2, er5Var3, hi0VarM}, new rm3.c(eaVar), gg3.b);
        tq5VarC.getClass();
        this.o = tq5VarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [en1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public static ArrayList c(List list) {
        List<sx5> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        for (sx5 sx5Var : list2) {
            ?? D = sx5Var.d();
            if (sx5Var.a()) {
                D = new pa(sx5Var.b(), D);
            }
            arrayList.add(D);
        }
        return arrayList;
    }

    public static ArrayList d(List list, boolean z) {
        if (z) {
            List<pz3> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (pz3 pz3Var : list2) {
                if (pz3Var instanceof pa) {
                    pz3Var = ((pa) pz3Var).b;
                }
                arrayList.add(pz3Var);
            }
            return arrayList;
        }
        List<pz3> list3 = list;
        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
        for (pz3 paVar : list3) {
            if (paVar instanceof en1) {
                en1 en1Var = (en1) paVar;
                dn1 dn1Var = en1Var.a;
                if (dn1Var.f) {
                    paVar = new pa(dn1Var.a, en1Var);
                }
            }
            arrayList2.add(paVar);
        }
        return arrayList2;
    }

    public final void a() {
        int i = 0;
        this.l.onNext(new x68.c(i));
        this.m.onNext(new x68.c(i));
        this.n.onNext(new x68.c(i));
    }

    public final p08 b(boolean z) {
        int i = 0;
        int i2 = this.e;
        rp0 rp0Var = this.a;
        return z ? new p08(rp0Var.d(Integer.valueOf(i2)), new il0(i4.h, 0)) : new p08(rp0Var.q(Integer.valueOf(i2)), new ml0(sm0.f, i));
    }

    public final h08 e(int i, boolean z) {
        return new h08(this.a.i(i, z).d(this.c.b(i)), new b9(new pn0(this, i), 1));
    }
}
