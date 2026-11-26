package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ly3 extends jl8 {
    public final /* synthetic */ hy3 e;
    public final /* synthetic */ int f;
    public final /* synthetic */ bu0 g;
    public final /* synthetic */ int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ly3(String str, hy3 hy3Var, int i, bu0 bu0Var, int i2, boolean z) {
        super(str, true);
        this.e = hy3Var;
        this.f = i;
        this.g = bu0Var;
        this.h = i2;
    }

    @Override // defpackage.jl8
    public final long a() {
        try {
            nu6 nu6Var = this.e.l;
            bu0 bu0Var = this.g;
            int i = this.h;
            nu6Var.getClass();
            bu0Var.skip(i);
            this.e.x.g(this.f, p03.CANCEL);
            synchronized (this.e) {
                this.e.z.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}
