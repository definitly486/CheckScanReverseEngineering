package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sm4 extends pg8 implements defpackage.bm3 {
    public r96 b;
    public int c;
    public final /* synthetic */ r96 d;
    public final /* synthetic */ wm4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sm4(r96 r96Var, wm4 wm4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = r96Var;
        this.e = wm4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new sm4(this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new sm4(this.d, this.e, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        r96 r96Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.c;
        if (i == 0) {
            r57.b(obj);
            r96 r96Var2 = this.d;
            if (r96Var2 != null) {
                wm4 wm4Var = this.e;
                List list = r96Var2.a;
                this.b = r96Var2;
                this.c = 1;
                wm4Var.getClass();
                defpackage.oi2 oi2Var = defpackage.qo2.a;
                Object objD = defpackage.av0.d(defpackage.sh2.c, new vm4(list, wm4Var, null), this);
                if (objD == a32Var) {
                    return a32Var;
                }
                obj = objD;
                r96Var = r96Var2;
            }
            return null;
        }
        if (i != 1) {
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r96Var = this.b;
        r57.b(obj);
        List list2 = (List) obj;
        if (!list2.isEmpty()) {
            return new r96(list2, r96Var.b, r96Var.c);
        }
        defpackage.qg.g("Invalid VAST in response");
        return null;
    }
}
