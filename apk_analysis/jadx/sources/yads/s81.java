package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class s81 extends gh4 implements nl3 {
    public final /* synthetic */ op1 b;
    public final /* synthetic */ a91 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s81(op1 op1Var, a91 a91Var) {
        super(1);
        this.b = op1Var;
        this.c = a91Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        op1 op1Var = this.b;
        this.c.getClass();
        op1Var.setOrientation(k81.a[((h81) obj).ordinal()] == 1 ? 0 : 1);
        return j59.a;
    }
}
