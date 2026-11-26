package defpackage;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class b3b implements ecc {
    public final Executor b;
    public final Continuation c;
    public final lgc d;

    public b3b(Executor executor, Continuation continuation, lgc lgcVar) {
        this.b = executor;
        this.c = continuation;
        this.d = lgcVar;
    }

    @Override // defpackage.ecc
    public final void a(Task task) {
        this.b.execute(new vya(this, task));
    }

    @Override // defpackage.ecc
    public final void zzb() {
        throw new UnsupportedOperationException();
    }
}
