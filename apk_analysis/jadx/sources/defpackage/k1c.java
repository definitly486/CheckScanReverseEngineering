package defpackage;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class k1c implements ecc {
    public final Executor b;
    public final Object c = new Object();
    public OnFailureListener d;

    public k1c(Executor executor, OnFailureListener onFailureListener) {
        this.b = executor;
        this.d = onFailureListener;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        if (task.isSuccessful() || task.isCanceled()) {
            return;
        }
        synchronized (this.c) {
            try {
                if (this.d == null) {
                    return;
                }
                this.b.execute(new dyb(this, task));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ecc
    public final void zzb() {
        synchronized (this.c) {
            this.d = null;
        }
    }
}
