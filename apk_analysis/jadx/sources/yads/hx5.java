package yads;

import android.os.Bundle;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class hx5 implements kv {
    public static final jv i = new defpackage.me0(9);
    public Object b;
    public Object c;
    public int d;
    public long e;
    public long f;
    public boolean g;
    public a6 h = a6.g;

    public final int a(long j) {
        a6 a6Var = this.h;
        long j2 = this.e;
        a6Var.getClass();
        if (j != Long.MIN_VALUE && (j2 == C.TIME_UNSET || j < j2)) {
            int i2 = a6Var.e;
            while (i2 < a6Var.b) {
                if (a6Var.a(i2).b == Long.MIN_VALUE || a6Var.a(i2).b > j) {
                    z5 z5VarA = a6Var.a(i2);
                    if (z5VarA.c == -1 || z5VarA.a(-1) < z5VarA.c) {
                        break;
                    }
                }
                i2++;
            }
            if (i2 < a6Var.b) {
                return i2;
            }
        }
        return -1;
    }

    public final int b(long j) {
        a6 a6Var = this.h;
        long j2 = this.e;
        int i2 = a6Var.b - 1;
        while (i2 >= 0 && j != Long.MIN_VALUE) {
            long j3 = a6Var.a(i2).b;
            if (j3 != Long.MIN_VALUE) {
                if (j >= j3) {
                    break;
                }
                i2--;
            } else {
                if (j2 != C.TIME_UNSET && j >= j2) {
                    break;
                }
                i2--;
            }
        }
        if (i2 >= 0) {
            z5 z5VarA = a6Var.a(i2);
            if (z5VarA.c != -1) {
                for (int i3 = 0; i3 < z5VarA.c; i3++) {
                    int i4 = z5VarA.e[i3];
                    if (i4 != 0 && i4 != 1) {
                    }
                }
            }
            return i2;
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && hx5.class.equals(obj.getClass())) {
            hx5 hx5Var = (hx5) obj;
            if (u56.a(this.b, hx5Var.b) && u56.a(this.c, hx5Var.c) && this.d == hx5Var.d && this.e == hx5Var.e && this.f == hx5Var.f && this.g == hx5Var.g && u56.a(this.h, hx5Var.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.b;
        int iHashCode = ((obj == null ? 0 : obj.hashCode()) + 217) * 31;
        Object obj2 = this.c;
        int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.d) * 31;
        long j = this.e;
        int i2 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f;
        return this.h.hashCode() + ((((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.g ? 1 : 0)) * 31);
    }

    public final int a(int i2) {
        return this.h.a(i2).a(-1);
    }

    public final hx5 a(Object obj, Object obj2, int i2, long j, long j2, a6 a6Var, boolean z) {
        this.b = obj;
        this.c = obj2;
        this.d = i2;
        this.e = j;
        this.f = j2;
        this.h = a6Var;
        this.g = z;
        return this;
    }

    public final long a(int i2, int i3) {
        z5 z5VarA = this.h.a(i2);
        return z5VarA.c != -1 ? z5VarA.f[i3] : C.TIME_UNSET;
    }

    public static hx5 a(Bundle bundle) {
        a6 a6Var;
        int i2 = bundle.getInt(Integer.toString(0, 36), 0);
        long j = bundle.getLong(Integer.toString(1, 36), C.TIME_UNSET);
        long j2 = bundle.getLong(Integer.toString(2, 36), 0L);
        boolean z = bundle.getBoolean(Integer.toString(3, 36));
        Bundle bundle2 = bundle.getBundle(Integer.toString(4, 36));
        if (bundle2 != null) {
            a6Var = (a6) a6.i.a(bundle2);
        } else {
            a6Var = a6.g;
        }
        a6 a6Var2 = a6Var;
        hx5 hx5Var = new hx5();
        hx5Var.a(null, null, i2, j, j2, a6Var2, z);
        return hx5Var;
    }
}
