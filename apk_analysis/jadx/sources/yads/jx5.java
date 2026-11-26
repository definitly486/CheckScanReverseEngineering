package yads;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jx5 implements kv {
    public static final Object s = new Object();
    public static final Object t = new Object();
    public static final p04 u;
    public static final jv v;
    public Object b = s;
    public p04 d = u;
    public Object e;
    public long f;
    public long g;
    public long h;
    public boolean i;
    public boolean j;
    public boolean k;
    public j04 l;
    public boolean m;
    public long n;
    public long o;
    public int p;
    public int q;
    public long r;

    static {
        e04 e04Var = new e04();
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        List list = Collections.EMPTY_LIST;
        k55 k55Var2 = k55.f;
        m04 m04Var = m04.d;
        Uri uri = Uri.EMPTY;
        u = new p04("com.monetization.ads.exoplayer2.Timeline", new g04(e04Var), uri != null ? new k04(uri, null, list, null, k55Var2) : null, new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), t04.H, m04Var);
        v = new defpackage.gg();
    }

    public static jx5 a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(Integer.toString(1, 36));
        p04 p04Var = bundle2 != null ? (p04) p04.h.a(bundle2) : null;
        long j = bundle.getLong(Integer.toString(2, 36), C.TIME_UNSET);
        long j2 = bundle.getLong(Integer.toString(3, 36), C.TIME_UNSET);
        long j3 = bundle.getLong(Integer.toString(4, 36), C.TIME_UNSET);
        boolean z = bundle.getBoolean(Integer.toString(5, 36), false);
        boolean z2 = bundle.getBoolean(Integer.toString(6, 36), false);
        Bundle bundle3 = bundle.getBundle(Integer.toString(7, 36));
        j04 j04Var = bundle3 != null ? (j04) j04.h.a(bundle3) : null;
        boolean z3 = bundle.getBoolean(Integer.toString(8, 36), false);
        long j4 = bundle.getLong(Integer.toString(9, 36), 0L);
        long j5 = bundle.getLong(Integer.toString(10, 36), C.TIME_UNSET);
        int i = bundle.getInt(Integer.toString(11, 36), 0);
        int i2 = bundle.getInt(Integer.toString(12, 36), 0);
        long j6 = bundle.getLong(Integer.toString(13, 36), 0L);
        jx5 jx5Var = new jx5();
        jx5Var.a(t, p04Var, null, j, j2, j3, z, z2, j04Var, j4, j5, i, i2, j6);
        jx5Var.m = z3;
        return jx5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && jx5.class.equals(obj.getClass())) {
            jx5 jx5Var = (jx5) obj;
            if (u56.a(this.b, jx5Var.b) && u56.a(this.d, jx5Var.d) && u56.a(this.e, jx5Var.e) && u56.a(this.l, jx5Var.l) && this.f == jx5Var.f && this.g == jx5Var.g && this.h == jx5Var.h && this.i == jx5Var.i && this.j == jx5Var.j && this.m == jx5Var.m && this.n == jx5Var.n && this.o == jx5Var.o && this.p == jx5Var.p && this.q == jx5Var.q && this.r == jx5Var.r) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.b.hashCode() + 217) * 31)) * 31;
        Object obj = this.e;
        int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        j04 j04Var = this.l;
        int iHashCode3 = (iHashCode2 + (j04Var != null ? j04Var.hashCode() : 0)) * 31;
        long j = this.f;
        int i = (iHashCode3 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.g;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.h;
        int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31;
        long j4 = this.n;
        int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.o;
        int i5 = (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.p) * 31) + this.q) * 31;
        long j6 = this.r;
        return i5 + ((int) (j6 ^ (j6 >>> 32)));
    }

    public final boolean a() {
        boolean z = this.k;
        j04 j04Var = this.l;
        if (z == (j04Var != null)) {
            return j04Var != null;
        }
        defpackage.ud.g();
        return false;
    }

    public final jx5 a(Object obj, p04 p04Var, Object obj2, long j, long j2, long j3, boolean z, boolean z2, j04 j04Var, long j4, long j5, int i, int i2, long j6) {
        this.b = obj;
        if (p04Var == null) {
            p04Var = u;
        }
        this.d = p04Var;
        this.e = obj2;
        this.f = j;
        this.g = j2;
        this.h = j3;
        this.i = z;
        this.j = z2;
        this.k = j04Var != null;
        this.l = j04Var;
        this.n = j4;
        this.o = j5;
        this.p = i;
        this.q = i2;
        this.r = j6;
        this.m = false;
        return this;
    }
}
