package defpackage;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ulb implements ecc {
    public final Executor b;
    public final Object c = new Object();
    public OnCanceledListener d;

    public ulb(Executor executor, OnCanceledListener onCanceledListener) {
        this.b = executor;
        this.d = onCanceledListener;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        if (task.isCanceled()) {
            synchronized (this.c) {
                try {
                    if (this.d == null) {
                        return;
                    }
                    this.b.execute(new rhb(this));
                } catch (Throwable th) {
                    throw th;
                }
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
