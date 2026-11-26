package yads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vz2 implements kv {
    public static final vz2 H = new vz2(new uz2());
    public static final jv I = new defpackage.js2();
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public int G;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final String j;
    public final h84 k;
    public final String l;
    public final String m;
    public final int n;
    public final List o;
    public final ql2 p;
    public final long q;
    public final int r;
    public final int s;
    public final float t;
    public final int u;
    public final float v;
    public final byte[] w;
    public final int x;
    public final x20 y;
    public final int z;

    public vz2(uz2 uz2Var) {
        this.b = uz2Var.a;
        this.c = uz2Var.b;
        this.d = u56.e(uz2Var.c);
        this.e = uz2Var.d;
        this.f = uz2Var.e;
        int i = uz2Var.f;
        this.g = i;
        int i2 = uz2Var.g;
        this.h = i2;
        this.i = i2 != -1 ? i2 : i;
        this.j = uz2Var.h;
        this.k = uz2Var.i;
        this.l = uz2Var.j;
        this.m = uz2Var.k;
        this.n = uz2Var.l;
        List list = uz2Var.m;
        this.o = list == null ? Collections.EMPTY_LIST : list;
        ql2 ql2Var = uz2Var.n;
        this.p = ql2Var;
        this.q = uz2Var.o;
        this.r = uz2Var.p;
        this.s = uz2Var.q;
        this.t = uz2Var.r;
        int i3 = uz2Var.s;
        this.u = i3 == -1 ? 0 : i3;
        float f = uz2Var.t;
        this.v = f == -1.0f ? 1.0f : f;
        this.w = uz2Var.u;
        this.x = uz2Var.v;
        this.y = uz2Var.w;
        this.z = uz2Var.x;
        this.A = uz2Var.y;
        this.B = uz2Var.z;
        int i4 = uz2Var.A;
        this.C = i4 == -1 ? 0 : i4;
        int i5 = uz2Var.B;
        this.D = i5 != -1 ? i5 : 0;
        this.E = uz2Var.C;
        int i6 = uz2Var.D;
        if (i6 != 0 || ql2Var == null) {
            this.F = i6;
        } else {
            this.F = 1;
        }
    }

    public static vz2 a(Bundle bundle) {
        uz2 uz2Var = new uz2();
        if (bundle != null) {
            ClassLoader classLoader = lv.class.getClassLoader();
            int i = u56.a;
            bundle.setClassLoader(classLoader);
        }
        int i2 = 0;
        String string = bundle.getString(Integer.toString(0, 36));
        vz2 vz2Var = H;
        String str = vz2Var.b;
        if (string == null) {
            string = str;
        }
        uz2Var.a = string;
        String string2 = bundle.getString(Integer.toString(1, 36));
        String str2 = vz2Var.c;
        if (string2 == null) {
            string2 = str2;
        }
        uz2Var.b = string2;
        String string3 = bundle.getString(Integer.toString(2, 36));
        String str3 = vz2Var.d;
        if (string3 == null) {
            string3 = str3;
        }
        uz2Var.c = string3;
        uz2Var.d = bundle.getInt(Integer.toString(3, 36), vz2Var.e);
        uz2Var.e = bundle.getInt(Integer.toString(4, 36), vz2Var.f);
        uz2Var.f = bundle.getInt(Integer.toString(5, 36), vz2Var.g);
        uz2Var.g = bundle.getInt(Integer.toString(6, 36), vz2Var.h);
        String string4 = bundle.getString(Integer.toString(7, 36));
        String str4 = vz2Var.j;
        if (string4 == null) {
            string4 = str4;
        }
        uz2Var.h = string4;
        h84 h84Var = (h84) bundle.getParcelable(Integer.toString(8, 36));
        h84 h84Var2 = vz2Var.k;
        if (h84Var == null) {
            h84Var = h84Var2;
        }
        uz2Var.i = h84Var;
        String string5 = bundle.getString(Integer.toString(9, 36));
        String str5 = vz2Var.l;
        if (string5 == null) {
            string5 = str5;
        }
        uz2Var.j = string5;
        String string6 = bundle.getString(Integer.toString(10, 36));
        String str6 = vz2Var.m;
        if (string6 == null) {
            string6 = str6;
        }
        uz2Var.k = string6;
        uz2Var.l = bundle.getInt(Integer.toString(11, 36), vz2Var.n);
        ArrayList arrayList = new ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(Integer.toString(12, 36) + "_" + Integer.toString(i2, 36));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i2++;
        }
        uz2Var.m = arrayList;
        uz2Var.n = (ql2) bundle.getParcelable(Integer.toString(13, 36));
        String string7 = Integer.toString(14, 36);
        vz2 vz2Var2 = H;
        uz2Var.o = bundle.getLong(string7, vz2Var2.q);
        uz2Var.p = bundle.getInt(Integer.toString(15, 36), vz2Var2.r);
        uz2Var.q = bundle.getInt(Integer.toString(16, 36), vz2Var2.s);
        uz2Var.r = bundle.getFloat(Integer.toString(17, 36), vz2Var2.t);
        uz2Var.s = bundle.getInt(Integer.toString(18, 36), vz2Var2.u);
        uz2Var.t = bundle.getFloat(Integer.toString(19, 36), vz2Var2.v);
        uz2Var.u = bundle.getByteArray(Integer.toString(20, 36));
        uz2Var.v = bundle.getInt(Integer.toString(21, 36), vz2Var2.x);
        Bundle bundle2 = bundle.getBundle(Integer.toString(22, 36));
        if (bundle2 != null) {
            uz2Var.w = (x20) x20.g.a(bundle2);
        }
        uz2Var.x = bundle.getInt(Integer.toString(23, 36), vz2Var2.z);
        uz2Var.y = bundle.getInt(Integer.toString(24, 36), vz2Var2.A);
        uz2Var.z = bundle.getInt(Integer.toString(25, 36), vz2Var2.B);
        uz2Var.A = bundle.getInt(Integer.toString(26, 36), vz2Var2.C);
        uz2Var.B = bundle.getInt(Integer.toString(27, 36), vz2Var2.D);
        uz2Var.C = bundle.getInt(Integer.toString(28, 36), vz2Var2.E);
        uz2Var.D = bundle.getInt(Integer.toString(29, 36), vz2Var2.F);
        return new vz2(uz2Var);
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && vz2.class == obj.getClass()) {
            vz2 vz2Var = (vz2) obj;
            int i2 = this.G;
            if ((i2 == 0 || (i = vz2Var.G) == 0 || i2 == i) && this.e == vz2Var.e && this.f == vz2Var.f && this.g == vz2Var.g && this.h == vz2Var.h && this.n == vz2Var.n && this.q == vz2Var.q && this.r == vz2Var.r && this.s == vz2Var.s && this.u == vz2Var.u && this.x == vz2Var.x && this.z == vz2Var.z && this.A == vz2Var.A && this.B == vz2Var.B && this.C == vz2Var.C && this.D == vz2Var.D && this.E == vz2Var.E && this.F == vz2Var.F && Float.compare(this.t, vz2Var.t) == 0 && Float.compare(this.v, vz2Var.v) == 0 && u56.a(this.b, vz2Var.b) && u56.a(this.c, vz2Var.c) && u56.a(this.j, vz2Var.j) && u56.a(this.l, vz2Var.l) && u56.a(this.m, vz2Var.m) && u56.a(this.d, vz2Var.d) && Arrays.equals(this.w, vz2Var.w) && u56.a(this.k, vz2Var.k) && u56.a(this.y, vz2Var.y) && u56.a(this.p, vz2Var.p) && a(vz2Var)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.G;
        if (i != 0) {
            return i;
        }
        String str = this.b;
        int iHashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
        String str2 = this.c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31;
        String str4 = this.j;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        h84 h84Var = this.k;
        int iHashCode5 = (iHashCode4 + (h84Var == null ? 0 : Arrays.hashCode(h84Var.b))) * 31;
        String str5 = this.l;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iFloatToIntBits = ((((((((((((((((Float.floatToIntBits(this.v) + ((((Float.floatToIntBits(this.t) + ((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.n) * 31) + ((int) this.q)) * 31) + this.r) * 31) + this.s) * 31)) * 31) + this.u) * 31)) * 31) + this.x) * 31) + this.z) * 31) + this.A) * 31) + this.B) * 31) + this.C) * 31) + this.D) * 31) + this.E) * 31) + this.F;
        this.G = iFloatToIntBits;
        return iFloatToIntBits;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        sb.append(this.l);
        sb.append(", ");
        sb.append(this.m);
        sb.append(", ");
        sb.append(this.j);
        sb.append(", ");
        sb.append(this.i);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", [");
        sb.append(this.r);
        sb.append(", ");
        sb.append(this.s);
        sb.append(", ");
        sb.append(this.t);
        sb.append("], [");
        sb.append(this.z);
        sb.append(", ");
        return defpackage.l2.e(sb, "])", this.A);
    }

    public final boolean a(vz2 vz2Var) {
        if (this.o.size() != vz2Var.o.size()) {
            return false;
        }
        for (int i = 0; i < this.o.size(); i++) {
            if (!Arrays.equals((byte[]) this.o.get(i), (byte[]) vz2Var.o.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int a() {
        int i;
        int i2 = this.r;
        if (i2 == -1 || (i = this.s) == -1) {
            return -1;
        }
        return i2 * i;
    }
}
