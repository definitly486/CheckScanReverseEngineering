package defpackage;

import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class vya implements Runnable {
    public final /* synthetic */ Task b;
    public final /* synthetic */ b3b c;

    public vya(b3b b3bVar, Task task) {
        this.b = task;
        this.c = b3bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Task task = this.b;
        boolean zIsCanceled = task.isCanceled();
        b3b b3bVar = this.c;
        lgc lgcVar = b3bVar.d;
        if (zIsCanceled) {
            lgcVar.d();
            return;
        }
        try {
            lgcVar.a(b3bVar.c.then(task));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                lgcVar.c((Exception) e.getCause());
            } else {
                lgcVar.c(e);
            }
        } catch (Exception e2) {
            lgcVar.c(e2);
        }
    }
}
