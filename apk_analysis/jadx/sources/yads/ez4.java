package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ez4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ List c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ez4(List list, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = list;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ez4(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ez4(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            List list = this.c;
            this.b = 1;
            obj = defpackage.oz.a(list, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return defpackage.qn1.R((Iterable) obj);
    }
}
