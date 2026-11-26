package yads;

import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class ux2 implements Runnable {
    public final /* synthetic */ vx2 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ ll3 d;

    public ux2(vx2 vx2Var, long j, ll3 ll3Var) {
        this.b = vx2Var;
        this.c = j;
        this.d = ll3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a.postDelayed(this, this.c);
        this.d.invoke();
    }
}
