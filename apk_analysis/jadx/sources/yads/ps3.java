package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class ps3 extends gh4 implements nl3 {
    public final /* synthetic */ defpackage.c31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps3(defpackage.c31 c31Var) {
        super(1);
        this.b = c31Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.resumeWith((String) obj);
        return j59.a;
    }
}
