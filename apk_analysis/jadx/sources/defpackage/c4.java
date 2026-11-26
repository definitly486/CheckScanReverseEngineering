package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class c4 {
    public final jf6 a;
    public final j5 b;
    public final zg1 c;
    public final s67 d;
    public final qe e;
    public final hm2 f;
    public final hu4 g;
    public final u51 h;
    public final fu1 i;
    public final vp j;
    public final n60 k;
    public final b16 l;
    public final d82 m;
    public final k5 n;
    public final dc7 o;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a AlreadyCreated;
        public static final a BackendError;
        public static final a Error;
        public static final a NewUsernameSent;
        public static final a UsernameNotFound;

        static {
            a aVar = new a("NewUsernameSent", 0);
            NewUsernameSent = aVar;
            a aVar2 = new a("UsernameNotFound", 1);
            UsernameNotFound = aVar2;
            a aVar3 = new a("Error", 2);
            Error = aVar3;
            a aVar4 = new a("BackendError", 3);
            BackendError = aVar4;
            a aVar5 = new a("AlreadyCreated", 4);
            AlreadyCreated = aVar5;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public c4(jf6 jf6Var, j5 j5Var, zg1 zg1Var, s67 s67Var, qe qeVar, hm2 hm2Var, hu4 hu4Var, u51 u51Var, fu1 fu1Var, vp vpVar, n60 n60Var, b16 b16Var, d82 d82Var, k5 k5Var, dc7 dc7Var) {
        this.a = jf6Var;
        this.b = j5Var;
        this.c = zg1Var;
        this.d = s67Var;
        this.e = qeVar;
        this.f = hm2Var;
        this.g = hu4Var;
        this.h = u51Var;
        this.i = fu1Var;
        this.j = vpVar;
        this.k = n60Var;
        this.l = b16Var;
        this.m = d82Var;
        this.n = k5Var;
        this.o = dc7Var;
    }

    public final yz7 a() {
        mz7<t99> mz7VarB = this.b.b();
        t3 t3Var = new t3(new h4(this, 0), 0);
        mz7VarB.getClass();
        return new yz7(mz7VarB, t3Var);
    }

    public final rp1 b() {
        mz7<a57<j59>> mz7VarG = this.b.g();
        mz7VarG.getClass();
        return new fq1(mz7VarG).c(this.h.d()).c(new cq1(new h6() { // from class: p3
            @Override // defpackage.h6
            public final void run() {
                c4 c4Var = this.a;
                c4Var.k.u();
                jf6 jf6Var = c4Var.a;
                jf6Var.k1("");
                jf6Var.X0("");
                jf6Var.J(false);
                jf6Var.E(0);
                jf6Var.D0("");
                jf6Var.g1("null");
                jf6Var.a1("");
                jf6Var.H("");
                jf6Var.y("");
            }
        })).c(this.c.e());
    }

    public final oq1 c() {
        int i = 0;
        nq1 nq1Var = new nq1(new h08(this.f.getDeviceInfo(), new l3(new p4(this, i), i)));
        mz7<a57<ba9>> mz7VarS = this.b.s();
        m3 m3Var = new m3(new t4(this), i);
        mz7VarS.getClass();
        return new iq1(new qq1[]{nq1Var, new nq1(new h08(mz7VarS, m3Var))}).e(new h6() { // from class: u3
            @Override // defpackage.h6
            public final void run() {
                c4 c4Var = this.a;
                c4Var.i.b(yb8.g(c4Var.d().i(ne7.c).f(ne7.d), null, null, 3));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final nq1 d() {
        qp1 qp1VarE;
        jf6 jf6Var = this.a;
        boolean zEquals = jf6Var.P().equals("null");
        j5 j5Var = this.b;
        if (zEquals) {
            qp1VarE = aq1.b;
            qp1VarE.getClass();
        } else {
            qp1 qp1VarO = j5Var.o(jf6Var.P());
            qp1VarO.getClass();
            qp1VarE = new eq1(new mh3(qp1VarO instanceof tm3 ? ((tm3) qp1VarO).c() : new uq1(qp1VarO))).e(new h6() { // from class: o3
                @Override // defpackage.h6
                public final void run() {
                    this.a.a.g1("null");
                }
            });
        }
        a75<va3> a75VarE = j5Var.e();
        nq5.a(a75VarE, "next is null");
        e75 e75Var = new e75(a75VarE, qp1VarE);
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.SECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        return new nq1(new j75(new d75(e75Var, Math.max(0L, 30L), he7Var), new a4(new r4(this, 0))));
    }
}
