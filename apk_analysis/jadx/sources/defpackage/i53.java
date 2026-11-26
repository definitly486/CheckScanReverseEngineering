package defpackage;

import io.grpc.c;

/* JADX INFO: loaded from: classes5.dex */
public final class i53 extends d31 {
    public boolean h;
    public final h88 i;
    public final dm1.a j;
    public final c[] k;

    public i53(h88 h88Var, dm1.a aVar, c[] cVarArr) {
        super(2);
        o8.f(!h88Var.f(), "error must not be OK");
        this.i = h88Var;
        this.j = aVar;
        this.k = cVarArr;
    }

    @Override // defpackage.d31, defpackage.cm1
    public final void i(dm1 dm1Var) {
        o8.s(!this.h, "already started");
        this.h = true;
        c[] cVarArr = this.k;
        int length = cVarArr.length;
        int i = 0;
        while (true) {
            h88 h88Var = this.i;
            if (i >= length) {
                dm1Var.c(h88Var, this.j, new la5());
                return;
            } else {
                cVarArr[i].N(h88Var);
                i++;
            }
        }
    }

    @Override // defpackage.d31, defpackage.cm1
    public final void l(y54 y54Var) {
        y54Var.a(this.i, "error");
        y54Var.a(this.j, "progress");
    }
}
