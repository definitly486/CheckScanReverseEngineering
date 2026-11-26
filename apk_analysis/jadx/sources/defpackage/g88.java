package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class g88 {
    public final y14[] a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    static {
        new g88(new y14[0]);
    }

    public g88(y14[] y14VarArr) {
        this.a = y14VarArr;
    }

    public final void a(long j) {
        for (y14 y14Var : this.a) {
            y14Var.C(j);
        }
    }
}
