package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class sj3 extends wv8 {
    public wv8 e;

    public sj3(wv8 wv8Var) {
        wv8Var.getClass();
        this.e = wv8Var;
    }

    @Override // defpackage.wv8
    public final wv8 a() {
        return this.e.a();
    }

    @Override // defpackage.wv8
    public final wv8 b() {
        return this.e.b();
    }

    @Override // defpackage.wv8
    public final long c() {
        return this.e.c();
    }

    @Override // defpackage.wv8
    public final wv8 d(long j) {
        return this.e.d(j);
    }

    @Override // defpackage.wv8
    public final boolean e() {
        return this.e.e();
    }

    @Override // defpackage.wv8
    public final void f() throws InterruptedIOException {
        this.e.f();
    }

    @Override // defpackage.wv8
    public final wv8 g(long j) {
        TimeUnit.MILLISECONDS.getClass();
        return this.e.g(j);
    }
}
