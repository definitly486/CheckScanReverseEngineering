package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rt5 extends ev implements mt5 {
    public long c;
    public mt5 d;
    public long e;

    @Override // yads.mt5
    public final long a(int i) {
        mt5 mt5Var = this.d;
        mt5Var.getClass();
        return mt5Var.a(i) + this.e;
    }

    @Override // yads.mt5
    public final List b(long j) {
        mt5 mt5Var = this.d;
        mt5Var.getClass();
        return mt5Var.b(j - this.e);
    }

    public abstract void b();

    @Override // yads.mt5
    public final int a() {
        mt5 mt5Var = this.d;
        mt5Var.getClass();
        return mt5Var.a();
    }

    @Override // yads.mt5
    public final int a(long j) {
        mt5 mt5Var = this.d;
        mt5Var.getClass();
        return mt5Var.a(j - this.e);
    }
}
