package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class zp4 {
    public static final xp4 g = new xp4();
    public static final long h = 1000;
    public static volatile zp4 i;
    public final wp4 c;
    public boolean e;
    public boolean f;
    public final Object a = new Object();
    public final Handler b = new Handler(Looper.getMainLooper());
    public final tp4 d = new tp4();

    public zp4(Context context) {
        this.c = new wp4(context);
    }

    public final void a(d96 d96Var) {
        synchronized (this.a) {
            try {
                this.d.b(d96Var);
                if (!this.d.a()) {
                    this.c.c.getClass();
                    z75.a("om_sdk_js_request_tag");
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(d96 d96Var) {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.f;
                if (!z) {
                    this.d.a(d96Var);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            d96Var.a();
        } else {
            a();
        }
    }

    public final void c() {
        synchronized (this.a) {
            this.b.removeCallbacksAndMessages(null);
            this.e = false;
            j59 j59Var = j59.a;
        }
    }

    public final void b() {
        this.b.postDelayed(new defpackage.no2(this, 2), h);
    }

    public final void a() {
        boolean z;
        synchronized (this.a) {
            try {
                if (this.e) {
                    z = false;
                } else {
                    z = true;
                    this.e = true;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            b();
            this.c.a(new yp4(this));
        }
    }

    public static final void a(zp4 zp4Var) {
        zp4Var.c.c.getClass();
        z75.a("om_sdk_js_request_tag");
        synchronized (zp4Var.a) {
            zp4Var.f = true;
            j59 j59Var = j59.a;
        }
        zp4Var.c();
        zp4Var.d.b();
    }
}
