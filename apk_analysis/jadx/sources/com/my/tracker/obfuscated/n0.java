package com.my.tracker.obfuscated;

import androidx.collection.SieveCacheKt;
import defpackage.dq;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class n0 extends k2 {
    public void a(long j, y1 y1Var) {
        h2 h2VarA = a(y1Var.a());
        long jE = j - y1Var.e();
        if (b3.a()) {
            long jB = h2VarA.b();
            StringBuilder sb = new StringBuilder("TimeSpentCore: ForegroundTimeSpentsManager: ");
            sb.append(a(true));
            sb.append("slicing foreground TimeSpent, id = ");
            sb.append(y1Var.a());
            dq.d(sb, ", ", jB, "(existed ms) + ");
            sb.append(jE);
            dq.d(sb, "(add ms) = ", jB + jE, "(total ms), timestamp = ");
            sb.append(j);
            b3.a(sb.toString());
        }
        h2VarA.c(jE);
    }

    public void b(int i, long j, boolean z) throws Exception {
        y1 y1Var = (y1) this.a.get(i);
        if (y1Var == null) {
            b3.c("TimeSpent: " + a(z) + " can't stop foreground TimeSpent with id = " + i + " (reason: not found)");
            throw new Exception();
        }
        if (z) {
            a(j, y1Var);
        }
        this.a.remove(i);
        b3.c("TimeSpent: " + a(z) + "stopped foreground TimeSpent, id = " + i);
    }

    public void c(long j) {
        b3.a("TimeSpentCore: ForegroundTimeSpentsManager: " + a(true) + "updating all running foreground TimeSpents timestamps (size = " + this.a.size() + ", new timestamp = " + j + ")");
        a(j);
    }

    public void d(long j) {
        f(j);
    }

    public void e(long j) {
    }

    public void f(long j) {
        b3.a("TimeSpentCore: ForegroundTimeSpentsManager: " + a(true) + "slicing all running foreground TimeSpents (size = " + this.a.size() + ")");
        for (int i = 0; i < this.a.size(); i++) {
            a(j, (y1) this.a.valueAt(i));
        }
    }

    public ArrayList a(long j, boolean z) {
        b3.a("TimeSpentCore: ForegroundTimeSpentsManager: " + a(z) + "onTick: start collecting foreground TimeSpents");
        if (z) {
            f(j);
            a(j);
        }
        ArrayList arrayListA = a();
        this.b.clear();
        b3.a("TimeSpentCore: ForegroundTimeSpentsManager: " + a(z) + "onTick: collected " + arrayListA.size() + " foreground TimeSpents");
        return arrayListA;
    }

    public void b(long j) {
    }

    public void a(int i, long j, boolean z) {
        if (!z) {
            j = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        this.a.put(i, new z1(i, j));
        b3.c("TimeSpent: " + a(z) + "registered new foreground TimeSpent with id = " + i);
    }
}
