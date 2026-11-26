package com.my.tracker.obfuscated;

import defpackage.dq;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class c extends k2 {
    public void a(long j, y1 y1Var, boolean z) {
        h2 h2VarA = a(y1Var.a());
        long jE = j - y1Var.e();
        if (b3.a()) {
            long jB = z ? h2VarA.b() : h2VarA.c();
            StringBuilder sb = new StringBuilder("TimeSpentCore: AnytimeTimeSpentsManager: ");
            sb.append(a(z));
            sb.append("slicing anytime TimeSpent, id = ");
            sb.append(y1Var.a());
            dq.d(sb, ", ", jB, "(existed ms) + ");
            sb.append(jE);
            dq.d(sb, "(add ms) = ", jB + jE, "(total ms), timestamp = ");
            sb.append(j);
            b3.a(sb.toString());
        }
        if (z) {
            h2VarA.c(jE);
        } else {
            h2VarA.a(jE);
        }
    }

    public void b(int i, long j, boolean z) throws Exception {
        y1 y1Var = (y1) this.a.get(i);
        if (y1Var == null) {
            b3.c("TimeSpent: " + a(z) + "can't stop anytime TimeSpent with id = " + i + " (reason: not found)");
            throw new Exception();
        }
        a(j, y1Var, z);
        this.a.remove(i);
        b3.c("TimeSpent: " + a(z) + "stopped anytime TimeSpent, id = " + i);
    }

    public void c(long j) {
        b3.a("TimeSpentCore: AnytimeTimeSpentsManager: " + a(true) + "updating all running anytime TimeSpents timestamps (size = " + this.a.size() + ", new timestamp = " + j + ")");
        a(j);
    }

    public void d(long j) {
        b(j, true);
    }

    public void e(long j) {
        b(j, false);
    }

    public void b(long j) {
        b3.a("TimeSpentCore: AnytimeTimeSpentsManager: " + a(false) + "updating all running anytime TimeSpents timestamps (size = " + this.a.size() + ", new timestamp = " + j + ")");
        a(j);
    }

    public void b(long j, boolean z) {
        b3.a("TimeSpentCore: AnytimeTimeSpentsManager: " + a(z) + "slicing all running anytime TimeSpents (size = " + this.a.size() + ")");
        for (int i = 0; i < this.a.size(); i++) {
            a(j, (y1) this.a.valueAt(i), z);
        }
    }

    public ArrayList a(long j, boolean z) {
        b3.a("TimeSpentCore: AnytimeTimeSpentsManager: " + a(z) + "onTick: start collecting anytime TimeSpents");
        b(j, z);
        a(j);
        ArrayList arrayListA = a();
        this.b.clear();
        b3.a("TimeSpentCore: AnytimeTimeSpentsManager: " + a(z) + "onTick: collected " + arrayListA.size() + " anytime TimeSpents");
        return arrayListA;
    }

    public void a(int i, long j, boolean z) {
        this.a.put(i, new z1(i, j));
        b3.c("TimeSpent: " + a(z) + "registered new anytime TimeSpent with id = " + i);
    }
}
