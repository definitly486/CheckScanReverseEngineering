package com.google.protobuf;

import defpackage.fx0;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements n0 {
    public final CodedOutputStream a;

    public h(CodedOutputStream codedOutputStream) {
        q.a(codedOutputStream, "output");
        this.a = codedOutputStream;
        codedOutputStream.o = this;
    }

    public final void a(int i, fx0 fx0Var) {
        this.a.g0(i, fx0Var);
    }

    public final void b(int i, int i2) {
        this.a.i0(i, i2);
    }

    public final void c(int i, long j) {
        this.a.k0(i, j);
    }

    public final void d(int i, Object obj, f0 f0Var) {
        CodedOutputStream codedOutputStream = this.a;
        codedOutputStream.u0(i, 3);
        f0Var.a((a0) obj, codedOutputStream.o);
        codedOutputStream.u0(i, 4);
    }

    public final void e(int i, int i2) {
        this.a.m0(i, i2);
    }

    public final void f(int i, long j) {
        this.a.x0(i, j);
    }

    public final void g(int i, Object obj, f0 f0Var) {
        this.a.o0(i, (a0) obj, f0Var);
    }

    public final void h(int i, Object obj) {
        boolean z = obj instanceof fx0;
        CodedOutputStream codedOutputStream = this.a;
        if (z) {
            codedOutputStream.r0(i, (fx0) obj);
        } else {
            codedOutputStream.q0(i, (a0) obj);
        }
    }
}
