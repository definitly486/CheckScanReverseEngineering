package defpackage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public final class c4c implements Runnable {
    public final /* synthetic */ Task b;
    public final /* synthetic */ i6c c;

    public c4c(i6c i6cVar, Task task) {
        this.b = task;
        this.c = i6cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i6c i6cVar = this.c;
        synchronized (i6cVar.c) {
            try {
                OnSuccessListener onSuccessListener = i6cVar.d;
                if (onSuccessListener != null) {
                    onSuccessListener.onSuccess(this.b.getResult());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
