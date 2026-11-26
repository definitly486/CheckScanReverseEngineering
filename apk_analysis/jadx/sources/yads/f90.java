package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class f90 extends defpackage.b0 implements defpackage.s22 {
    public final /* synthetic */ nl3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f90(s22.a aVar, nl3 nl3Var) {
        super(aVar);
        this.b = nl3Var;
    }

    @Override // defpackage.s22
    public final void handleException(defpackage.o22 o22Var, Throwable th) {
        this.b.invoke(th);
    }
}
