package yads;

import androidx.work.WorkRequest;

/* JADX INFO: loaded from: classes6.dex */
public final class tl0 implements sh5 {
    public final /* synthetic */ ul0 a;

    public tl0(ul0 ul0Var) {
        this.a = ul0Var;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        ul0 ul0Var = this.a;
        long j2 = (((long) ul0Var.d.i) * j) / 1000000;
        long j3 = ul0Var.b;
        long j4 = ul0Var.c;
        int i = u56.a;
        uh5 uh5Var = new uh5(j, Math.max(j3, Math.min(((((j4 - j3) * j2) / ul0Var.f) + j3) - WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, j4 - 1)));
        return new qh5(uh5Var, uh5Var);
    }

    @Override // yads.sh5
    public final long c() {
        ul0 ul0Var = this.a;
        return (ul0Var.f * 1000000) / ((long) ul0Var.d.i);
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
