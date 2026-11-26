package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b13 extends r22 {
    public static final /* synthetic */ int f = 0;
    public long c;
    public boolean d;
    public fr<io2<?>> e;

    public final void k0(boolean z) {
        long j = this.c - (z ? 4294967296L : 1L);
        this.c = j;
        if (j <= 0 && this.d) {
            shutdown();
        }
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        zd3.b(i);
        return str != null ? new wh5(this, str) : this;
    }

    public final void n0(io2<?> io2Var) {
        fr<io2<?>> frVar = this.e;
        if (frVar == null) {
            frVar = new fr<>();
            this.e = frVar;
        }
        frVar.addLast(io2Var);
    }

    public final void q0(boolean z) {
        this.c = (z ? 4294967296L : 1L) + this.c;
        if (z) {
            return;
        }
        this.d = true;
    }

    public long r0() {
        return !u0() ? Long.MAX_VALUE : 0L;
    }

    public void shutdown() {
    }

    public final boolean u0() {
        io2<?> io2VarP;
        fr<io2<?>> frVar = this.e;
        if (frVar == null || (io2VarP = frVar.p()) == null) {
            return false;
        }
        io2VarP.run();
        return true;
    }
}
