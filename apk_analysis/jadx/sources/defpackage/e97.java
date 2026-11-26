package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class e97<T> extends a0<T> {
    public final c75.a f;

    public e97(o22 o22Var, c75.a aVar) {
        super(o22Var, false, true);
        this.f = aVar;
    }

    @Override // defpackage.a0
    public final void k0(Throwable th, boolean z) {
        try {
            if (this.f.d(th)) {
                return;
            }
        } catch (Throwable th2) {
            sj0.c(th, th2);
        }
        uc5.b(this.e, th);
    }

    @Override // defpackage.a0
    public final void l0(T t) {
        c75.a aVar = this.f;
        try {
            if (t == null) {
                aVar.a();
            } else {
                aVar.b(t);
            }
        } catch (Throwable th) {
            uc5.b(this.e, th);
        }
    }
}
