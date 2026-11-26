package defpackage;

import java.security.cert.Certificate;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class my6 extends gh4 implements ll3<List<? extends Certificate>> {
    public final /* synthetic */ u81 f;
    public final /* synthetic */ lu3 g;
    public final /* synthetic */ l9 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my6(u81 u81Var, lu3 lu3Var, l9 l9Var) {
        super(0);
        this.f = u81Var;
        this.g = lu3Var;
        this.h = l9Var;
    }

    @Override // defpackage.ll3
    public final List<? extends Certificate> invoke() {
        y14 y14Var = this.f.b;
        y14Var.getClass();
        return y14Var.v(this.h.h.d, this.g.a());
    }
}
