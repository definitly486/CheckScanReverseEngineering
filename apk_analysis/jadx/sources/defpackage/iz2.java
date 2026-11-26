package defpackage;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class iz2<Record> {
    public final String a;
    public final String b;
    public final nl3<nb6, Integer> c;
    public final nl3<nb6, Integer> d;
    public final nl3<nb6, Integer> e;
    public final nl3<nb6, Integer> f;
    public final bm3<Record, OutputStream, j59> g;
    public final nl3<InputStream, Record> h;
    public final nl3<Record, String> i;
    public final nl3<List<? extends Record>, j59> j;
    public final nl3<Integer, Boolean> k;
    public final nl3<Record, Boolean> l;
    public final nl3<Record, UUID> m;

    public static final class a {
        public static iz2 a(ta6 ta6Var, db6 db6Var, String str) {
            int i = 1;
            int i2 = 0;
            return new iz2("logs", str, new t71(i), new ty2(i2), new uy2(0), new vy2(i2), new wy2(ta6Var, i2), new qz1(ta6Var, i), new xy2(i2), new yy2(i2, db6Var, new fh8(new ez0(ta6Var, i))), cz2.c, new jy2(i2), ky2.b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public iz2(String str, String str2, nl3<? super nb6, Integer> nl3Var, nl3<? super nb6, Integer> nl3Var2, nl3<? super nb6, Integer> nl3Var3, nl3<? super nb6, Integer> nl3Var4, bm3<? super Record, ? super OutputStream, j59> bm3Var, nl3<? super InputStream, ? extends Record> nl3Var5, nl3<? super Record, String> nl3Var6, nl3<? super List<? extends Record>, j59> nl3Var7, nl3<? super Integer, Boolean> nl3Var8, nl3<? super Record, Boolean> nl3Var9, nl3<? super Record, UUID> nl3Var10) {
        nl3Var8.getClass();
        nl3Var10.getClass();
        this.a = str;
        this.b = str2;
        this.c = nl3Var;
        this.d = nl3Var2;
        this.e = nl3Var3;
        this.f = nl3Var4;
        this.g = bm3Var;
        this.h = nl3Var5;
        this.i = nl3Var6;
        this.j = nl3Var7;
        this.k = nl3Var8;
        this.l = nl3Var9;
        this.m = nl3Var10;
    }
}
