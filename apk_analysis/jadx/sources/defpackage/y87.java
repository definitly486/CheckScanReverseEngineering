package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class y87 extends a0<j59> {
    public final vp1.a f;

    public y87(o22 o22Var, vp1.a aVar) {
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
    public final void l0(j59 j59Var) {
        cp2 andSet;
        try {
            vp1.a aVar = this.f;
            cp2 cp2Var = aVar.get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = aVar.getAndSet(ip2Var)) == ip2Var) {
                return;
            }
            try {
                aVar.b.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        } catch (Throwable th) {
            uc5.b(this.e, th);
        }
    }
}
