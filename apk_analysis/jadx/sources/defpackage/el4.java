package defpackage;

import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public final class el4<T> extends nk2<T> {
    public final e02<j59> f;

    public el4(o22 o22Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        super(o22Var, true, false);
        this.f = zya.a(this, this, bm3Var);
    }

    @Override // defpackage.sb4
    public final void c0() throws Throwable {
        try {
            go2.f(zya.b(this.f), j59.a);
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).b;
            }
            resumeWith(new k57.a(th));
            throw th;
        }
    }
}
