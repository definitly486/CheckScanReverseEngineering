package yads;

import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hg0 extends pg8 implements defpackage.bm3 {
    public vf0 b;
    public wf0 c;
    public int d;
    public final /* synthetic */ ig0 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hg0(ig0 ig0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = ig0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new hg0(this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new hg0(this.e, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        vf0 vf0VarA;
        wf0 wf0Var;
        Object obj2;
        List list;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.d;
        if (i == 0) {
            r57.b(obj);
            vf0VarA = this.e.a.a();
            wf0 wf0Var2 = vf0VarA.f;
            if (wf0Var2 == null) {
                return yg3.a;
            }
            b65 b65Var = this.e.b;
            this.b = vf0VarA;
            this.c = wf0Var2;
            this.d = 1;
            Object objA = b65Var.a(this);
            if (objA == a32Var) {
                return a32Var;
            }
            wf0Var = wf0Var2;
            obj2 = objA;
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            wf0Var = this.c;
            vf0VarA = this.b;
            r57.b(obj);
            obj2 = ((k57) obj).b;
        }
        dg0 dg0Var = (dg0) (obj2 instanceof k57.a ? null : obj2);
        if (dg0Var == null || (list = dg0Var.g) == null) {
            list = defpackage.kx2.b;
        }
        ArrayList arrayList = vf0VarA.c;
        ArrayList arrayListA = this.e.c.a(list);
        return this.e.e.a(this.e.d.a(new gg0(vf0VarA.a, vf0VarA.b, arrayListA.isEmpty() ? arrayList : arrayListA, vf0VarA.d, wf0Var.a, wf0Var.b)));
    }
}
