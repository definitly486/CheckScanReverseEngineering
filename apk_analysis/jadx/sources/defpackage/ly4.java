package defpackage;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.internal.mlkit_common.zza;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class ly4 {
    public static final Object b = new Object();
    public static ly4 c;
    public final zza a;

    public ly4(Looper looper) {
        this.a = new zza(looper);
    }

    public static ly4 a() {
        ly4 ly4Var;
        synchronized (b) {
            try {
                ly4Var = c;
                if (ly4Var == null) {
                    HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                    handlerThread.start();
                    ly4 ly4Var2 = new ly4(handlerThread.getLooper());
                    c = ly4Var2;
                    ly4Var = ly4Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ly4Var;
    }

    public static Task b(Callable callable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        xlb.zza.execute(new edb(callable, taskCompletionSource));
        return taskCompletionSource.getTask();
    }
}
