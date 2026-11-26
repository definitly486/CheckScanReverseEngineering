package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class is extends gh4 implements nl3 {
    public final /* synthetic */ ea5 b;
    public final /* synthetic */ ks c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public is(ea5 ea5Var, ks ksVar) {
        super(1);
        this.b = ea5Var;
        this.c = ksVar;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.a((w80) null);
        this.b.c();
        this.c.e.remove(this.b);
        return j59.a;
    }
}
