package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class aw3 {
    public final bw3 a;

    public aw3(bw3 bw3Var, rw5 rw5Var) {
        this.a = bw3Var;
    }

    public final void a(Runnable runnable) {
        if (rw5.a()) {
            runnable.run();
        } else {
            this.a.a.post(runnable);
        }
    }

    public final void a() {
        this.a.a.removeCallbacksAndMessages(null);
    }
}
