package androidx.compose.ui;

import android.os.Handler;
import android.os.Looper;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class Actual_androidKt {
    private static final Handler handler = new Handler(Looper.getMainLooper());

    public static final Object postDelayed(long j, final ll3<j59> ll3Var) {
        Runnable runnable = new Runnable() { // from class: t7
            @Override // java.lang.Runnable
            public final void run() {
                ll3Var.invoke();
            }
        };
        handler.postDelayed(runnable, j);
        return runnable;
    }

    public static final void removePost(Object obj) {
        if ((obj instanceof Runnable ? (Runnable) obj : null) == null) {
            return;
        }
        handler.removeCallbacks((Runnable) obj);
    }
}
