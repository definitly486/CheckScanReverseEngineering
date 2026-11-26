package yads;

import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class pk2 extends Thread {
    public final tk2 b;
    public final uk2 c;
    public final rk2 d;
    public final boolean e;
    public final int f;
    public volatile nk2 g;
    public volatile boolean h;
    public Exception i;
    public long j = -1;

    public pk2(tk2 tk2Var, uk2 uk2Var, rk2 rk2Var, boolean z, int i, nk2 nk2Var) {
        this.b = tk2Var;
        this.c = uk2Var;
        this.d = rk2Var;
        this.e = z;
        this.f = i;
        this.g = nk2Var;
    }

    public final void a(long j, long j2, float f) {
        this.d.a = j2;
        this.d.b = f;
        if (j != this.j) {
            this.j = j;
            nk2 nk2Var = this.g;
            if (nk2Var != null) {
                nk2Var.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.e) {
                this.c.remove();
            } else {
                long j = -1;
                int i = 0;
                while (!this.h) {
                    try {
                        this.c.a(this);
                        break;
                    } catch (IOException e) {
                        if (!this.h) {
                            long j2 = this.d.a;
                            if (j2 != j) {
                                i = 0;
                                j = j2;
                            }
                            int i2 = i + 1;
                            if (i2 > this.f) {
                                throw e;
                            }
                            Thread.sleep(Math.min(i * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH));
                            i = i2;
                        }
                    }
                }
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            this.i = e2;
        }
        nk2 nk2Var = this.g;
        if (nk2Var != null) {
            nk2Var.obtainMessage(9, this).sendToTarget();
        }
    }

    public final void a(boolean z) {
        if (z) {
            this.g = null;
        }
        if (this.h) {
            return;
        }
        this.h = true;
        this.c.cancel();
        interrupt();
    }
}
