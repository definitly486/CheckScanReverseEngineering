package yads;

import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class z16 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = a26.i;
        if (handler != null) {
            handler.post(a26.j);
            a26.i.postDelayed(a26.k, 200L);
        }
    }
}
