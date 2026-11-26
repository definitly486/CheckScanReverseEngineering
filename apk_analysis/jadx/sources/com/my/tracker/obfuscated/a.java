package com.my.tracker.obfuscated;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import defpackage.do2;
import defpackage.h51;
import defpackage.jj2;
import defpackage.no2;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    final i0 d;
    final c3 e;
    final a2 f;
    final Application g;
    final Map a = new WeakHashMap();
    final Handler b = m.a;
    final AtomicBoolean c = new AtomicBoolean();
    long k = 0;
    long l = 0;
    final Runnable h = new jj2(this, 4);
    final Runnable i = new no2(this, 1);
    final Runnable j = new h51(this, 4);

    /* JADX INFO: renamed from: com.my.tracker.obfuscated.a$a, reason: collision with other inner class name */
    public final class C0153a implements Application.ActivityLifecycleCallbacks {
        public C0153a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            a.this.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            a.this.c(activity);
        }
    }

    private a(i0 i0Var, c3 c3Var, a2 a2Var, Application application) {
        this.d = i0Var;
        this.e = c3Var;
        this.f = a2Var;
        this.g = application;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        t1.a(this.g).d(z2.b(this.k));
    }

    public void a(long j) {
        this.b.removeCallbacks(this.h);
        this.c.set(true);
        this.b.postDelayed(this.h, j);
        this.l = System.currentTimeMillis() + j;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(Activity activity) {
        if (this.a.put(activity, Boolean.TRUE) != null || this.a.size() > 1) {
            return;
        }
        p2.d().a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.k >= z2.a(this.e.i())) {
            this.f.c();
            if (this.e.v()) {
                this.d.g();
                a(z2.a(this.e.e()));
                return;
            }
        }
        long j = this.l - jCurrentTimeMillis;
        if (j > 0) {
            a(j);
        } else {
            f();
        }
    }

    public void c(Activity activity) {
        if (this.a.remove(activity) == null || !this.a.isEmpty()) {
            return;
        }
        p2.d().b();
        this.c.set(false);
        this.b.removeCallbacks(this.h);
        this.k = System.currentTimeMillis();
        m.a(this.j);
    }

    public void e() {
        if (this.c.get()) {
            m.f(this.i);
        }
    }

    public void f() {
        b3.a("ActivityHandler: timer tick for buffering period");
        this.d.a();
        e();
    }

    public void d(Activity activity) {
        m.f(new do2(1, this, activity));
    }

    public static a a(i0 i0Var, c3 c3Var, a2 a2Var, Application application) {
        return new a(i0Var, c3Var, a2Var, application);
    }

    public void a() {
        this.g.registerActivityLifecycleCallbacks(new C0153a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        a(z2.a(this.e.e()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (this.c.get()) {
            f();
        }
    }
}
