package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.k57;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class gn0 extends gh4 implements ll3 {
    public final /* synthetic */ defpackage.c31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gn0(defpackage.c31 c31Var) {
        super(0);
        this.b = c31Var;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        if (this.b.t() instanceof defpackage.no5) {
            this.b.resumeWith(new k57(j59.a));
        }
        return j59.a;
    }
}
