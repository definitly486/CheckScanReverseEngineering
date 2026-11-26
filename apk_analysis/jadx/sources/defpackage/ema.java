package defpackage;

import com.google.android.gms.common.api.internal.f;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class ema implements Runnable {
    public final /* synthetic */ f b;

    public ema(f fVar) {
        this.b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.b;
        Lock lock = fVar.v;
        lock.lock();
        try {
            fVar.d();
        } finally {
            lock.unlock();
        }
    }
}
