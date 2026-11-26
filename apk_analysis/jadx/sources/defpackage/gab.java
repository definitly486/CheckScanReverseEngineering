package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzav;
import com.google.android.gms.internal.mlkit_vision_barcode.zzaw;
import com.google.android.gms.internal.mlkit_vision_barcode.zzba;
import com.google.android.gms.internal.mlkit_vision_barcode.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode.zzet;
import com.google.android.gms.internal.mlkit_vision_barcode.zzex;
import com.google.android.gms.internal.mlkit_vision_barcode.zzey;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public final class gab implements Runnable {
    public final /* synthetic */ int b = 0;
    public final Object c;
    public final Object d;

    public gab(zzet zzetVar, zzeh zzehVar) {
        this.c = zzetVar;
        this.d = zzehVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                zzeh zzehVar = (zzeh) obj2;
                Future future = (Future) obj;
                Throwable thZza = zzey.zza((zzex) future);
                if (thZza != null) {
                    zzehVar.zza(thZza);
                    return;
                }
                try {
                    if (!future.isDone()) {
                        throw new IllegalStateException(zzba.zzb("Future was expected to be done: %s", future));
                    }
                    boolean z = false;
                    Future future2 = future;
                    while (true) {
                        try {
                            Object obj3 = future2.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            zzehVar.zzb(obj3);
                            return;
                        } catch (InterruptedException unused) {
                            z = true;
                            future2 = future2;
                        } catch (Throwable th) {
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                } catch (ExecutionException e) {
                    zzehVar.zza(e.getCause());
                    return;
                } catch (Throwable th2) {
                    zzehVar.zza(th2);
                    return;
                }
                break;
            default:
                ebc ebcVar = (ebc) obj2;
                try {
                    Task taskThen = ebcVar.c.then(((Task) obj).getResult());
                    if (taskThen == null) {
                        ebcVar.onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    bec becVar = TaskExecutors.a;
                    taskThen.addOnSuccessListener(becVar, ebcVar);
                    taskThen.addOnFailureListener(becVar, ebcVar);
                    taskThen.addOnCanceledListener(becVar, ebcVar);
                    return;
                } catch (RuntimeExecutionException e2) {
                    if (e2.getCause() instanceof Exception) {
                        ebcVar.onFailure((Exception) e2.getCause());
                        return;
                    } else {
                        ebcVar.onFailure(e2);
                        return;
                    }
                } catch (CancellationException unused2) {
                    ebcVar.onCanceled();
                    return;
                } catch (Exception e3) {
                    ebcVar.onFailure(e3);
                    return;
                }
        }
    }

    public String toString() {
        switch (this.b) {
            case 0:
                zzav zzavVarZza = zzaw.zza(this);
                zzavVarZza.zza((zzeh) this.d);
                return zzavVarZza.toString();
            default:
                return super.toString();
        }
    }

    public gab(ebc ebcVar, Task task) {
        this.c = task;
        this.d = ebcVar;
    }
}
