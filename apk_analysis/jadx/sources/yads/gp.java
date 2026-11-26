package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class gp extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ l70 b;
    public final /* synthetic */ pp c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gp(l70 l70Var, pp ppVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = l70Var;
        this.c = ppVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new gp(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new gp(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        l70 l70Var = this.b;
        pp ppVar = this.c;
        if (l70Var instanceof k70) {
            ppVar.a((d9) ((k70) l70Var).a);
        } else {
            if (!(l70Var instanceof j70)) {
                defpackage.me0.e();
                return null;
            }
            hi6 hi6Var = (hi6) ((j70) l70Var).a;
            ppVar.getClass();
            ppVar.b(hi6Var instanceof i4 ? p4.a(ppVar.c, ((i4) hi6Var).c) : o8.q);
        }
        return j59.a;
    }
}
