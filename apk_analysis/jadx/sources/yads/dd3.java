package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class dd3 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ rd3 b;
    public final /* synthetic */ fd3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dd3(rd3 rd3Var, fd3 fd3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = rd3Var;
        this.c = fd3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new dd3(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new dd3(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        rd3 rd3Var = this.b;
        return new defpackage.b36(rd3Var, this.c.c.a(rd3Var));
    }
}
