package defpackage;

import com.google.gson.Gson;
import com.warefly.checkscan.data.db.CheckscanDatabase;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kf1 implements cf1 {
    public final mh1 a;
    public final CheckscanDatabase b;
    public final jf6 c;
    public final e3 d;

    public static final class a {

        @bq7("userId")
        private long a;

        @bq7("nextPosition")
        private int b;

        @bq7("elements")
        private List<xb0> c;

        public a(long j, int i, List<xb0> list) {
            list.getClass();
            this.a = j;
            this.b = i;
            this.c = list;
        }

        public final List<xb0> a() {
            return this.c;
        }

        public final int b() {
            return this.b;
        }

        public final long c() {
            return this.a;
        }

        public final void d(ArrayList arrayList) {
            this.c = arrayList;
        }

        public final void e(int i) {
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + ej0.b(this.b, Long.hashCode(this.a) * 31, 31);
        }

        public final String toString() {
            return "BannersCalendar(userId=" + this.a + ", nextPositionToBeShown=" + this.b + ", informer=" + this.c + ")";
        }
    }

    public static final class b {

        @bq7("userId")
        private long a;

        @bq7("nextPosition")
        private int b;

        @bq7("elements")
        private List<z96> c;

        @bq7("completedIds")
        private List<Integer> d;

        public b(long j, int i, List<z96> list, List<Integer> list2) {
            list.getClass();
            list2.getClass();
            this.a = j;
            this.b = i;
            this.c = list;
            this.d = list2;
        }

        public final List<Integer> a() {
            return this.d;
        }

        public final List<z96> b() {
            return this.c;
        }

        public final long c() {
            return this.a;
        }

        public final void d(ArrayList arrayList) {
            this.d = arrayList;
        }

        public final void e(ArrayList arrayList) {
            this.c = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && this.b == bVar.b && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + e2.b(this.c, ej0.b(this.b, Long.hashCode(this.a) * 31, 31), 31);
        }

        public final String toString() {
            return "PollsCalendar(userId=" + this.a + ", nextPositionToBeShown=" + this.b + ", polls=" + this.c + ", completedIds=" + this.d + ")";
        }
    }

    public static final class c extends x39<a> {
    }

    public static final class d extends x39<b> {
    }

    public kf1(mh1 mh1Var, CheckscanDatabase checkscanDatabase, jf6 jf6Var, e3 e3Var) {
        this.a = mh1Var;
        this.b = checkscanDatabase;
        this.c = jf6Var;
        this.d = e3Var;
    }

    public static void w(kf1 kf1Var, b bVar, a aVar, int i) {
        if ((i & 1) != 0) {
            bVar = null;
        }
        if ((i & 2) != 0) {
            aVar = null;
        }
        jf6 jf6Var = kf1Var.c;
        if (aVar != null) {
            jf6Var.j1(ht3.c().j(aVar));
        }
        if (bVar != null) {
            jf6Var.J0(ht3.c().j(bVar));
        }
    }

    @Override // defpackage.cf1
    public final h08 a() {
        mz7<oc0> mz7VarA = this.a.a();
        gd0 gd0Var = new gd0(new nf1(this));
        mz7VarA.getClass();
        return new h08(mz7VarA, gd0Var);
    }

    @Override // defpackage.cf1
    public final mz7<List<bf1>> b(int i) {
        return this.a.b(i);
    }

    @Override // defpackage.cf1
    public final p08 c(int i) {
        mz7<a57<b57>> mz7VarC = this.a.c(i);
        if1 if1Var = new if1(tf1.f, 0);
        mz7VarC.getClass();
        return new p08(mz7VarC, if1Var);
    }

    @Override // defpackage.cf1
    public final mz7<hc> d() {
        return this.a.o();
    }

    @Override // defpackage.cf1
    public final p08 e(String str) {
        mz7<List<n81>> mz7VarC = this.b.e().c();
        k4 k4Var = new k4(sf1.f, 1);
        mz7VarC.getClass();
        return new p08(mz7VarC, k4Var);
    }

    @Override // defpackage.cf1
    public final h08 f(int i, String str, String str2) {
        mz7<a57<b57>> mz7VarG = this.a.g(new ze1(i, str, str2));
        ef1 ef1Var = new ef1(uf1.g);
        mz7VarG.getClass();
        return new h08(mz7VarG, ef1Var);
    }

    @Override // defpackage.cf1
    public final p08 g(Integer num, String str) {
        mz7<j26<vh6>> mz7VarD = this.a.d(num.intValue(), str);
        jf1 jf1Var = new jf1(rf1.f, 0);
        mz7VarD.getClass();
        return new p08(mz7VarD, jf1Var);
    }

    @Override // defpackage.cf1
    public final tb7 h(int i, String str, String str2, Integer num, Integer num2, int i2, String str3) {
        return new tb7(new lf1(this, i, str, str2, num, num2, i2, str3, null));
    }

    @Override // defpackage.cf1
    public final List<u48> i() {
        return u96.i(u48.Date, u48.Search, u48.Period, u48.Sum);
    }

    @Override // defpackage.cf1
    public final mz7 j(int i, String str) {
        return this.a.h(str, i, 20);
    }

    @Override // defpackage.cf1
    public final p08 k(int i) {
        mz7<jh1> mz7VarK = this.a.k(i);
        hd0 hd0Var = new hd0(of1.f);
        mz7VarK.getClass();
        return new p08(mz7VarK, hd0Var);
    }

    @Override // defpackage.cf1
    public final oz7 l() {
        return new oz7(new ff1(this));
    }

    @Override // defpackage.cf1
    public final mz7<a57<b57>> m(vg6 vg6Var) {
        return this.a.p(vg6Var.f());
    }

    @Override // defpackage.cf1
    public final qp1 n(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        return this.a.e(new x33(str, str2, str3, "EXCEL"));
    }

    @Override // defpackage.cf1
    public final h08 o(int i) {
        mz7<a57<b57>> mz7VarN = this.a.n(i);
        hf1 hf1Var = new hf1(u5.h, 0);
        mz7VarN.getClass();
        return new h08(mz7VarN, hf1Var);
    }

    @Override // defpackage.cf1
    public final cq1 p(final int i) {
        return new cq1(new h6() { // from class: df1
            @Override // defpackage.h6
            public final void run() {
                kf1 kf1Var = this.a;
                kf1.b bVarV = kf1Var.v();
                bVarV.d(qn1.i0(Integer.valueOf(i), bVarV.a()));
                kf1.w(kf1Var, bVarV, null, 2);
            }
        });
    }

    @Override // defpackage.cf1
    public final Object q(ee1 ee1Var) {
        return this.a.j(ee1Var);
    }

    @Override // defpackage.cf1
    public final i08 r(int i) {
        mz7<List<ld1>> mz7VarM = this.a.m(i);
        gf1 gf1Var = new gf1(pf1.f, 0);
        mz7VarM.getClass();
        return new i08(mz7VarM, gf1Var);
    }

    @Override // defpackage.cf1
    public final p08 s(String str) {
        mz7<n71> mz7VarF = this.a.f(str);
        u20 u20Var = new u20(new vf1(this, 0), 2);
        mz7VarF.getClass();
        return new p08(mz7VarF, u20Var);
    }

    @Override // defpackage.cf1
    public final p08 t(int i, int i2) {
        mz7<w42> mz7VarL = this.a.l(i, i2);
        l5 l5Var = new l5(qf1.f, 1);
        mz7VarL.getClass();
        return new p08(mz7VarL, l5Var);
    }

    public final a u() {
        jf6 jf6Var = this.c;
        String strA = jf6Var.A();
        Gson gsonC = ht3.c();
        Type type = new c().b;
        type.getClass();
        a aVar = (a) ht3.a(gsonC, strA, type);
        if (aVar != null) {
            if (aVar.c() != jf6Var.T0()) {
                aVar = null;
            }
            if (aVar != null) {
                return aVar;
            }
        }
        return new a(jf6Var.T0(), 0, kx2.b);
    }

    public final b v() {
        jf6 jf6Var = this.c;
        String strN0 = jf6Var.n0();
        Gson gsonC = ht3.c();
        Type type = new d().b;
        type.getClass();
        b bVar = (b) ht3.a(gsonC, strN0, type);
        if (bVar != null) {
            List<z96> listB = bVar.b();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listB) {
                z96 z96Var = (z96) obj;
                if (!z96Var.e && !bVar.a().contains(Integer.valueOf(z96Var.b))) {
                    arrayList.add(obj);
                }
            }
            bVar.e(arrayList);
            if (bVar.c() != jf6Var.T0()) {
                bVar = null;
            }
            if (bVar != null) {
                return bVar;
            }
        }
        long jT0 = jf6Var.T0();
        kx2 kx2Var = kx2.b;
        return new b(jT0, 0, kx2Var, kx2Var);
    }
}
