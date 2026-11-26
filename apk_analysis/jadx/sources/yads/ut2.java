package yads;

import android.os.SystemClock;
import defpackage.ll3;
import yads.ut2;

/* JADX INFO: loaded from: classes6.dex */
public final class ut2 {
    public final bw3 a = new bw3();

    public static final void a(long j, ll3 ll3Var, ll3 ll3Var2) {
        if (SystemClock.elapsedRealtime() - j <= 5000) {
            ll3Var.invoke();
        } else {
            ll3Var2.invoke();
        }
    }

    public final void a(final ll3 ll3Var, final ll3 ll3Var2) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        bw3 bw3Var = this.a;
        bw3Var.a.post(new Runnable() { // from class: rea
            @Override // java.lang.Runnable
            public final void run() {
                ut2.a(jElapsedRealtime, ll3Var, ll3Var2);
            }
        });
    }
}
