package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class i6c implements ecc {
    public final Executor b;
    public final Object c = new Object();
    public OnSuccessListener d;

    public i6c(Executor executor, OnSuccessListener onSuccessListener) {
        this.b = executor;
        this.d = onSuccessListener;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        if (task.isSuccessful()) {
            synchronized (this.c) {
                try {
                    if (this.d == null) {
                        return;
                    }
                    this.b.execute(new c4c(this, task));
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
