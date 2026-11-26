package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class mz7<T> implements c18<T> {
    public static o08 e(Object obj) {
        nq5.a(obj, "item is null");
        return new o08(obj);
    }

    public static mz7 j(mz7 mz7Var, mz7 mz7Var2, li0 li0Var) {
        nq5.a(mz7Var, "source1 is null");
        nq5.a(mz7Var2, "source2 is null");
        return new j18(new c18[]{mz7Var, mz7Var2}, new rm3.a(li0Var));
    }

    @Override // defpackage.c18
    public final void d(t08<? super T> t08Var) {
        nq5.a(t08Var, "observer is null");
        try {
            h(t08Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            m13.d(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final r08 f(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new r08(this, he7Var);
    }

    public final rx1 g(qx1 qx1Var, qx1 qx1Var2) {
        nq5.a(qx1Var, "onSuccess is null");
        nq5.a(qx1Var2, "onError is null");
        rx1 rx1Var = new rx1(qx1Var, qx1Var2);
        d(rx1Var);
        return rx1Var;
    }

    public abstract void h(t08<? super T> t08Var);

    public final e18 i(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new e18(this, he7Var);
    }
}
