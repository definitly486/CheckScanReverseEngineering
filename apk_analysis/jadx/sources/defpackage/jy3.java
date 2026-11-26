package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class jy3 extends jl8 {
    public final /* synthetic */ hy3 e;
    public final /* synthetic */ vy3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jy3(String str, hy3 hy3Var, vy3 vy3Var) {
        super(str, true);
        this.e = hy3Var;
        this.f = vy3Var;
    }

    @Override // defpackage.jl8
    public final long a() {
        try {
            this.e.b.c(this.f);
            return -1L;
        } catch (IOException e) {
            z86 z86Var = z86.a;
            z86 z86Var2 = z86.a;
            String str = "Http2Connection.Listener failure for " + this.e.d;
            z86Var2.getClass();
            z86.i(str, 4, e);
            try {
                this.f.c(p03.PROTOCOL_ERROR, e);
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }
}
