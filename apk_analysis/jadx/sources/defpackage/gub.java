package defpackage;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class gub implements ecc {
    public final Executor b;
    public final Object c = new Object();
    public OnCompleteListener d;

    public gub(Executor executor, OnCompleteListener onCompleteListener) {
        this.b = executor;
        this.d = onCompleteListener;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        synchronized (this.c) {
            try {
                if (this.d == null) {
                    return;
                }
                this.b.execute(new rpb(0, this, task));
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
