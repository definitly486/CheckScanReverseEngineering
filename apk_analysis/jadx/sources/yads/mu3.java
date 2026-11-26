package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public final class mu3 extends Handler implements Runnable {
    public final int b;
    public final nu3 c;
    public final long d;
    public ku3 e;
    public IOException f;
    public int g;
    public Thread h;
    public boolean i;
    public volatile boolean j;
    public final /* synthetic */ ru3 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mu3(ru3 ru3Var, Looper looper, nu3 nu3Var, ku3 ku3Var, int i, long j) {
        super(looper);
        this.k = ru3Var;
        this.c = nu3Var;
        this.e = ku3Var;
        this.b = i;
        this.d = j;
    }

    public final void a(boolean z) {
        this.j = z;
        this.f = null;
        if (hasMessages(0)) {
            this.i = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                try {
                    this.i = true;
                    this.c.b();
                    Thread thread = this.h;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.k.b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ku3 ku3Var = this.e;
            ku3Var.getClass();
            ku3Var.a(this.c, jElapsedRealtime, jElapsedRealtime - this.d, true);
            this.e = null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.j) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            this.f = null;
            ru3 ru3Var = this.k;
            ExecutorService executorService = ru3Var.a;
            mu3 mu3Var = ru3Var.b;
            mu3Var.getClass();
            executorService.execute(mu3Var);
            return;
        }
        if (i == 3) {
            throw ((Error) message.obj);
        }
        this.k.b = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.d;
        ku3 ku3Var = this.e;
        ku3Var.getClass();
        if (this.i) {
            ku3Var.a(this.c, jElapsedRealtime, j, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 1) {
            try {
                ku3Var.a(this.c, jElapsedRealtime, j);
                return;
            } catch (RuntimeException e) {
                sv3.b("LoadTask", sv3.a("Unexpected exception handling load completed", e));
                this.k.c = new qu3(e);
                return;
            }
        }
        if (i2 != 2) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f = iOException;
        int i3 = this.g + 1;
        this.g = i3;
        lu3 lu3VarA = ku3Var.a(this.c, jElapsedRealtime, j, iOException, i3);
        int i4 = lu3VarA.a;
        if (i4 == 3) {
            this.k.c = this.f;
            return;
        }
        if (i4 != 2) {
            if (i4 == 1) {
                this.g = 1;
            }
            long jMin = lu3VarA.b;
            if (jMin == C.TIME_UNSET) {
                jMin = Math.min((this.g - 1) * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
            }
            ru3 ru3Var2 = this.k;
            if (ru3Var2.b != null) {
                defpackage.ud.g();
                return;
            }
            ru3Var2.b = this;
            if (jMin > 0) {
                sendEmptyMessageDelayed(0, jMin);
            } else {
                this.f = null;
                ru3Var2.a.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.i;
                this.h = Thread.currentThread();
            }
            if (!z) {
                b06.a("load:".concat(this.c.getClass().getSimpleName()));
                try {
                    this.c.a();
                    b06.a();
                } catch (Throwable th) {
                    b06.a();
                    throw th;
                }
            }
            synchronized (this) {
                this.h = null;
                Thread.interrupted();
            }
            if (this.j) {
                return;
            }
            sendEmptyMessage(1);
        } catch (IOException e) {
            if (this.j) {
                return;
            }
            obtainMessage(2, e).sendToTarget();
        } catch (Exception e2) {
            if (this.j) {
                return;
            }
            sv3.b("LoadTask", sv3.a("Unexpected exception loading stream", e2));
            obtainMessage(2, new qu3(e2)).sendToTarget();
        } catch (OutOfMemoryError e3) {
            if (this.j) {
                return;
            }
            sv3.b("LoadTask", sv3.a("OutOfMemory error loading stream", e3));
            obtainMessage(2, new qu3(e3)).sendToTarget();
        } catch (Error e4) {
            if (!this.j) {
                sv3.b("LoadTask", sv3.a("Unexpected error loading stream", e4));
                obtainMessage(3, e4).sendToTarget();
            }
            throw e4;
        }
    }
}
