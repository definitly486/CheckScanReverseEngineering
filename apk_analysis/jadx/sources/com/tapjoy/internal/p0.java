package com.tapjoy.internal;

import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 {
    public final String a;
    public final n0 b;
    public final Long c;
    public final Long d;
    public final Integer e;
    public final t f;
    public final List g;
    public final Long h;

    public p0(String str, n0 n0Var, Long l, Long l2, Integer num, t tVar, List list, Long l3) {
        str.getClass();
        n0Var.getClass();
        tVar.getClass();
        list.getClass();
        this.a = str;
        this.b = n0Var;
        this.c = l;
        this.d = l2;
        this.e = num;
        this.f = tVar;
        this.g = list;
        this.h = l3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p0)) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return aa4.e(this.a, p0Var.a) && this.b == p0Var.b && aa4.e(this.c, p0Var.c) && aa4.e(this.d, p0Var.d) && aa4.e(this.e, p0Var.e) && this.f == p0Var.f && aa4.e(this.g, p0Var.g) && aa4.e(this.h, p0Var.h);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Long l = this.c;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.d;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.e;
        int iB = defpackage.e2.b(this.g, (this.f.hashCode() + ((iHashCode3 + (num == null ? 0 : num.hashCode())) * 31)) * 31, 31);
        Long l3 = this.h;
        return iB + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        return "StatsConfig(token=" + this.a + ", category=" + this.b + ", startTime=" + this.c + ", endTime=" + this.d + ", frequencySeconds=" + this.e + ", intervalMode=" + this.f + ", filters=" + this.g + ", lastFetchTimestamp=" + this.h + ")";
    }
}
