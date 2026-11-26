package yads;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class rl0 implements vc6 {
    public final t5 a;
    public final hl4 b;
    public final jd0 c;
    public final AtomicInteger d;

    public rl0(t5 t5Var, int i, hl4 hl4Var, jd0 jd0Var) {
        this.a = t5Var;
        this.b = hl4Var;
        this.c = jd0Var;
        this.d = new AtomicInteger(i);
    }

    @Override // yads.vc6
    public final void a() {
        if (this.d.decrementAndGet() == 0) {
            this.a.a(s5.VIDEO_CACHING);
            this.b.a();
        }
    }

    @Override // yads.vc6
    public final void b() {
        if (this.d.getAndSet(0) > 0) {
            this.a.a(s5.VIDEO_CACHING);
            this.c.a(id0.FAILED_TO_CREATE_DOWNLOAD_MANAGER);
            this.b.a();
        }
    }

    @Override // yads.vc6
    public final void c() {
    }
}
