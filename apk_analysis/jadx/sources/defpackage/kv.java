package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class kv implements jg4 {
    public final uw b;
    public final jf6 c;
    public final c4 d;
    public final b68 e;
    public final fu1 f;
    public final fu1 g = new fu1();
    public final fu1 h = new fu1();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Error;
        public static final a LoggedIn;
        public static final a LoggedInFirstTime;
        public static final a NeedLogInAgain;
        public static final a Offline;
        public static final a UnsupportedApi;

        static {
            a aVar = new a("UnsupportedApi", 0);
            UnsupportedApi = aVar;
            a aVar2 = new a("LoggedInFirstTime", 1);
            LoggedInFirstTime = aVar2;
            a aVar3 = new a("LoggedIn", 2);
            LoggedIn = aVar3;
            a aVar4 = new a("NeedLogInAgain", 3);
            NeedLogInAgain = aVar4;
            a aVar5 = new a("Offline", 4);
            Offline = aVar5;
            a aVar6 = new a("Error", 5);
            Error = aVar6;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6};
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

    public kv(uw uwVar, jf6 jf6Var, c4 c4Var, b68 b68Var, fu1 fu1Var) {
        this.b = uwVar;
        this.c = jf6Var;
        this.d = c4Var;
        this.e = b68Var;
        this.f = fu1Var;
    }

    public final g18 a() {
        yz7 yz7Var = new yz7(new e08(this.d.b.r(), new di(new mv(this), 1)), new hv(new nv(this), 0));
        he7 he7Var = ne7.b;
        nq5.a(TimeUnit.SECONDS, "unit is null");
        nq5.a(he7Var, "scheduler is null");
        return new g18(yz7Var, he7Var);
    }

    public final e08 c(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f.d();
        String string = ta8.f0(str).toString();
        String string2 = ta8.f0(str2).toString();
        string.getClass();
        string2.getClass();
        int i = 1;
        return new e08(new e08(new e08(this.d.b.l(string, string2), new vq(new qv(this, str), i)), new wq(new sv(this), i)), new s5(new uv(this), i));
    }

    public final rz7 d() {
        rp1 rp1VarB = this.d.b();
        int i = 0;
        be0 be0Var = new be0(new bw(this, 0), 2);
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        oq1 oq1Var = new oq1(rp1VarB, be0Var, eVar, dVar, dVar);
        mz7 mz7VarA = this.b.a();
        jv jvVar = new jv(new aw(this, i), i);
        mz7VarA.getClass();
        return oq1Var.d(new e08(mz7VarA, jvVar));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [fv] */
    public final void e() {
        c4 c4Var = this.d;
        String strV0 = c4Var.a.v0();
        if (ta8.M(strV0)) {
            strV0 = null;
        }
        mz7 yz7Var = strV0 != null ? new yz7(c4Var.b.k(strV0), new b4(new q4(c4Var, 0), 0)) : null;
        if (yz7Var == null) {
            yz7Var = mz7.e(Boolean.FALSE);
        }
        this.h.b(new tz7(yz7Var, new h6() { // from class: fv
            @Override // defpackage.h6
            public final void run() {
                this.a.h.d();
            }
        }).i(ne7.c).g(rm3.d, rm3.e));
    }
}
