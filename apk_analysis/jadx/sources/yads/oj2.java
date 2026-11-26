package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class oj2 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ qj2 b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oj2(qj2 qj2Var, String str, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = qj2Var;
        this.c = str;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new oj2(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new oj2(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        qj2 qj2Var = this.b;
        String str = this.c;
        AtomicBoolean atomicBoolean = qj2.e;
        qj2Var.a(str);
        return j59.a;
    }
}
