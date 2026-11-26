package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bx2 implements ol2 {
    public final char a;

    public bx2(char c) {
        this.a = c;
    }

    @Override // defpackage.ol2
    public final char a() {
        return this.a;
    }

    @Override // defpackage.ol2
    public final int b() {
        return 1;
    }

    @Override // defpackage.ol2
    public final char c() {
        return this.a;
    }

    @Override // defpackage.ol2
    public final void d(dq8 dq8Var, dq8 dq8Var2, int i) {
        String.valueOf(this.a);
        zn5 ax2Var = i == 1 ? new ax2() : new xa8();
        zn5 zn5Var = dq8Var.e;
        while (zn5Var != null && zn5Var != dq8Var2) {
            zn5 zn5Var2 = zn5Var.e;
            ax2Var.b(zn5Var);
            zn5Var = zn5Var2;
        }
        ax2Var.f();
        zn5 zn5Var3 = dq8Var.e;
        ax2Var.e = zn5Var3;
        if (zn5Var3 != null) {
            zn5Var3.d = ax2Var;
        }
        ax2Var.d = dq8Var;
        dq8Var.e = ax2Var;
        zn5 zn5Var4 = dq8Var.a;
        ax2Var.a = zn5Var4;
        if (ax2Var.e == null) {
            zn5Var4.c = ax2Var;
        }
    }

    @Override // defpackage.ol2
    public final int e(nl2 nl2Var, nl2 nl2Var2) {
        if (nl2Var.d || nl2Var2.c) {
            int i = nl2Var2.h;
            if (i % 3 != 0 && (nl2Var.h + i) % 3 == 0) {
                return 0;
            }
        }
        return (nl2Var.g < 2 || nl2Var2.g < 2) ? 1 : 2;
    }
}
