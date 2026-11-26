package defpackage;

import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes5.dex */
public final class p21 implements q21 {
    public final ScheduledFuture b;

    public p21(ScheduledFuture scheduledFuture) {
        this.b = scheduledFuture;
    }

    @Override // defpackage.q21
    public final void b(Throwable th) {
        this.b.cancel(false);
    }

    public final String toString() {
        return "CancelFutureOnCancel[" + this.b + ']';
    }
}
