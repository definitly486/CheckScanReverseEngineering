package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes6.dex */
public final class a65 extends gh4 implements nl3 {
    public final /* synthetic */ defpackage.c31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a65(defpackage.c31 c31Var) {
        super(1);
        this.b = c31Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) throws hi6 {
        hi6 hi6Var = (hi6) obj;
        if (hi6Var.getCause() instanceof SerializationException) {
            throw hi6Var;
        }
        this.b.resumeWith(new k57(new k57.a(hi6Var)));
        return j59.a;
    }
}
