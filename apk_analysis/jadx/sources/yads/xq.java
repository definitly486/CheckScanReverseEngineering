package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class xq extends gh4 implements ll3 {
    public final /* synthetic */ s03 b;
    public final /* synthetic */ ar c;
    public final /* synthetic */ n8 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xq(s03 s03Var, ar arVar, n8 n8Var) {
        super(0);
        this.b = s03Var;
        this.c = arVar;
        this.d = n8Var;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        this.b.c();
        this.c.c.a(this.d, null);
        return j59.a;
    }
}
