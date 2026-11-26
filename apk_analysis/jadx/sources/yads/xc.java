package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xc implements Runnable {
    public final /* synthetic */ yc b;

    public xc(yc ycVar) {
        this.b = ycVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ad adVar = this.b.e;
        if (adVar != null) {
            ec ecVar = ((cc) adVar).a;
            defpackage.mb4 mb4Var = ecVar.f;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            ecVar.f = null;
        }
    }
}
