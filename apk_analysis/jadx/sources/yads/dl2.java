package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class dl2 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ hl2 c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dl2(hl2 hl2Var, String str, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = hl2Var;
        this.d = str;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new dl2(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new dl2(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        hl2 hl2Var = this.c;
        String str = this.d;
        hl2Var.getClass();
        wk2 wk2VarA = this.c.b.a(str);
        if (wk2VarA != null) {
            return wk2VarA.a;
        }
        defpackage.mk2 mk2VarA = (defpackage.mk2) this.c.e.get(str);
        if (mk2VarA == null) {
            defpackage.y22 y22Var = (defpackage.y22) this.c.d.getValue();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            mk2VarA = defpackage.av0.a(y22Var, defpackage.uy4.a.k0(), null, new cl2(this.c, str, this.d, null), 2);
            this.c.e.put(str, mk2VarA);
        }
        this.b = 1;
        Object objZ = mk2VarA.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
