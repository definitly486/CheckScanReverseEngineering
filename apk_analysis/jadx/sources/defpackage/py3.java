package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class py3 extends jl8 {
    public final /* synthetic */ hy3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public py3(String str, hy3 hy3Var) {
        super(str, true);
        this.e = hy3Var;
    }

    @Override // defpackage.jl8
    public final long a() {
        hy3 hy3Var = this.e;
        hy3Var.getClass();
        try {
            hy3Var.x.m0(2, 0, false);
            return -1L;
        } catch (IOException e) {
            p03 p03Var = p03.PROTOCOL_ERROR;
            hy3Var.a(p03Var, p03Var, e);
            return -1L;
        }
    }
}
