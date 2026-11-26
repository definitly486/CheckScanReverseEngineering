package com.tapjoy.internal;

import defpackage.aa4;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 {
    public final Long a;
    public final Long b;
    public final Integer c;

    public q0(Long l, Long l2, Integer num) {
        this.a = l;
        this.b = l2;
        this.c = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        return aa4.e(this.a, q0Var.a) && aa4.e(this.b, q0Var.b) && aa4.e(this.c, q0Var.c);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.b;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.c;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return "WindowConfig(startTime=" + this.a + ", endTime=" + this.b + ", periodSeconds=" + this.c + ")";
    }
}
