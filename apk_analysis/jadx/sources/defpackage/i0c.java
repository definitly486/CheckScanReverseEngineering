package defpackage;

import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzlj;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class i0c implements Runnable {
    public final /* synthetic */ AtomicReference b;
    public final /* synthetic */ zzlj c;

    public i0c(zzlj zzljVar, AtomicReference atomicReference) {
        this.b = atomicReference;
        this.c = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.b;
        synchronized (atomicReference) {
            try {
                try {
                    zzlj zzljVar = this.c;
                    atomicReference.set(Integer.valueOf(zzljVar.a.zzc().zzm(zzljVar.a.zzv().zzj(), zzfy.zzad)));
                    this.b.notify();
                } catch (Throwable th) {
                    this.b.notify();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
