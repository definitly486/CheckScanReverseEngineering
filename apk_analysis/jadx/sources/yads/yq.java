package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class yq extends gh4 implements nl3 {
    public final /* synthetic */ wq b;
    public final /* synthetic */ s03 c;
    public final /* synthetic */ ar d;
    public final /* synthetic */ n8 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yq(wq wqVar, s03 s03Var, ar arVar, n8 n8Var) {
        super(1);
        this.b = wqVar;
        this.c = s03Var;
        this.d = arVar;
        this.e = n8Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        wq wqVar = this.b;
        xq xqVar = new xq(this.c, this.d, this.e);
        if (wqVar.f.compareAndSet(false, true)) {
            xqVar.invoke();
        }
        return j59.a;
    }
}
