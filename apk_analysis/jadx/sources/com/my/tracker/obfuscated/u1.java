package com.my.tracker.obfuscated;

import android.text.TextUtils;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u1 {
    protected final q a = new q(16384);
    protected final q b = new q(4096);

    public static void a(v1 v1Var, String str, String str2, j0 j0Var, q qVar, q qVar2) throws IOException {
        c0 c0Var = j0Var.c;
        qVar.a();
        a(qVar, str, j0Var.d, j0Var.e, qVar2);
        int i = c0Var.a;
        if (i != -1) {
            qVar.a(1, i);
        }
        if (!TextUtils.isEmpty(c0Var.d)) {
            qVar.a(2, c0Var.d);
        }
        if (!TextUtils.isEmpty(c0Var.j)) {
            qVar.a(3, c0Var.j);
        }
        if (!TextUtils.isEmpty(c0Var.p)) {
            qVar.a(4, c0Var.p);
        }
        if (!TextUtils.isEmpty(c0Var.b)) {
            qVar.a(5, c0Var.b);
        }
        if (!TextUtils.isEmpty(c0Var.c)) {
            qVar.a(6, c0Var.c);
        }
        if (!TextUtils.isEmpty(c0Var.i)) {
            qVar.a(7, c0Var.i);
        }
        if (!TextUtils.isEmpty(c0Var.h)) {
            qVar.a(8, c0Var.h);
        }
        int i2 = c0Var.w;
        if (i2 != -1) {
            qVar.a(9, i2);
        }
        int i3 = c0Var.q;
        if (i3 != -1) {
            qVar.a(10, i3);
        }
        int i4 = c0Var.r;
        if (i4 != -1) {
            qVar.a(11, i4);
        }
        int i5 = c0Var.s;
        if (i5 != -1) {
            qVar.a(12, i5);
        }
        if (!Float.isNaN(c0Var.u)) {
            qVar.a(13, c0Var.u);
        }
        if (!Float.isNaN(c0Var.v)) {
            qVar.a(14, c0Var.v);
        }
        if (!Float.isNaN(c0Var.t)) {
            qVar.a(15, c0Var.t);
        }
        qVar.a(16, str2);
        o oVar = j0Var.j;
        if (oVar != null) {
            int i6 = oVar.a;
            if (i6 != -1) {
                qVar.a(17, i6);
            }
            int i7 = oVar.b;
            if (i7 >= 0) {
                qVar.a(18, i7);
            }
        }
        long j = c0Var.x;
        if (j != -1) {
            qVar.a(19, j);
        }
        long j2 = c0Var.y;
        if (j2 != -1) {
            qVar.a(20, j2);
        }
        int i8 = c0Var.z;
        if (i8 != -1) {
            qVar.a(23, i8);
        }
        int i9 = c0Var.A;
        if (i9 != -1) {
            qVar.a(24, i9);
        }
        l0 l0Var = j0Var.k;
        if (l0Var != null && !TextUtils.isEmpty(l0Var.a)) {
            qVar.a(25, j0Var.k.a);
        }
        if (qVar.b() > 0) {
            v1Var.a(23, qVar);
        }
    }

    public static void a(v1 v1Var, boolean z, f3 f3Var, q qVar) throws IOException {
        int i;
        qVar.a();
        if (!z && ((i = f3Var.b) == 0 || i == 1 || i == 2)) {
            qVar.a(1, i);
        }
        int i2 = f3Var.a;
        if (i2 > -1) {
            qVar.a(2, i2);
        }
        if (!z) {
            qVar.a(3, f3Var.c);
            qVar.a(4, f3Var.d);
            qVar.a(5, f3Var.e);
            qVar.a(6, f3Var.f);
            qVar.a(7, f3Var.g);
            qVar.a(8, f3Var.h);
            qVar.a(9, f3Var.i);
        }
        if (qVar.b() > 0) {
            v1Var.a(22, qVar);
        }
    }

    public static void a(v1 v1Var, g gVar, c0 c0Var, q qVar, q qVar2) throws IOException {
        qVar.a();
        if (gVar != null) {
            qVar2.a();
            qVar2.a(1, gVar.a);
            int i = gVar.b;
            if (i != -1) {
                qVar2.a(2, i);
            }
            if (qVar2.b() > 0) {
                qVar.a(31, qVar2);
            }
        }
        qVar.a(1, c0Var.g);
        qVar.a(2, c0Var.f);
        qVar.a(3, c0Var.k);
        qVar.a(4, c0Var.e);
        v1Var.a(21, qVar);
    }

    public static void a(v1 v1Var, String str, o0 o0Var, x0 x0Var, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, str);
        if (o0Var != null && !TextUtils.isEmpty(o0Var.a)) {
            boolean z = o0Var.b;
            qVar.a(2, o0Var.a);
            qVar.a(3, z ? 1 : 0);
        }
        if (x0Var != null && !TextUtils.isEmpty(x0Var.a)) {
            boolean z2 = x0Var.b;
            qVar.a(4, x0Var.a);
            qVar.a(5, z2 ? 1 : 0);
        }
        if (qVar.b() > 0) {
            v1Var.a(31, qVar);
        }
    }

    public static void a(v1 v1Var, l1 l1Var, b1 b1Var, c0 c0Var, q qVar) throws IOException {
        qVar.a();
        int i = l1Var.a;
        if (i != -1) {
            qVar.a(1, i);
        }
        Boolean bool = l1Var.c;
        if (bool != null) {
            qVar.a(7, bool == Boolean.TRUE ? 1 : 0);
        }
        qVar.a(2, l1Var.b);
        if (!TextUtils.isEmpty(c0Var.l)) {
            qVar.a(3, c0Var.l);
        }
        if (!TextUtils.isEmpty(c0Var.m)) {
            qVar.a(4, c0Var.m);
        }
        if (!TextUtils.isEmpty(c0Var.n)) {
            qVar.a(5, c0Var.n);
        }
        if (!TextUtils.isEmpty(c0Var.o)) {
            qVar.a(6, c0Var.o);
        }
        if (b1Var != null) {
            qVar.a(8, b1Var.a);
        }
        qVar.a(11, l1Var.d != 2 ? 0 : 1);
        if (qVar.b() > 0) {
            v1Var.a(25, qVar);
        }
    }

    public static void a(v1 v1Var, d1 d1Var, q qVar) throws IOException {
        if (d1Var.equals(d1.g)) {
            return;
        }
        qVar.a();
        if (!Double.isNaN(d1Var.b)) {
            qVar.a(1, d1Var.b);
        }
        if (!Double.isNaN(d1Var.c)) {
            qVar.a(2, d1Var.c);
        }
        if (!Float.isNaN(d1Var.d)) {
            qVar.a(3, d1Var.d);
        }
        if (!Float.isNaN(d1Var.e)) {
            qVar.a(4, d1Var.e);
        }
        long j = d1Var.f;
        if (j > 0) {
            qVar.a(5, z2.b(j));
        }
        int i = d1Var.a;
        if (i != -1) {
            qVar.a(6, i);
        }
        if (qVar.b() > 0) {
            v1Var.a(26, qVar);
        }
    }

    public synchronized void a() {
        this.a.d();
        this.b.d();
    }
}
