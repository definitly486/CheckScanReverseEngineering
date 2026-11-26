package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class qv extends gh4 implements nl3<wu4, c18<? extends b36<? extends xu4, ? extends wu4.a>>> {
    public final /* synthetic */ kv f;
    public final /* synthetic */ String g;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xu4.values().length];
            try {
                iArr[xu4.LoggedIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[xu4.IncorrectLoginOrPassword.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qv(kv kvVar, String str) {
        super(1);
        this.f = kvVar;
        this.g = str;
    }

    @Override // defpackage.nl3
    public final c18<? extends b36<? extends xu4, ? extends wu4.a>> invoke(wu4 wu4Var) {
        wu4 wu4Var2 = wu4Var;
        wu4Var2.getClass();
        xu4 xu4Var = wu4Var2.a;
        final h3 h3Var = wu4Var2.b;
        final String str = wu4Var2.c;
        wu4.a aVar = wu4Var2.d;
        xu4 xu4Var2 = xu4.LoggedIn;
        if (xu4Var != xu4Var2 || h3Var == null) {
            int i = a.a[xu4Var.ordinal()];
            if (i == 1 || i != 2) {
                new kd.a.g.C0228a().a();
            } else {
                new kd.a.g.b("PASSWORD_LOGIN_INCORRECT").a();
            }
            return mz7.e(new b36(xu4Var, aVar));
        }
        if (str == null) {
            s0.c("Authentication token is not received");
            ah.f("Authentication token is not received");
            return null;
        }
        this.g.getClass();
        final kv kvVar = this.f;
        final c4 c4Var = kvVar.d;
        iq1 iq1Var = new iq1(new qq1[]{new wp1(new Callable() { // from class: r3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                jf6 jf6Var = c4Var.a;
                jf6Var.X0(str);
                h3 h3Var2 = h3Var;
                jf6Var.k1(h3Var2.b());
                String strA = h3Var2.a();
                if (strA == null) {
                    strA = "";
                }
                jf6Var.n(strA);
                jf6Var.I(h3Var2.b());
                jf6Var.J(!h3Var2.c());
                jf6Var.R();
                return aq1.b;
            }
        }), new wp1(new Callable() { // from class: s3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str2 = str;
                c4 c4Var2 = c4Var;
                c4Var2.a.X0(str2);
                return c4Var2.c();
            }
        })});
        h6 h6Var = new h6() { // from class: gv
            @Override // defpackage.h6
            public final void run() {
                kvVar.g.d();
            }
        };
        rm3.e eVar = rm3.d;
        kvVar.g.b(new oq1(iq1Var, eVar, eVar, rm3.c, h6Var).g());
        return mz7.e(new b36(xu4Var2, null));
    }
}
