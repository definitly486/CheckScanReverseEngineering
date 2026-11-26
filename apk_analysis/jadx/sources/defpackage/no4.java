package defpackage;

import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public final class no4 extends s68 {
    public final e02<j59> f;

    public no4(o22 o22Var, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var) {
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
