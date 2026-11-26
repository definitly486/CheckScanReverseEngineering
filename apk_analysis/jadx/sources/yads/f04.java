package yads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f04 implements kv {
    public static final jv g = new defpackage.ig(5);
    public final long b;
    public final long c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    public f04(e04 e04Var) {
        this.b = e04Var.a;
        this.c = e04Var.b;
        this.d = e04Var.c;
        this.e = e04Var.d;
        this.f = e04Var.e;
    }

    public static g04 a(Bundle bundle) {
        e04 e04Var = new e04();
        long j = bundle.getLong(Integer.toString(0, 36), 0L);
        if (j < 0) {
            defpackage.mi2.b();
            return null;
        }
        e04Var.a = j;
        long j2 = bundle.getLong(Integer.toString(1, 36), Long.MIN_VALUE);
        if (j2 != Long.MIN_VALUE && j2 < 0) {
            defpackage.mi2.b();
            return null;
        }
        e04Var.b = j2;
        e04Var.c = bundle.getBoolean(Integer.toString(2, 36), false);
        e04Var.d = bundle.getBoolean(Integer.toString(3, 36), false);
        e04Var.e = bundle.getBoolean(Integer.toString(4, 36), false);
        return new g04(e04Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f04)) {
            return false;
        }
        f04 f04Var = (f04) obj;
        return this.b == f04Var.b && this.c == f04Var.c && this.d == f04Var.d && this.e == f04Var.e && this.f == f04Var.f;
    }

    public final int hashCode() {
        long j = this.b;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.c;
        return ((((((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0);
    }
}
