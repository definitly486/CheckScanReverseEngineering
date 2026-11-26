package com.tapjoy.internal;

import defpackage.dq;
import defpackage.ej0;
import defpackage.gg;
import defpackage.vg;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    public final int a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final int f;
    public final int g;
    public final int h;

    public d(int i, long j, long j2, long j3, long j4, int i2, int i3, int i4) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.a == dVar.a && this.b == dVar.b && this.c == dVar.c && this.d == dVar.d && this.e == dVar.e && this.f == dVar.f && this.g == dVar.g && this.h == dVar.h;
    }

    public final int hashCode() {
        return Integer.hashCode(this.h) + ej0.b(this.g, ej0.b(this.f, vg.b(vg.b(vg.b(vg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31), 31);
    }

    public final String toString() {
        int i = this.a;
        long j = this.b;
        long j2 = this.c;
        long j3 = this.d;
        long j4 = this.e;
        int i2 = this.f;
        int i3 = this.g;
        int i4 = this.h;
        StringBuilder sb = new StringBuilder("AggregatedNetworkStats(uid=");
        sb.append(i);
        sb.append(", rxBytes=");
        sb.append(j);
        dq.d(sb, ", txBytes=", j2, ", rxPackets=");
        sb.append(j3);
        dq.d(sb, ", txPackets=", j4, ", state=");
        gg.e(sb, i2, ", roaming=", i3, ", tag=");
        return defpackage.l2.e(sb, ")", i4);
    }
}
