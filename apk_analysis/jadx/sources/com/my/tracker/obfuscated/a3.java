package com.my.tracker.obfuscated;

import android.os.Handler;
import defpackage.ct2;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class a3 {
    final Handler a = m.a;
    final AtomicBoolean b;
    final Runnable c;
    final long d;

    private a3(long j, Runnable runnable) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.b = atomicBoolean;
        this.d = j;
        this.c = new ct2(1, this, runnable);
        atomicBoolean.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable) {
        synchronized (this.b) {
            try {
                if (this.b.get()) {
                    c();
                    runnable.run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c() {
        this.a.removeCallbacks(this.c);
        this.b.set(true);
        this.a.postDelayed(this.c, this.d);
    }

    public boolean b() {
        boolean z;
        synchronized (this.b) {
            z = !this.b.get();
        }
        return z;
    }

    public void d() {
        synchronized (this.b) {
            try {
                if (a()) {
                    c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e() {
        synchronized (this.b) {
            try {
                if (this.b.get()) {
                    return;
                }
                c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f() {
        synchronized (this.b) {
            this.b.set(false);
            this.a.removeCallbacks(this.c);
        }
    }

    public static a3 a(long j, Runnable runnable) {
        return new a3(j, runnable);
    }

    public boolean a() {
        boolean z;
        synchronized (this.b) {
            z = !b();
        }
        return z;
    }
}
