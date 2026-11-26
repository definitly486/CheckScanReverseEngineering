package com.my.tracker.obfuscated;

import android.content.Context;
import com.my.tracker.MyTrackerParams;
import com.my.tracker.obfuscated.f3;
import defpackage.me7;
import defpackage.zp0;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class p2 implements y2, x2 {
    private static volatile p2 g;
    final m2 a = new m2(l2.a, new zp0(this, 3));
    private c3 b;
    private Context c;
    s2 d;
    q2 e;
    o2 f;

    private p2() {
    }

    public static p2 c() {
        p2 p2Var;
        p2 p2Var2 = g;
        if (p2Var2 != null) {
            return p2Var2;
        }
        synchronized (p2.class) {
            try {
                p2Var = g;
                if (p2Var == null) {
                    p2Var = new p2();
                    g = p2Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return p2Var;
    }

    public static x2 d() {
        return c();
    }

    public static y2 e() {
        return c();
    }

    @Override // com.my.tracker.obfuscated.x2
    public void a(c3 c3Var, Context context) {
        t2 t2VarA = t2.a(700, c3Var, context);
        this.d = t2VarA;
        this.e = q2.a(10, c3Var, t2VarA);
        final m2 m2Var = this.a;
        Objects.requireNonNull(m2Var);
        v vVar = new v() { // from class: z4a
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                m2Var.a((Boolean) obj);
            }
        };
        final m2 m2Var2 = this.a;
        Objects.requireNonNull(m2Var2);
        c3Var.a(vVar, new v() { // from class: a5a
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                m2Var2.b((Boolean) obj);
            }
        });
        MyTrackerParams myTrackerParamsM = c3Var.m();
        final m2 m2Var3 = this.a;
        Objects.requireNonNull(m2Var3);
        v vVar2 = new v() { // from class: b5a
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                m2Var3.b((f3) obj);
            }
        };
        final m2 m2Var4 = this.a;
        Objects.requireNonNull(m2Var4);
        myTrackerParamsM.a(vVar2, new v() { // from class: c5a
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                m2Var4.a((f3) obj);
            }
        });
        this.a.a();
        this.f = new o2();
        this.c = context;
        this.b = c3Var;
        b3.a("TimeSpentModule: TimeSpentModule initialized");
    }

    @Override // com.my.tracker.obfuscated.y2
    public synchronized void b(int i, boolean z) {
        b3.a("TimeSpentModule: stopTimeSpent id = " + i + ", canUseInBackground = " + z);
        if (this.d != null) {
            this.a.b(i, z);
            return;
        }
        b3.c("TimeSpent: An error occurred during initialization, TimeSpent functionality is not available (called stopTimeSpent id = " + i + ")");
    }

    @Override // com.my.tracker.obfuscated.x2
    public synchronized void b() {
        b3.a("TimeSpentModule: onAppGoingBackground");
        if (this.d == null) {
            b3.a("TimeSpentModule: An error occurred during initialization, TimeSpent functionality is not available");
        } else {
            this.a.d();
        }
    }

    public void b(u2 u2Var, Boolean bool, f3 f3Var) {
        b3.a("TimeSpentModule: core tick DTO collected, sending to repository...");
        if (this.d == null) {
            b3.b("TimeSpentModule: repository was not created, can't store and send this packet, drop");
            return;
        }
        if (this.f == null) {
            b3.a("TimeSpentModule: packetGenerator was not initialized, drop");
        } else if (this.b == null) {
            b3.a("TimeSpentModule: config is not specified, drop");
        } else {
            m.d(new me7(this, u2Var, bool, f3Var, 1));
        }
    }

    @Override // com.my.tracker.obfuscated.x2
    public synchronized void a() {
        b3.a("TimeSpentModule: onAppGoingForeground");
        if (this.d == null) {
            b3.a("TimeSpentModule: An error occurred during initialization, TimeSpent functionality is not available");
        } else {
            this.a.e();
        }
    }

    @Override // com.my.tracker.obfuscated.y2
    public synchronized void a(int i, boolean z) {
        b3.a("TimeSpentModule: startTimeSpent id = " + i + ", canUseInBackground = " + z);
        if (this.d == null) {
            b3.c("TimeSpent: An error occurred during initialization, TimeSpent functionality is not available (called startTimeSpent id = " + i + ")");
            return;
        }
        this.a.a(i, z);
    }

    @Override // com.my.tracker.obfuscated.y2
    public synchronized void a(int i) {
        b3.a("TimeSpentModule: incrementEventTimeSpent id = " + i);
        if (this.d == null) {
            b3.c("TimeSpent: An error occurred during initialization, TimeSpent functionality is not available (called incrementEventTimeSpent id = " + i + ")");
            return;
        }
        this.a.a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(u2 u2Var, Boolean bool, f3 f3Var) {
        if (!v2.a(u2Var)) {
            b3.a("TimeSpentModule: collected dto data is empty, no need to send");
            return;
        }
        if (!v2.c(u2Var)) {
            b3.a("TimeSpentModule: collected dto data is corrupted, sending anyway");
        }
        try {
            this.d.a(u2Var.c(), this.f.a(bool.booleanValue(), this.b.o(), f3Var, u2Var, this.b.h(), this.b.n(), this.c));
            b3.a("TimeSpentModule: successfully stored new time spent tick in repository, notifying sender...");
            this.e.c();
        } catch (Exception unused) {
            b3.b("TimeSpentModule: something went wrong while storing new timeSpentTick in repository, this tick didn't stored and wouldn't be sent");
        }
    }
}
