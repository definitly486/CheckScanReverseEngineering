package yads;

import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class t04 implements kv {
    public static final t04 H = new t04(new s04());
    public static final jv I = new defpackage.qg(12);
    public final CharSequence A;
    public final Integer B;
    public final Integer C;
    public final CharSequence D;
    public final CharSequence E;
    public final CharSequence F;
    public final Bundle G;
    public final CharSequence b;
    public final CharSequence c;
    public final CharSequence d;
    public final CharSequence e;
    public final CharSequence f;
    public final CharSequence g;
    public final CharSequence h;
    public final z35 i;
    public final z35 j;
    public final byte[] k;
    public final Integer l;
    public final Uri m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final Boolean q;
    public final Integer r;
    public final Integer s;
    public final Integer t;
    public final Integer u;
    public final Integer v;
    public final Integer w;
    public final Integer x;
    public final CharSequence y;
    public final CharSequence z;

    public t04(s04 s04Var) {
        this.b = s04Var.a;
        this.c = s04Var.b;
        this.d = s04Var.c;
        this.e = s04Var.d;
        this.f = s04Var.e;
        this.g = s04Var.f;
        this.h = s04Var.g;
        this.i = s04Var.h;
        this.j = s04Var.i;
        this.k = s04Var.j;
        this.l = s04Var.k;
        this.m = s04Var.l;
        this.n = s04Var.m;
        this.o = s04Var.n;
        this.p = s04Var.o;
        this.q = s04Var.p;
        Integer num = s04Var.q;
        this.r = num;
        this.s = num;
        this.t = s04Var.r;
        this.u = s04Var.s;
        this.v = s04Var.t;
        this.w = s04Var.u;
        this.x = s04Var.v;
        this.y = s04Var.w;
        this.z = s04Var.x;
        this.A = s04Var.y;
        this.B = s04Var.z;
        this.C = s04Var.A;
        this.D = s04Var.B;
        this.E = s04Var.C;
        this.F = s04Var.D;
        this.G = s04Var.E;
    }

    public static t04 a(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        s04 s04Var = new s04();
        s04Var.a = bundle.getCharSequence(Integer.toString(0, 36));
        s04Var.b = bundle.getCharSequence(Integer.toString(1, 36));
        s04Var.c = bundle.getCharSequence(Integer.toString(2, 36));
        s04Var.d = bundle.getCharSequence(Integer.toString(3, 36));
        s04Var.e = bundle.getCharSequence(Integer.toString(4, 36));
        s04Var.f = bundle.getCharSequence(Integer.toString(5, 36));
        s04Var.g = bundle.getCharSequence(Integer.toString(6, 36));
        byte[] byteArray = bundle.getByteArray(Integer.toString(10, 36));
        Integer numValueOf = bundle.containsKey(Integer.toString(29, 36)) ? Integer.valueOf(bundle.getInt(Integer.toString(29, 36))) : null;
        s04Var.j = byteArray != null ? (byte[]) byteArray.clone() : null;
        s04Var.k = numValueOf;
        s04Var.l = (Uri) bundle.getParcelable(Integer.toString(11, 36));
        s04Var.w = bundle.getCharSequence(Integer.toString(22, 36));
        s04Var.x = bundle.getCharSequence(Integer.toString(23, 36));
        s04Var.y = bundle.getCharSequence(Integer.toString(24, 36));
        s04Var.B = bundle.getCharSequence(Integer.toString(27, 36));
        s04Var.C = bundle.getCharSequence(Integer.toString(28, 36));
        s04Var.D = bundle.getCharSequence(Integer.toString(30, 36));
        s04Var.E = bundle.getBundle(Integer.toString(1000, 36));
        if (bundle.containsKey(Integer.toString(8, 36)) && (bundle3 = bundle.getBundle(Integer.toString(8, 36))) != null) {
            s04Var.h = (z35) z35.b.a(bundle3);
        }
        if (bundle.containsKey(Integer.toString(9, 36)) && (bundle2 = bundle.getBundle(Integer.toString(9, 36))) != null) {
            s04Var.i = (z35) z35.b.a(bundle2);
        }
        if (bundle.containsKey(Integer.toString(12, 36))) {
            s04Var.m = Integer.valueOf(bundle.getInt(Integer.toString(12, 36)));
        }
        if (bundle.containsKey(Integer.toString(13, 36))) {
            s04Var.n = Integer.valueOf(bundle.getInt(Integer.toString(13, 36)));
        }
        if (bundle.containsKey(Integer.toString(14, 36))) {
            s04Var.o = Integer.valueOf(bundle.getInt(Integer.toString(14, 36)));
        }
        if (bundle.containsKey(Integer.toString(15, 36))) {
            s04Var.p = Boolean.valueOf(bundle.getBoolean(Integer.toString(15, 36)));
        }
        if (bundle.containsKey(Integer.toString(16, 36))) {
            s04Var.q = Integer.valueOf(bundle.getInt(Integer.toString(16, 36)));
        }
        if (bundle.containsKey(Integer.toString(17, 36))) {
            s04Var.r = Integer.valueOf(bundle.getInt(Integer.toString(17, 36)));
        }
        if (bundle.containsKey(Integer.toString(18, 36))) {
            s04Var.s = Integer.valueOf(bundle.getInt(Integer.toString(18, 36)));
        }
        if (bundle.containsKey(Integer.toString(19, 36))) {
            s04Var.t = Integer.valueOf(bundle.getInt(Integer.toString(19, 36)));
        }
        if (bundle.containsKey(Integer.toString(20, 36))) {
            s04Var.u = Integer.valueOf(bundle.getInt(Integer.toString(20, 36)));
        }
        if (bundle.containsKey(Integer.toString(21, 36))) {
            s04Var.v = Integer.valueOf(bundle.getInt(Integer.toString(21, 36)));
        }
        if (bundle.containsKey(Integer.toString(25, 36))) {
            s04Var.z = Integer.valueOf(bundle.getInt(Integer.toString(25, 36)));
        }
        if (bundle.containsKey(Integer.toString(26, 36))) {
            s04Var.A = Integer.valueOf(bundle.getInt(Integer.toString(26, 36)));
        }
        return new t04(s04Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && t04.class == obj.getClass()) {
            t04 t04Var = (t04) obj;
            if (u56.a(this.b, t04Var.b) && u56.a(this.c, t04Var.c) && u56.a(this.d, t04Var.d) && u56.a(this.e, t04Var.e) && u56.a(this.f, t04Var.f) && u56.a(this.g, t04Var.g) && u56.a(this.h, t04Var.h) && u56.a(this.i, t04Var.i) && u56.a(this.j, t04Var.j) && Arrays.equals(this.k, t04Var.k) && u56.a(this.l, t04Var.l) && u56.a(this.m, t04Var.m) && u56.a(this.n, t04Var.n) && u56.a(this.o, t04Var.o) && u56.a(this.p, t04Var.p) && u56.a(this.q, t04Var.q) && u56.a(this.s, t04Var.s) && u56.a(this.t, t04Var.t) && u56.a(this.u, t04Var.u) && u56.a(this.v, t04Var.v) && u56.a(this.w, t04Var.w) && u56.a(this.x, t04Var.x) && u56.a(this.y, t04Var.y) && u56.a(this.z, t04Var.z) && u56.a(this.A, t04Var.A) && u56.a(this.B, t04Var.B) && u56.a(this.C, t04Var.C) && u56.a(this.D, t04Var.D) && u56.a(this.E, t04Var.E) && u56.a(this.F, t04Var.F)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, Integer.valueOf(Arrays.hashCode(this.k)), this.l, this.m, this.n, this.o, this.p, this.q, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F});
    }
}
