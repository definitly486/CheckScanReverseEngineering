package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class hn0 extends gh4 implements nl3 {
    public final /* synthetic */ defpackage.c31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hn0(defpackage.c31 c31Var) {
        super(1);
        this.b = c31Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        if (this.b.t() instanceof defpackage.no5) {
            this.b.resumeWith(r57.a(th));
        }
        return j59.a;
    }
}
