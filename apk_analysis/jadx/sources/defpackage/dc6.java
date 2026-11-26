package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.material3.internal.CalendarModelKt;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.posthog.internal.replay.PostHogSessionReplayHandler;
import java.util.Timer;

/* JADX INFO: loaded from: classes4.dex */
public final class dc6 implements DefaultLifecycleObserver, ac6 {
    public static volatile boolean i;
    public final ta6 b;
    public final az4 c;
    public final Lifecycle d;
    public final Object e;
    public final Timer f;
    public cc6 g;
    public oa6 h;

    public dc6(Context context, ta6 ta6Var, az4 az4Var) {
        Lifecycle lifecycle = ProcessLifecycleOwner.Companion.get().getLifecycle();
        lifecycle.getClass();
        this.b = ta6Var;
        this.c = az4Var;
        this.d = lifecycle;
        this.e = new Object();
        this.f = new Timer(true);
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
    }

    @Override // defpackage.ac6
    public final void b(bc6 bc6Var) {
        if (i) {
            return;
        }
        i = true;
        try {
            this.h = (oa6) bc6Var;
            if (Thread.currentThread().getId() == ((Looper) this.c.b).getThread().getId()) {
                this.d.addObserver(this);
            } else {
                ((Handler) this.c.c).post(new oh(this, 2));
            }
        } catch (Throwable th) {
            this.b.v.a("Failed to install PostHogLifecycleObserverIntegration: " + th);
        }
    }

    public final void c() {
        synchronized (this.e) {
            try {
                cc6 cc6Var = this.g;
                if (cc6Var != null) {
                    cc6Var.cancel();
                }
                this.g = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        c();
        Object obj = yd6.a;
        yd6.h = false;
        yd6.b();
        oa6 oa6Var = this.h;
        if (oa6Var != null) {
            oa6Var.C();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        boolean z;
        ic6 ic6Var;
        lifecycleOwner.getClass();
        long jCurrentTimeMillis = this.b.I.currentTimeMillis();
        synchronized (yd6.a) {
            z = false;
            if (!yd6.g) {
                long j = yd6.e;
                if (j > 0 && j + CalendarModelKt.MillisecondsIn24Hours <= jCurrentTimeMillis) {
                    z = true;
                }
            }
        }
        yd6.b();
        yd6.h = true;
        oa6 oa6Var = this.h;
        if (oa6Var != null) {
            oa6Var.flush();
        }
        if (!z) {
            synchronized (this.e) {
                c();
                cc6 cc6Var = new cc6(this);
                this.g = cc6Var;
                this.f.schedule(cc6Var, 1800000L);
                j59 j59Var = j59.a;
            }
            return;
        }
        c();
        oa6 oa6Var2 = this.h;
        if (oa6Var2 != null) {
            oa6Var2.l();
        }
        oa6 oa6Var3 = this.h;
        if (oa6Var3 == null || !oa6Var3.h()) {
            return;
        }
        PostHogSessionReplayHandler postHogSessionReplayHandler = oa6Var3.y;
        if (postHogSessionReplayHandler != null) {
            if (postHogSessionReplayHandler.isActive()) {
                postHogSessionReplayHandler.stop();
            }
        } else {
            ta6 ta6Var = oa6Var3.f;
            if (ta6Var == null || (ic6Var = ta6Var.v) == null) {
                return;
            }
            ic6Var.a("Session replay isn't installed.");
        }
    }
}
