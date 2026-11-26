package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class ru4 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ uu4 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ru4(uu4 uu4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = uu4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ru4(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ru4(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        j59 j59Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ou4 ou4VarA = this.b.c.a();
        Object obj2 = this.b.f;
        uu4 uu4Var = this.b;
        synchronized (obj2) {
            uu4Var.g = ou4VarA;
            j59Var = j59.a;
        }
        Objects.toString(ou4VarA);
        uu4.c(this.b);
        return j59Var;
    }
}
