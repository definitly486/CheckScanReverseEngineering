package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ky3 extends jl8 {
    public final /* synthetic */ hy3.c e;
    public final /* synthetic */ or7 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ky3(String str, hy3.c cVar, or7 or7Var) {
        super(str, true);
        this.e = cVar;
        this.f = or7Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [T, or7] */
    @Override // defpackage.jl8
    public final long a() {
        int i;
        long jA;
        vy3[] vy3VarArr;
        hy3.c cVar = this.e;
        or7 or7Var = this.f;
        r07 r07Var = new r07();
        hy3 hy3Var = hy3.this;
        synchronized (hy3Var.x) {
            synchronized (hy3Var) {
                try {
                    or7 or7Var2 = hy3Var.r;
                    ?? or7Var3 = new or7();
                    or7Var2.getClass();
                    for (int i2 = 0; i2 < 10; i2++) {
                        if (((1 << i2) & or7Var2.a) != 0) {
                            or7Var3.b(i2, or7Var2.b[i2]);
                        }
                    }
                    for (int i3 = 0; i3 < 10; i3++) {
                        if (((1 << i3) & or7Var.a) != 0) {
                            or7Var3.b(i3, or7Var.b[i3]);
                        }
                    }
                    r07Var.b = or7Var3;
                    jA = ((long) or7Var3.a()) - ((long) or7Var2.a());
                    vy3VarArr = (jA == 0 || hy3Var.c.isEmpty()) ? null : (vy3[]) hy3Var.c.values().toArray(new vy3[0]);
                    or7 or7Var4 = (or7) r07Var.b;
                    or7Var4.getClass();
                    hy3Var.r = or7Var4;
                    hy3Var.k.c(new iy3(hy3Var.d + " onSettings", hy3Var, r07Var), 0L);
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                hy3Var.x.a((or7) r07Var.b);
            } catch (IOException e) {
                p03 p03Var = p03.PROTOCOL_ERROR;
                hy3Var.a(p03Var, p03Var, e);
            }
            j59 j59Var2 = j59.a;
        }
        if (vy3VarArr == null) {
            return -1L;
        }
        for (vy3 vy3Var : vy3VarArr) {
            synchronized (vy3Var) {
                vy3Var.f += jA;
                if (jA > 0) {
                    vy3Var.notifyAll();
                }
                j59 j59Var3 = j59.a;
            }
        }
        return -1L;
    }
}
