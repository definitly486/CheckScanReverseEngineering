package defpackage;

import com.warefly.checkscan.presentation.e;

/* JADX INFO: loaded from: classes5.dex */
public final class sp extends gh4 implements nl3<kv.a, j59> {
    public final /* synthetic */ com.warefly.checkscan.presentation.a f;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[kv.a.values().length];
            try {
                iArr[kv.a.UnsupportedApi.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[kv.a.LoggedInFirstTime.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[kv.a.LoggedIn.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[kv.a.NeedLogInAgain.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sp(com.warefly.checkscan.presentation.a aVar) {
        super(1);
        this.f = aVar;
    }

    @Override // defpackage.nl3
    public final j59 invoke(kv.a aVar) {
        kv.a aVar2 = aVar;
        com.warefly.checkscan.presentation.a aVar3 = this.f;
        hi0<Boolean> hi0Var = aVar3.k;
        qe qeVar = aVar3.c;
        o87 o87Var = aVar3.d;
        jf6 jf6Var = aVar3.b;
        hi0Var.onNext(Boolean.FALSE);
        int i = aVar2 == null ? -1 : a.a[aVar2.ordinal()];
        if (i != 1) {
            qg7 qg7Var = qg7.a;
            if (i != 2) {
                e eVar = e.a;
                if (i != 3) {
                    if (i != 4) {
                        o87Var.g(eVar);
                    } else {
                        o87Var.g(if7.a);
                    }
                } else if (jf6Var.v() && jf6Var.I0()) {
                    o87Var.g(eVar);
                } else {
                    o87Var.g(qg7Var);
                }
            } else {
                jf6Var.i(System.currentTimeMillis());
                qeVar.c(jf6Var.h());
                qeVar.d(jf6Var.O0());
                o87Var.g(qg7Var);
            }
        } else {
            o87Var.g(mi7.a);
        }
        return j59.a;
    }
}
