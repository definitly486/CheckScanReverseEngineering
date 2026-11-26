package defpackage;

import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes5.dex */
public final class gp2 implements hp2 {
    public final ScheduledFuture b;

    public gp2(ScheduledFuture scheduledFuture) {
        this.b = scheduledFuture;
    }

    @Override // defpackage.hp2
    public final void dispose() {
        this.b.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.b + ']';
    }
}
