package defpackage;

import com.google.android.gms.internal.play_billing.zzdk;
import com.google.android.gms.internal.play_billing.zzp;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class zdc implements zzdk {
    public final WeakReference b;
    public final pdc c = new pdc(this);

    public zdc(zzp zzpVar) {
        this.b = new WeakReference(zzpVar);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzp zzpVar = (zzp) this.b.get();
        boolean zCancel = this.c.cancel(z);
        if (!zCancel || zzpVar == null) {
            return zCancel;
        }
        zzpVar.a = null;
        zzpVar.b = null;
        zzpVar.c.zzd(null);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.c.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.c.b instanceof x8b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.c.isDone();
    }

    public final String toString() {
        return this.c.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdk
    public final void zzb(Runnable runnable, Executor executor) {
        this.c.zzb(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.c.get(j, timeUnit);
    }
}
