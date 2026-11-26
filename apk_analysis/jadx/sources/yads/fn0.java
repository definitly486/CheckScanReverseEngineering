package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class fn0 extends gh4 implements nl3 {
    public final /* synthetic */ h2 b;
    public final /* synthetic */ long c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fn0(h2 h2Var, long j) {
        super(1);
        this.b = h2Var;
        this.c = j;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.a(this.c);
        return j59.a;
    }
}
