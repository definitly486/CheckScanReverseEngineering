package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class r81 extends gh4 implements nl3 {
    public final /* synthetic */ jj2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r81(jj2 jj2Var) {
        super(1);
        this.b = jj2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.setItemSpacing(uq.a(Long.valueOf(((Number) obj).longValue()), this.b.getResources().getDisplayMetrics()));
        return j59.a;
    }
}
