package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qp1 implements qq1 {
    @Override // defpackage.qq1
    public final void b(mq1 mq1Var) {
        try {
            h(mq1Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final rp1 c(qq1 qq1Var) {
        nq5.a(qq1Var, "next is null");
        return new rp1(this, qq1Var);
    }

    public final rz7 d(mz7 mz7Var) {
        nq5.a(mz7Var, "next is null");
        return new rz7(mz7Var, this);
    }

    public final oq1 e(h6 h6Var) {
        rm3.e eVar = rm3.d;
        return new oq1(this, eVar, eVar, h6Var, rm3.c);
    }

    public final lq1 f(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new lq1(this, he7Var);
    }

    public final cp2 g() {
        fx2 fx2Var = new fx2();
        b(fx2Var);
        return fx2Var;
    }

    public abstract void h(mq1 mq1Var);

    public final rq1 i(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new rq1(this, he7Var);
    }
}
