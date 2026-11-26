package com.my.tracker.obfuscated;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 {
    public static final d1 g = new d1(-1, 0.0d, 0.0d, 0.0f, 0.0f, 0);
    public final int a;
    public final double b;
    public final double c;
    public final float d;
    public final float e;
    public final long f;

    public d1(int i, double d, double d2, float f, float f2, long j) {
        this.a = i;
        this.b = d;
        this.c = d2;
        this.d = f;
        this.e = f2;
        this.f = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d1.class == obj.getClass()) {
            d1 d1Var = (d1) obj;
            if (this.a == d1Var.a && Double.compare(d1Var.b, this.b) == 0 && Double.compare(d1Var.c, this.c) == 0 && Float.compare(d1Var.d, this.d) == 0 && Float.compare(d1Var.e, this.e) == 0 && this.f == d1Var.f) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), Double.valueOf(this.b), Double.valueOf(this.c), Float.valueOf(this.d), Float.valueOf(this.e), Long.valueOf(this.f));
    }
}
