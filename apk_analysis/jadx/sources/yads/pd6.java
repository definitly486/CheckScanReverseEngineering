package yads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class pd6 {
    public final lx2 a = new lx2();
    public final ld6 b;
    public final od6 c;
    public boolean d;
    public Surface e;
    public float f;
    public float g;
    public float h;
    public float i;
    public int j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;

    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    public pd6(Context context) {
        ld6 ld6VarA;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            ld6VarA = u56.a >= 17 ? nd6.a(applicationContext) : null;
            if (ld6VarA == null) {
                WindowManager windowManager = (WindowManager) applicationContext.getSystemService("window");
                if (windowManager != null) {
                    ld6VarA = new md6(windowManager);
                } else {
                    ld6VarA = null;
                }
            }
        } else {
            ld6VarA = null;
        }
        this.b = ld6VarA;
        this.c = ld6VarA != null ? od6.f : null;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    public final void a(boolean z) {
        Surface surface;
        float f;
        if (u56.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE) {
            return;
        }
        if (this.d) {
            float f2 = this.g;
            if (f2 != -1.0f) {
                f = f2 * this.i;
            } else {
                f = 0.0f;
            }
        } else {
            f = 0.0f;
        }
        if (z || this.h != f) {
            this.h = f;
            jd6.a(surface, f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    public final void b() {
        float f;
        float f2;
        if (u56.a < 30 || this.e == null) {
            return;
        }
        if (this.a.a.a()) {
            lx2 lx2Var = this.a;
            if (lx2Var.a.a()) {
                kx2 kx2Var = lx2Var.a;
                long j = kx2Var.e;
                f = (float) (1.0E9d / (j != 0 ? kx2Var.f / j : 0L));
            } else {
                f = -1.0f;
            }
        } else {
            f = this.f;
        }
        float f3 = this.g;
        if (f == f3) {
            return;
        }
        if (f != -1.0f && f3 != -1.0f) {
            if (this.a.a.a()) {
                lx2 lx2Var2 = this.a;
                if ((lx2Var2.a.a() ? lx2Var2.a.f : C.TIME_UNSET) >= 5000000000L) {
                    f2 = 0.02f;
                } else {
                    f2 = 1.0f;
                }
            } else {
                f2 = 1.0f;
            }
            if (Math.abs(f - this.g) < f2) {
                return;
            }
        } else if (f == -1.0f && this.a.e < 30) {
            return;
        }
        this.g = f;
        a(false);
    }

    public final void a() {
        this.d = true;
        this.m = 0L;
        this.p = -1L;
        this.n = -1L;
        if (this.b != null) {
            od6 od6Var = this.c;
            od6Var.getClass();
            od6Var.c.sendEmptyMessage(1);
            this.b.a(new defpackage.fg2(this, 7));
        }
        a(false);
    }

    public final void a(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.k = refreshRate;
            this.l = (refreshRate * 80) / 100;
        } else {
            sv3.d("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.k = C.TIME_UNSET;
            this.l = C.TIME_UNSET;
        }
    }
}
