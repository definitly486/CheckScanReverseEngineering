package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes3.dex */
public final class u47 {
    public boolean a;
    public final Handler b = new Handler(Looper.getMainLooper(), new a());

    public static final class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((e47) message.obj).recycle();
            return true;
        }
    }

    public final synchronized void a(e47<?> e47Var, boolean z) {
        try {
            if (this.a || z) {
                this.b.obtainMessage(1, e47Var).sendToTarget();
            } else {
                this.a = true;
                e47Var.recycle();
                this.a = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
