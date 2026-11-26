package com.my.tracker.obfuscated;

import android.os.SystemClock;
import defpackage.lh;
import defpackage.rc6;
import defpackage.x1a;
import defpackage.z1a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class m2 {
    final d3 a;
    final a3 b;
    protected boolean h = false;
    protected f3 i = f3.j;
    final a c = b();
    final n0 d = new n0();
    final c e = new c();
    final a0 f = new a0();
    final i g = new i();

    public final class a {
        final int[] a = {0};
        final int[] b = {0};

        public a() {
        }

        private boolean d(int i) {
            for (int i2 : this.b) {
                if (i == i2) {
                    b3.c("TimeSpentCore: you can't create timespent with id = " + i + " (reason: reserved for internal use)");
                    return true;
                }
            }
            return false;
        }

        private boolean e(int i) {
            for (int i2 : this.a) {
                if (i == i2) {
                    b3.c("TimeSpentCore: you can't create timespent with id = " + i + " (reason: reserved for internal use)");
                    return true;
                }
            }
            return false;
        }

        public boolean a(int i) {
            if (e(i)) {
                return false;
            }
            if (m2.this.e.b(i)) {
                b3.c("TimeSpent: you can't create timespent with id = " + i + " (reason: already have same type timespent with this id)");
                return false;
            }
            if (!m2.this.d.b(i) && !m2.this.f.a(i)) {
                return true;
            }
            b3.c("TimeSpent: you can't create timespent with id = " + i + " (reason: already have another type timespent with this id)");
            return false;
        }

        public boolean b(int i) {
            if (e(i)) {
                return false;
            }
            if (m2.this.d.b(i)) {
                b3.c("TimeSpent: you can't create timespent with id = " + i + " (reason: already have same type timespent with this id)");
                return false;
            }
            if (!m2.this.e.b(i) && !m2.this.f.a(i)) {
                return true;
            }
            b3.c("TimeSpent: you can't create timespent with id = " + i + " (reason: already have another type timespent with this id)");
            return false;
        }

        public boolean c(int i) {
            if (d(i)) {
                return false;
            }
            if (!m2.this.d.b(i) && !m2.this.e.b(i)) {
                return true;
            }
            b3.c("TimeSpent: you can't create timespent with id = " + i + " (reason: already have another type timespent with this id)");
            return false;
        }
    }

    public m2(long j, d3 d3Var) {
        this.a = d3Var;
        this.b = a3.a(j, new rc6(this, 3));
        b3.a("TimeSpentCore: created");
    }

    public synchronized u2 a(long j, long j2) {
        b3.a("TimeSpentCore: start collecting DTO data, tickTimestamp = " + j2);
        boolean zC = this.g.c();
        ArrayList arrayListA = this.f.a();
        ArrayList arrayListA2 = this.e.a(j, zC);
        ArrayList arrayListA3 = this.d.a(j, zC);
        i2 i2VarA = this.g.a(j);
        ArrayList arrayList = new ArrayList(arrayListA2.size() + arrayListA3.size());
        arrayList.addAll(arrayListA2);
        arrayList.addAll(arrayListA3);
        u2 u2Var = new u2(j2, i2VarA, (i2[]) arrayList.toArray(new i2[0]), (y[]) arrayListA.toArray(new y[0]));
        if (!b3.a()) {
            return u2Var;
        }
        b3.a("TimeSpentCore: collected DTO data:\n" + u2Var);
        return u2Var;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void d(long j) {
        b3.a("TimeSpentCore: ***** app is going to foreground *****");
        if (this.g.c()) {
            b3.a("TimeSpentCore: something went wrong, already in FOREGROUND state. Skip");
            return;
        }
        this.d.e(j);
        this.e.e(j);
        this.g.e(j);
        this.g.d();
        this.d.c(j);
        this.e.c(j);
        this.g.c(j);
        if (this.b.b()) {
            b3.a("TimeSpentCore: starting ticker... (reason: app going to foreground)");
            this.b.e();
        }
        b3.a("TimeSpentCore: ***** app is on foreground *****");
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public synchronized void g(long j, int i) {
        try {
            this.e.b(i, j, this.g.c());
            if (this.g.b() && this.e.b() == 0) {
                this.g.g(j);
                b3.a("TimeSpentCore: there was last anytime TimeSpent during background state, stop tracking app useful background");
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized void h(long j, int i) {
        try {
            this.d.b(i, j, this.g.c());
        } catch (Exception unused) {
        }
    }

    public void e() {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        m.c(new Runnable() { // from class: y1a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.d(jUptimeMillis);
            }
        });
    }

    public void f() {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        m.c(new Runnable() { // from class: c2a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(jUptimeMillis, jCurrentTimeMillis);
            }
        });
    }

    public void d() {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        m.c(new Runnable() { // from class: w1a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.c(jUptimeMillis);
            }
        });
    }

    public synchronized void c() throws Throwable {
        try {
            try {
                b3.a("TimeSpentCore: ***** start generating zero tick *****");
                long jUptimeMillis = SystemClock.uptimeMillis();
                long jCurrentTimeMillis = System.currentTimeMillis();
                this.f.b(0);
                b(jUptimeMillis, jCurrentTimeMillis, this.h, this.i);
                b3.a("TimeSpentCore: ***** zero tick generated *****");
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public void b(f3 f3Var) {
        this.i = f3Var;
    }

    public void b(final Boolean bool) {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        m.c(new Runnable() { // from class: u1a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(bool, jUptimeMillis, jCurrentTimeMillis);
            }
        });
    }

    public void b(final int i, boolean z) {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        if (z) {
            m.c(new Runnable() { // from class: t1a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.g(jUptimeMillis, i);
                }
            });
        } else {
            m.c(new Runnable() { // from class: v1a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.h(jUptimeMillis, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j, long j2) {
        b(j, j2, this.h, this.i);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void f(long j, int i) {
        if (this.c.b(i)) {
            this.d.a(i, j, this.g.c());
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized void c(int i) {
        if (this.c.c(i)) {
            this.f.b(i);
            if (this.b.b()) {
                b3.a("TimeSpentCore: starting ticker... (reason: incremented count based TimeSpent)");
                this.b.e();
            }
        }
    }

    public synchronized void b(long j, long j2, boolean z, f3 f3Var) {
        try {
            b3.a("TimeSpentCore: ***** onTick started ***** timestamp = " + j2);
            if (this.g.b() && this.e.b() == 0 && this.b.a()) {
                b3.a("TimeSpentCore: onTick: stopping ticker... (reason: no useful background)");
                this.b.f();
            }
            u2 u2VarA = a(j, j2);
            b3.a("TimeSpentCore: ***** onTick finished *****");
            this.a.a(u2VarA, Boolean.valueOf(z), f3Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public a b() {
        return new a();
    }

    public void a(Boolean bool) {
        this.h = bool.booleanValue();
    }

    public void a() {
        m.c(new lh(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool, long j, long j2) {
        m2 m2Var;
        boolean zBooleanValue = bool.booleanValue();
        boolean z = this.h;
        if (zBooleanValue != z) {
            m2Var = this;
            m2Var.a(j, j2, z, this.i);
        } else {
            m2Var = this;
        }
        m2Var.h = bool.booleanValue();
    }

    public void a(f3 f3Var) {
        m.c(new z1a(this, f3Var, 0, SystemClock.uptimeMillis(), System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f3 f3Var, long j, long j2) {
        m2 m2Var;
        if (l.a(this.i.g, f3Var.g) != 0) {
            m2Var = this;
            m2Var.a(j, j2, this.h, this.i);
        } else {
            m2Var = this;
        }
        m2Var.i = f3Var;
    }

    public void a(final int i, boolean z) {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        if (z) {
            m.c(new Runnable() { // from class: a2a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.e(jUptimeMillis, i);
                }
            });
        } else {
            m.c(new Runnable() { // from class: b2a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.f(jUptimeMillis, i);
                }
            });
        }
    }

    public void a(int i) {
        m.c(new x1a(this, i, 0));
    }

    public synchronized void a(long j, long j2, boolean z, f3 f3Var) {
        this.b.d();
        b(j, j2, z, f3Var);
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void c(long j) {
        b3.a("TimeSpentCore: ***** app is going to background *****");
        if (this.g.b()) {
            b3.a("TimeSpentCore: something went wrong, already in BACKGROUND state. Skip");
            return;
        }
        this.d.d(j);
        this.e.d(j);
        this.g.d(j);
        this.g.a(this.e.b());
        this.d.b(j);
        this.e.b(j);
        this.g.b(j);
        b3.a("TimeSpentCore: ***** app is on background *****");
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized void e(long j, int i) {
        if (this.c.a(i)) {
            this.e.a(i, j, this.g.c());
            if (this.g.b() && this.e.b() == 1) {
                this.g.h(j);
                b3.a("TimeSpentCore: this is first anytime TimeSpent during background state, start tracking app useful background");
                this.b.e();
                b3.a("TimeSpentCore: starting ticker... (reason: first anytime timeSpent during background state)");
            }
        }
    }
}
