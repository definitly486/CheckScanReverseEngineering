package com.my.tracker.obfuscated;

import androidx.collection.SieveCacheKt;
import defpackage.dq;
import defpackage.pg;

/* JADX INFO: loaded from: classes4.dex */
public final class i {
    final y1 a = new z1(0, SieveCacheKt.NodeMetaAndPreviousMask);
    final h2 b = new j2(0);
    int c = 0;

    public i2 a(long j) {
        b3.a("TimeSpentCore: AppTimeManager: " + a() + "onTick: start collecting app TimeSpent");
        if (this.c != 0) {
            f(j);
            this.a.b(j);
        }
        h2 h2VarM9522clone = this.b.m9522clone();
        this.b.g();
        b3.a("TimeSpentCore: AppTimeManager: " + a() + "onTick: collected app TimeSpent (foregroundMs = " + h2VarM9522clone.b() + ", usefulBackgroundMs = " + h2VarM9522clone.c() + ")");
        if (h2VarM9522clone.b() == 0 && h2VarM9522clone.c() == 0) {
            return null;
        }
        return h2VarM9522clone;
    }

    public void b(long j) {
        if (this.c == 1) {
            this.a.b(j);
        }
    }

    public boolean c() {
        return this.c == 3;
    }

    public void d() {
        b3.a("TimeSpentCore: AppTimeManager: " + a(a(), "[FOREGROUND]"));
        this.c = 3;
    }

    public void e(long j) {
        if (this.c == 1) {
            f(j);
        }
    }

    public void f(long j) {
        long jE = j - this.a.e();
        if (b3.a()) {
            int i = this.c;
            h2 h2Var = this.b;
            long jB = i == 3 ? h2Var.b() : h2Var.c();
            StringBuilder sb = new StringBuilder("TimeSpentCore: AppTimeManager: ");
            sb.append(a());
            sb.append("slicing app TimeSpent, ");
            sb.append(jB);
            dq.d(sb, "(existed ms) + ", jE, "(add ms) = ");
            sb.append(jB + jE);
            sb.append("(total ms), timestamp = ");
            sb.append(j);
            b3.a(sb.toString());
        }
        int i2 = this.c;
        if (i2 == 1) {
            this.b.a(jE);
        } else if (i2 != 3) {
            b3.a("TimeSpentCore: AppTimeManager: trying to slice app time, but now is useless background state - skip");
        } else {
            this.b.c(jE);
        }
    }

    public void g(long j) {
        f(j);
        b3.a("TimeSpentCore: AppTimeManager: " + a(a(), "[BACKGROUND(useless)]"));
        this.c = 0;
    }

    public void h(long j) {
        this.a.b(j);
        b3.a("TimeSpentCore: AppTimeManager: " + a(a(), "[BACKGROUND(useful)]"));
        this.c = 1;
    }

    public void c(long j) {
        this.a.b(j);
    }

    public boolean b() {
        int i = this.c;
        return i == 1 || i == 0;
    }

    public void d(long j) {
        f(j);
    }

    public void a(int i) {
        if (i == 0) {
            b3.a("TimeSpentCore: AppTimeManager: " + a(a(), "[BACKGROUND(useless)]"));
            this.c = 0;
            return;
        }
        b3.a("TimeSpentCore: AppTimeManager: " + a(a(), "[BACKGROUND(useful)]"));
        this.c = 1;
    }

    private String a(String str, String str2) {
        return pg.g("app state changed ", str, "-> ", str2);
    }

    private String a() {
        int i = this.c;
        if (i == 0) {
            return "[BACKGROUND(useless)] ";
        }
        if (i == 1) {
            return "[BACKGROUND(useful)] ";
        }
        if (i != 3) {
            return "";
        }
        return "[FOREGROUND] ";
    }
}
