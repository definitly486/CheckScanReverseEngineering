package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a75<T> implements x75<T> {
    public static q75 b(Object obj) {
        nq5.a(obj, "item is null");
        return new q75(obj);
    }

    @Override // defpackage.x75
    public final void a(t75<? super T> t75Var) {
        nq5.a(t75Var, "observer is null");
        try {
            d(t75Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            m13.d(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void d(t75<? super T> t75Var);
}
