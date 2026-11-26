package defpackage;

import com.google.android.gms.internal.tasks.zza;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class hh5 implements OnCompleteListener {
    public static volatile hh5 e;
    public static final Object f = new Object();
    public final Object b;
    public final Object c;
    public final Object d;

    public hh5() {
        rf6 rf6Var = new rf6();
        rf6Var.a = new HashMap();
        rf6Var.b = new HashMap();
        this.d = rf6Var;
        qf6 qf6Var = new qf6();
        qf6Var.a = new HashMap();
        this.b = qf6Var;
        this.c = new eg9(4);
    }

    public static hh5 a() {
        if (e == null) {
            synchronized (f) {
                try {
                    if (e == null) {
                        e = new hh5();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ((zza) this.b).removeCallbacksAndMessages(null);
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.c;
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult(task.getResult());
        } else {
            if (task.isCanceled()) {
                ((iwa) this.d).a.b(null);
                return;
            }
            Exception exception = task.getException();
            Objects.requireNonNull(exception);
            taskCompletionSource.trySetException(exception);
        }
    }

    public /* synthetic */ hh5(zza zzaVar, TaskCompletionSource taskCompletionSource, iwa iwaVar) {
        this.b = zzaVar;
        this.c = taskCompletionSource;
        this.d = iwaVar;
    }
}
