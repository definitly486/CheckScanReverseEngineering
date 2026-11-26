package defpackage;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class iv5 implements Runnable {
    public final /* synthetic */ gt.a b;

    public iv5(gt.a aVar) {
        this.b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gt.a aVar = this.b;
        long j = aVar.a;
        long jMax = Math.max(2 * j, j);
        if (gt.this.a.compareAndSet(j, jMax)) {
            gt.b.log(Level.WARNING, "Increased {0} to {1}", new Object[]{"keepalive time nanos", Long.valueOf(jMax)});
        }
    }
}
