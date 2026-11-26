package defpackage;

import java.net.Socket;

/* JADX INFO: loaded from: classes5.dex */
public final class oy6 extends jl8 {
    public final /* synthetic */ py6 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oy6(py6 py6Var, String str) {
        super(str, true);
        this.e = py6Var;
    }

    @Override // defpackage.jl8
    public final long a() {
        py6 py6Var = this.e;
        long jNanoTime = System.nanoTime();
        int i = 0;
        long j = Long.MIN_VALUE;
        ly6 ly6Var = null;
        int i2 = 0;
        for (ly6 ly6Var2 : py6Var.d) {
            ly6Var2.getClass();
            synchronized (ly6Var2) {
                if (py6Var.b(ly6Var2, jNanoTime) > 0) {
                    i2++;
                } else {
                    i++;
                    long j2 = jNanoTime - ly6Var2.q;
                    if (j2 > j) {
                        ly6Var = ly6Var2;
                        j = j2;
                    }
                    j59 j59Var = j59.a;
                }
            }
        }
        long j3 = py6Var.a;
        if (j < j3 && i <= 5) {
            if (i > 0) {
                return j3 - j;
            }
            if (i2 > 0) {
                return j3;
            }
            return -1L;
        }
        ly6Var.getClass();
        synchronized (ly6Var) {
            if (!ly6Var.p.isEmpty()) {
                return 0L;
            }
            if (ly6Var.q + j != jNanoTime) {
                return 0L;
            }
            ly6Var.j = true;
            py6Var.d.remove(ly6Var);
            Socket socket = ly6Var.d;
            socket.getClass();
            gb9.e(socket);
            if (py6Var.d.isEmpty()) {
                py6Var.b.a();
            }
            return 0L;
        }
    }
}
