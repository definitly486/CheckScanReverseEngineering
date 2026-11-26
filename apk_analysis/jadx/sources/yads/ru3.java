package yads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public final class ru3 implements su3 {
    public static final lu3 d = new lu3(2, C.TIME_UNSET);
    public static final lu3 e = new lu3(3, C.TIME_UNSET);
    public final ExecutorService a;
    public mu3 b;
    public IOException c;

    public ru3(String str) {
        this.a = u56.d("ExoPlayer:Loader:".concat(str));
    }

    public final long a(nu3 nu3Var, ku3 ku3Var, int i) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            defpackage.ud.g();
            return 0L;
        }
        this.c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        mu3 mu3Var = new mu3(this, looperMyLooper, nu3Var, ku3Var, i, jElapsedRealtime);
        if (this.b != null) {
            defpackage.ud.g();
            return 0L;
        }
        this.b = mu3Var;
        mu3Var.f = null;
        this.a.execute(mu3Var);
        return jElapsedRealtime;
    }

    public final boolean b() {
        return this.b != null;
    }

    public final void a(ou3 ou3Var) {
        mu3 mu3Var = this.b;
        if (mu3Var != null) {
            mu3Var.a(true);
        }
        if (ou3Var != null) {
            this.a.execute(new pu3(ou3Var));
        }
        this.a.shutdown();
    }

    @Override // yads.su3
    public final void a() throws IOException {
        a(Integer.MIN_VALUE);
    }

    public final void a(int i) throws IOException {
        IOException iOException = this.c;
        if (iOException == null) {
            mu3 mu3Var = this.b;
            if (mu3Var != null) {
                if (i == Integer.MIN_VALUE) {
                    i = mu3Var.b;
                }
                IOException iOException2 = mu3Var.f;
                if (iOException2 != null && mu3Var.g > i) {
                    throw iOException2;
                }
                return;
            }
            return;
        }
        throw iOException;
    }
}
