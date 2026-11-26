package defpackage;

import com.google.android.gms.tasks.OnCanceledListener;

/* JADX INFO: loaded from: classes4.dex */
public final class rhb implements Runnable {
    public final /* synthetic */ ulb b;

    public rhb(ulb ulbVar) {
        this.b = ulbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ulb ulbVar = this.b;
        synchronized (ulbVar.c) {
            try {
                OnCanceledListener onCanceledListener = ulbVar.d;
                if (onCanceledListener != null) {
                    onCanceledListener.onCanceled();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
