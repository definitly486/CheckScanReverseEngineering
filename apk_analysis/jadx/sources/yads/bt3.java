package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class bt3 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ ct3 b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bt3(ct3 ct3Var, String str, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = ct3Var;
        this.c = str;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new bt3(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new bt3(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ((av3) this.b.b).a("LightBundleScriptUrl", this.c);
        return j59.a;
    }
}
