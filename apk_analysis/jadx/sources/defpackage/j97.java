package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j97<T> extends a0<T> {
    public final oz7.a f;

    public j97(o22 o22Var, oz7.a aVar) {
        super(o22Var, false, true);
        this.f = aVar;
    }

    @Override // defpackage.a0
    public final void k0(Throwable th, boolean z) {
        try {
            if (this.f.a(th)) {
                return;
            }
        } catch (Throwable th2) {
            sj0.c(th, th2);
        }
        uc5.b(this.e, th);
    }

    @Override // defpackage.a0
    public final void l0(T t) {
        try {
            this.f.onSuccess(t);
        } catch (Throwable th) {
            uc5.b(this.e, th);
        }
    }
}
