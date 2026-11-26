package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzrr;
import com.google.android.gms.internal.mlkit_vision_barcode.zzra;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrc;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrd;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwp;
import com.google.android.gms.internal.mlkit_vision_barcode.zzws;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Closeable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class qb5<DetectionResultT> implements Closeable, LifecycleObserver {
    public static final GmsLogger f = new GmsLogger("MobileVisionBase", "");
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final ky4 c;
    public final CancellationTokenSource d;
    public final Executor e;

    public qb5(m1c m1cVar, Executor executor) {
        this.c = m1cVar;
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        this.d = cancellationTokenSource;
        this.e = executor;
        m1cVar.b.incrementAndGet();
        m1cVar.a(executor, zva.b, cancellationTokenSource.getToken()).addOnFailureListener(zya.b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public synchronized void close() {
        boolean z = true;
        if (this.b.getAndSet(true)) {
            return;
        }
        this.d.cancel();
        final ky4 ky4Var = this.c;
        Executor executor = this.e;
        if (ky4Var.b.get() <= 0) {
            z = false;
        }
        Preconditions.checkState(z);
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        ky4Var.a.a(new Runnable() { // from class: l1c
            @Override // java.lang.Runnable
            public final void run() {
                qc5 qc5Var = ky4Var;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                int iDecrementAndGet = qc5Var.b.decrementAndGet();
                Preconditions.checkState(iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    m1c m1cVar = (m1c) qc5Var;
                    synchronized (m1cVar) {
                        try {
                            m1cVar.e.zzb();
                            m1c.k = true;
                            zzrd zzrdVar = new zzrd();
                            zzra zzraVar = m1cVar.i ? zzra.TYPE_THICK : zzra.TYPE_THIN;
                            zzwp zzwpVar = m1cVar.f;
                            zzrdVar.zze(zzraVar);
                            zzrp zzrpVar = new zzrp();
                            zzrpVar.zzi(xva.a(m1cVar.d));
                            zzrdVar.zzg(zzrpVar.zzj());
                            zzwpVar.zzd(zzws.zzf(zzrdVar), zzrc.ON_DEVICE_BARCODE_CLOSE);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    qc5Var.c.set(false);
                }
                zzrr.zza();
                taskCompletionSource2.setResult(null);
            }
        }, executor);
        taskCompletionSource.getTask();
    }
}
