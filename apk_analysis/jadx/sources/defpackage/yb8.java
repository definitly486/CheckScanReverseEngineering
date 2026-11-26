package defpackage;

import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;
import com.warefly.checkscan.presentation.queue.presenter.QueuePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class yb8 {
    public static final c a = c.f;
    public static final b b = b.f;
    public static final a c = a.f;

    public static final class a extends gh4 implements ll3<j59> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final j59 invoke() {
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public static final b f = new b(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<Object, j59> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final j59 invoke(Object obj) {
            obj.getClass();
            return j59.a;
        }
    }

    public static final <T> qx1<T> a(nl3<? super T, j59> nl3Var) {
        if (nl3Var == a) {
            return rm3.d;
        }
        if (nl3Var != null) {
            nl3Var = (nl3<? super T, j59>) new ac8(nl3Var);
        }
        return (qx1) nl3Var;
    }

    public static final h6 b(ll3<j59> ll3Var) {
        Object zb8Var = ll3Var;
        if (ll3Var == c) {
            return rm3.c;
        }
        if (ll3Var != null) {
            zb8Var = new zb8(ll3Var);
        }
        return (h6) zb8Var;
    }

    public static final qx1<Throwable> c(nl3<? super Throwable, j59> nl3Var) {
        Object ac8Var = nl3Var;
        if (nl3Var == b) {
            return rm3.e;
        }
        if (nl3Var != null) {
            ac8Var = new ac8(nl3Var);
        }
        return (qx1) ac8Var;
    }

    public static final rx1 d(mz7 mz7Var, nl3 nl3Var, nl3 nl3Var2) {
        mz7Var.getClass();
        nl3Var.getClass();
        nl3Var2.getClass();
        return mz7Var.g(a(nl3Var2), c(nl3Var));
    }

    public static final cp2 e(qp1 qp1Var, ll3 ll3Var, nl3 nl3Var) {
        nl3Var.getClass();
        ll3Var.getClass();
        b bVar = b;
        if (nl3Var == bVar && ll3Var == c) {
            return qp1Var.g();
        }
        if (nl3Var == bVar) {
            uy0 uy0Var = new uy0(new zb8(ll3Var));
            qp1Var.b(uy0Var);
            return uy0Var;
        }
        h6 h6VarB = b(ll3Var);
        ac8 ac8Var = new ac8(nl3Var);
        nq5.a(h6VarB, "onComplete is null");
        uy0 uy0Var2 = new uy0(ac8Var, h6VarB);
        qp1Var.b(uy0Var2);
        return uy0Var2;
    }

    public static /* synthetic */ rx1 f(mz7 mz7Var, nl3 nl3Var, nl3 nl3Var2, int i) {
        if ((i & 1) != 0) {
            nl3Var = b;
        }
        if ((i & 2) != 0) {
            nl3Var2 = a;
        }
        return d(mz7Var, nl3Var, nl3Var2);
    }

    public static /* synthetic */ cp2 g(lq1 lq1Var, nl3 nl3Var, ll3 ll3Var, int i) {
        if ((i & 1) != 0) {
            nl3Var = b;
        }
        if ((i & 2) != 0) {
            ll3Var = c;
        }
        return e(lq1Var, ll3Var, nl3Var);
    }

    public static hh4 h(qr5 qr5Var, QueuePresenter.d dVar, nl3 nl3Var, int i) {
        nl3 nl3Var2 = dVar;
        if ((i & 1) != 0) {
            nl3Var2 = b;
        }
        nl3Var2.getClass();
        a aVar = c;
        aVar.getClass();
        qx1 qx1VarA = a(nl3Var);
        qx1<Throwable> qx1VarC = c(nl3Var2);
        h6 h6VarB = b(aVar);
        nq5.a(qx1VarA, "onNext is null");
        nq5.a(qx1VarC, "onError is null");
        nq5.a(h6VarB, "onComplete is null");
        hh4 hh4Var = new hh4(qx1VarA, qx1VarC, h6VarB);
        qr5Var.a(hh4Var);
        return hh4Var;
    }

    public static ih4 i(gg3 gg3Var, nl3 nl3Var, int i) {
        if ((i & 4) != 0) {
            nl3Var = a;
        }
        b bVar = b;
        bVar.getClass();
        a aVar = c;
        aVar.getClass();
        nl3Var.getClass();
        return (ih4) gg3Var.e(a(nl3Var), c(bVar), b(aVar), bh3.INSTANCE);
    }

    public static b75 j(s75 s75Var, ChequePagePresenter.r rVar, nl3 nl3Var, int i) {
        ll3 ll3Var = rVar;
        if ((i & 2) != 0) {
            ll3Var = c;
        }
        b bVar = b;
        bVar.getClass();
        ll3Var.getClass();
        qx1 qx1VarA = a(nl3Var);
        qx1<Throwable> qx1VarC = c(bVar);
        h6 h6VarB = b(ll3Var);
        nq5.a(qx1VarA, "onSuccess is null");
        nq5.a(qx1VarC, "onError is null");
        nq5.a(h6VarB, "onComplete is null");
        b75 b75Var = new b75(qx1VarA, qx1VarC, h6VarB);
        s75Var.a(b75Var);
        return b75Var;
    }
}
